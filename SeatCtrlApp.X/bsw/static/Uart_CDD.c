/***************************************************************
*
* Module: Uart
*
* File Name: Uart.c
*
* Description: Source file for Uart Module,
*              implementation is based on AUTOSAR specfications.
*
* Author: Mostafa Amgad
*
* Date:  July 17, 2020
****************************************************************/


/*=================================================================
                            INCLUDES
*================================================================*/
#include "Uart_CDD.h"

/*=================================================================
                    GLOBAL STATIC VARIABLES
*================================================================*/
Port_ConfigType Uart_PinsConfig[2] = 
{
    {PortC,Pin6,PORT_PIN_IN},
    {PortC,Pin7,PORT_PIN_IN}
};
Uart_ConfigType* Uart_ThisConfiguration = NULL;
uint8_t* RX_Data;

/*=================================================================
                LOCAL FUNCTIONS IMPLEMENTATION
*================================================================*/
void Uart_TX_Callback(){}
void Uart_RX_Callback()
{
    if (RCIF == 1)
  {
    *RX_Data = UART_RX_BUFF_REG;  // Read The Received Data Buffer
    RCIF = 0;             // Clear The Flag
  }
}


/*=================================================================
                     APIs IMPLEMENTATION
*================================================================*/
void Uart_Init(Uart_ConfigType* ConfigPtr)
{   
#if (UART_ERROR_DETECT == STD_ON)
	/* check if the input configuration pointer is not a NULL_PTR */
	if (ConfigPtr == NULL) 
    {
		Det_ReportError(UART_MODULE_ID, UART_INSTANCE_ID, 
        UART_INIT_SID,UART_E_PARAM_POINTER);
	} 
    else if(ConfigPtr->ComMode != MASTER_TX && ConfigPtr->ComMode != SLAVE_RX)
    {
       Det_ReportError(UART_MODULE_ID, UART_INSTANCE_ID, 
        UART_INIT_SID,UART_E_PARAM_MODE);
    }
    else if(ConfigPtr->Status != UART_UNINIT)
    {
       Det_ReportError(UART_MODULE_ID, UART_INSTANCE_ID, 
        UART_INIT_SID,UART_E_ALREADY_INITIALIZED);
    }
    else
#endif        
    {
        Port_Init(&Uart_PinsConfig[0]);
        Port_Init(&Uart_PinsConfig[1]);

         uint32_t Uart_ReloadValue = (_XTAL_FREQ - ConfigPtr->Baudrate*64)/(ConfigPtr->Baudrate*64); // Low Baud Rate
        if(Uart_ReloadValue>255)  
        {
          Uart_ReloadValue = (_XTAL_FREQ - ConfigPtr->Baudrate*16)/(ConfigPtr->Baudrate*16); // High Baud Rate
          SET_BIT(UART_CTL_REG1,2);
        }
        if (Uart_ReloadValue<=255)  
          UART_RELO_REG = Uart_ReloadValue; //Writing SPBRG Register 


        if(ConfigPtr->SysMode==ASYNCHRONOUS)
        {
            CLEAR_BIT(UART_CTL_REG1,4);
            SET_BIT(UART_CTL_REG1,5);
           if(ConfigPtr->ComMode == MASTER_TX)
           {
               if(ConfigPtr->OpMode==UART_INTERRUPT)
                   Interrupt_Enable(UART_TX,Uart_TX_Callback);
               if(ConfigPtr->NinthBitEn==NINTH_BIT_EN)
                   SET_BIT(UART_CTL_REG1,6);
           }
           else if(ConfigPtr->ComMode == SLAVE_RX)
           {
               SET_BIT(UART_CTL_REG1,4);
               if(ConfigPtr->OpMode==UART_INTERRUPT)
                   Interrupt_Enable(UART_RX,Uart_RX_Callback);
               if(ConfigPtr->NinthBitEn==NINTH_BIT_EN)
               {
                   SET_BIT(UART_CTL_REG2,6);
                   if(ConfigPtr->AddrDetEn==ADDR_DET_EN)
                       SET_BIT(UART_CTL_REG2,3);
               }
           }
        }
        Uart_ThisConfiguration->Status = UART_IDLE;
         SET_BIT(UART_CTL_REG2,7);  

         if(ConfigPtr->TransferStart != UART_LSB_FIRST)
         {/*not supported*/}
        Uart_ThisConfiguration = ConfigPtr;
        Uart_ThisConfiguration->Status = UART_BUSY;   
    }
}

Std_ReturnType Uart_WriteByte(uint8_t Data)
{
#if (UART_ERROR_DETECT == STD_ON)
    if(Uart_ThisConfiguration->Status != UART_UNINIT)
    {
       Det_ReportError(UART_MODULE_ID, UART_INSTANCE_ID, 
        UART_WRITE_SID,UART_E_UNINIT);
    }
    else
#endif 
    {
       while(BIT_IS_CLEAR(UART_CTL_REG1,1));
       UART_TX_BUFF_REG = Data;
    }
    return E_OK;
}

Std_ReturnType Uart_WriteString(char *DataBufferPtr)
{
  for(uint8_t i=0;DataBufferPtr[i]!='\0';i++)
    Uart_WriteByte(DataBufferPtr[i]);
  return E_OK;
}

uint8_t Uart_ReadByte()
{
#if (UART_ERROR_DETECT == STD_ON)
    if(Uart_ThisConfiguration->Status != UART_UNINIT)
    {
       Det_ReportError(UART_MODULE_ID, UART_INSTANCE_ID, 
        UART_READ_SID,UART_E_UNINIT);
    }
    else
#endif
    {
        while(!RCIF);
        return UART_RX_BUFF_REG;
    }
    return E_NOT_OK ;
}

Std_ReturnType Uart_WriteInt(uint8_t Number)
{ 
    char buff[2]; /* String to hold the ascii result */
    itoa(buff ,Number,16); /* 16 for hexadecimal */   
    Uart_WriteString(buff);
    return E_OK;
}

#if(UART_DEINIT_API==STD_ON)
void Uart_DeInit(void)
{
#if (UART_ERROR_DETECT == STD_ON)
    if(Uart_ThisConfiguration->Status != UART_UNINIT)
    {
       Det_ReportError(UART_MODULE_ID, UART_INSTANCE_ID, 
        UART_DEINIT_SID,UART_E_UNINIT);
    }
    else
#endif
    {
        CLEAR_REG(UART_CTL_REG1);
        CLEAR_REG(UART_CTL_REG2);
        CLEAR_REG(UART_RELO_REG);
        CLEAR_REG(UART_TX_BUFF_REG);
        CLEAR_REG(UART_RX_BUFF_REG);
    }
}
#endif

#if(UART_GET_STATUS_API==STD_ON)
Uart_StatusType Uart_GetStatus(void)
{
    return Uart_ThisConfiguration->Status;
}
#endif