/***************************************************************
*
* Module: Spi
*
* File Name: Spi.c
*
* Description: Source file for Spi Module,
*              implementation is based on AUTOSAR specfications.
*
* Author: Mostafa Amgad
*
* Date:  July 17, 2020
****************************************************************/


/*=================================================================
                            INCLUDES
*================================================================*/
#include "Spi.h"

/*=================================================================
                    GLOBAL EXTERN VARIABLES
*================================================================*/
extern Port_ConfigType Spi_ConfigPins[2];

/*=================================================================
                LOCAL FUNCTIONS IMPLEMENTATION
*================================================================*/
Spi_ConfigType *Spi_ThisConfiguration = NULL ;

/*=================================================================
                     APIs IMPLEMENTATION
*================================================================*/
void Spi_Init(Spi_ConfigType *Config_Ptr)
{
#if (DEV_ERROR_DETECT == STD_ON)
	/* check if the input configuration pointer is not a NULL_PTR */
	if (Config_Ptr == NULL) 
    {
		Det_ReportError(SPI_MODULE_ID, SPI_INSTANCE_ID, 
        SPI_INIT_SID,SPI_E_PARAM_POINTER);
    
	} 
    else if(Config_Ptr->Spi_Status != SPI_UNINIT)
    {
        Det_ReportError(SPI_MODULE_ID, SPI_INSTANCE_ID, 
        SPI_INIT_SID,SPI_E_ALREADY_INITIALIZED);   
    }else
#endif
    {
        Port_Init(&Spi_ConfigPins[0]);
        Port_Init(&Spi_ConfigPins[1]);
    
        SPI_CTL_REG1 |= 0x0F & Config_Ptr->Spi_Mode;
        SET_BIT(SPI_CTL_REG1,5);
        SPI_CTL_REG2 = 0;
        SPI_ADDR_REG = (_XTAL_FREQ/(4*Config_Ptr->Spi_Baudrate))-1;
        SPI_STAT_REG = 0;

        Spi_ThisConfiguration = Config_Ptr;
        Spi_ThisConfiguration->Spi_Status = SPI_IDLE;
    }
}

#if(SPI_DEINIT_API==STD_ON)
void Spi_DeInit()
{
#if (DEV_ERROR_DETECT == STD_ON)
    if(Spi_ThisConfiguration->Spi_Status == SPI_UNINIT)
    {
        Det_ReportError(SPI_MODULE_ID, SPI_INSTANCE_ID, 
        SPI_DEINIT_SID,SPI_E_UNINIT);   
    }
#endif
    {
        CLEAR_REG(SPI_CTL_REG1);
        CLEAR_REG(SPI_CTL_REG2);
        CLEAR_REG(SPI_STAT_REG);
        CLEAR_REG(SPI_ADDR_REG);
    }
}
#endif

uint8_t Spi_WriteSlaveAddress(uint8_t data)
{
  SPI_Master_Wait();
  SPI_BUFF_REG = data;
  while(!SPI_BUSY_BIT);
  SPI_BUSY_BIT = 0;
  return ACKSTAT;
}

Std_ReturnType Spi_WriteIB(Spi_ChannelType Channel, Spi_DataBufferType* DataBufferPtr)
{
#if (DEV_ERROR_DETECT == STD_ON)
    if(Spi_ThisConfiguration->Spi_Status == SPI_UNINIT)
    {
        Det_ReportError(SPI_MODULE_ID, SPI_INSTANCE_ID, 
        SPI_WRITE_SID,SPI_E_UNINIT);   
    }
    else if(DataBufferPtr == NULL)
    {
        Det_ReportError(SPI_MODULE_ID, SPI_INSTANCE_ID, 
        SPI_WRITE_SID,SPI_E_PARAM);   
    }
    else if(Channel != 0)
    {
        Det_ReportError(SPI_MODULE_ID, SPI_INSTANCE_ID, 
        SPI_WRITE_SID,SPI_E_PARAM);   
    }else
#endif
    {
        SPI_Master_Wait();
        SPI_BUFF_REG = *DataBufferPtr;
        while(!SPI_BUSY_BIT);
        SPI_BUSY_BIT = 0;
        return ACKSTAT;
    }
    
    return E_OK;
}
Std_ReturnType Spi_ReadIB ( Spi_ChannelType Channel, Spi_DataBufferType* DataBufferPtr )
{
#if (DEV_ERROR_DETECT == STD_ON)
    if(Spi_ThisConfiguration->Spi_Status == SPI_UNINIT)
    {
        Det_ReportError(SPI_MODULE_ID, SPI_INSTANCE_ID, 
        SPI_READ_SID,SPI_E_UNINIT);   
    }
    else if(DataBufferPtr == NULL)
    {
        Det_ReportError(SPI_MODULE_ID, SPI_INSTANCE_ID, 
        SPI_READ_SID,SPI_E_PARAM);   
    }
    else if(Channel != 0)
    {
        Det_ReportError(SPI_MODULE_ID, SPI_INSTANCE_ID, 
        SPI_READ_SID,SPI_E_PARAM);   
    }else
#endif
    {
        SPI_Master_Wait();
        SET_BIT(SPI_CTL_REG2,RCEN_BIT); // Enable & Start Reception
        while(!SPI_BUSY_BIT); // Wait Until Completion
        SPI_BUSY_BIT = 0; // Clear The Interrupt Flag Bit
        SPI_Master_Wait();
        *DataBufferPtr = SPI_BUFF_REG; // Return The Received Byte
    } 
    return E_OK;
}

#if(SPI_GET_STATUS_API==STD_ON)
Spi_StatusType Spi_GetStatus ( void )
{
    return Spi_ThisConfiguration->Spi_Status;
}
#endif

void SPI_Master_Wait()
{
  while ((SPI_STAT_REG & 0x04) || (SPI_CTL_REG2 & 0x1F));
}
void SPI_Master_Start()
{
  SPI_Master_Wait();
  SET_BIT(SPI_CTL_REG2,SEN_BIT);
}
void SPI_Master_RepeatedStart()
{
  SPI_Master_Wait();
  SET_BIT(SPI_CTL_REG2,RSEN_BIT);
}
void SPI_Master_Stop()
{
  SPI_Master_Wait();
  SET_BIT(SPI_CTL_REG2,PEN_BIT);
}

void SPI_ACK(void)
{
  CLEAR_BIT(SPI_CTL_REG2,ACKDT_BIT);// 0 -> ACK
  SPI_Master_Wait();
  SET_BIT(SPI_CTL_REG2,ACKEN_BIT);// Send ACK
}
void SPI_NACK(void)
{
  SET_BIT(SPI_CTL_REG2,ACKDT_BIT); // 1 -> NACK
  SPI_Master_Wait();
  SET_BIT(SPI_CTL_REG2,ACKEN_BIT);
  ACKEN = 1; // Send NACK
}

