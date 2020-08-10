/***************************************************************
*
* Module: Adc
*
* File Name: Adc.c
*
* Description: Source file for Adc Module,
*              implementation is based on AUTOSAR specfications.
*
* Author: Mostafa Amgad
*
* Date:  July 17, 2020
****************************************************************/


/*=================================================================
                            INCLUDES
*================================================================*/
#include "Adc.h"


/*=================================================================
                    GLOBAL STATIC VARIABLES
*================================================================*/
Port_ConfigType Adc_PortConfig[3]=
{
    {PortA,Pin0,PORT_PIN_IN},
    {PortA,Pin1,PORT_PIN_IN},   
    {PortA,Pin2,PORT_PIN_IN}    
};

Adc_ConfigType* Adc_ThisConfiguration = NULL; 
volatile Adc_ValueGroupType** Adc_Result;


/*=================================================================
                LOCAL FUNCTIONS IMPLEMENTATION
*================================================================*/
void Adc_CallbackFn()
{
   **(Adc_Result) = ((ADC_BUFF_REG_H << 8) + ADC_BUFF_REG_L)/2; 
   Adc_ThisConfiguration->CallbackFn(**(Adc_Result));
   ADIF = 0; 
   if(Adc_ThisConfiguration->Adc_GroupConvMode == ADC_CONV_MODE_CONTINUOUS_INTERRUPT)
        SET_BIT(ADC_CTL_REG1,ADC_BUSY_BIT);
   else
        Adc_ThisConfiguration->Adc_Status = ADC_COMPLETED;  
}


/*=================================================================
                     APIs IMPLEMENTATION
*================================================================*/
void Adc_Init(Adc_ConfigType* Adc_Config)
{
#if (DEV_ERROR_DETECT == STD_ON)
	/* check if the input configuration pointer is not a NULL_PTR */
	if (Adc_Config == NULL) 
    {
		Det_ReportError(ADC_MODULE_ID, ADC_INSTANCE_ID, 
        ADC_INIT_SID,ADC_E_PARAM_POINTER);
    
	} 
    else if(Adc_Config->Adc_Status != ADC_UNINIT)
    {
        Det_ReportError(ADC_MODULE_ID, ADC_INSTANCE_ID, 
        ADC_INIT_SID,ADC_E_ALREADY_INITIALIZED);   
    }
#endif
    {
        CLEAR_REG(ADC_CTL_REG1);
        CLEAR_REG(ADC_CTL_REG2);
        for(int i=0 ; i<Adc_Config->Adc_NbChannels; i++)
         {   
            Port_Init(&Adc_PortConfig[i]);
            REG_VALUE_SHIFT(ADC_CTL_REG1,Adc_Config->ArrayOfAdcChannels[i],3);
            REG_VALUE_SHIFT(ADC_CTL_REG1,(Adc_Config->Adc_Prescale & 0x03),6);
            REG_VALUE_SHIFT(ADC_CTL_REG2,(Adc_Config->Adc_Prescale & 0x04),4);
            REG_VALUE_SHIFT(ADC_CTL_REG2,Adc_Config->Adc_ResultAlignment,7);
         }   

        ADC_CTL_REG2 |=  (0x2<<0); //Port Config Ctrl bits
        ADC_CTL_REG1 |=  (1>>0);

        if(Adc_Config->Adc_GroupConvMode == ADC_CONV_MODE_CONTINUOUS_INTERRUPT)
             Interrupt_Enable(ADC,Adc_CallbackFn);

        Adc_ThisConfiguration =Adc_Config;  

        Adc_ThisConfiguration->Adc_Status = ADC_IDLE;  
    }
}


#if (ADC_READ_GP_CAPABILITY==STD_ON)
Std_ReturnType Adc_ReadGroup( Adc_GroupType Group, Adc_ValueGroupType* DataBufferPtr )
{
#if (DEV_ERROR_DETECT == STD_ON)
	/* check if the input configuration pointer is not a NULL_PTR */
	if (DataBufferPtr == NULL) 
    {
		Det_ReportError(ADC_MODULE_ID, ADC_INSTANCE_ID, 
        ADC_READ_GP_SID,ADC_E_PARAM_POINTER);    
	} 
    else if(Adc_ThisConfiguration->Adc_Status == ADC_UNINIT)
    {
        Det_ReportError(ADC_MODULE_ID, ADC_INSTANCE_ID, 
        ADC_READ_GP_SID,ADC_E_UNINIT);   
    }
    else if(Group != 0)
    {
        Det_ReportError(ADC_MODULE_ID, ADC_INSTANCE_ID, 
        ADC_READ_GP_SID,ADC_E_PARAM_GROUP);   
    }else
#endif
    {
        if(Adc_ThisConfiguration->Adc_GroupConvMode == ADC_CONV_MODE_ONESHOT_POLLING)
        {
         ADC_CTL_REG1 &= 0x11000101; 
         REG_VALUE_SHIFT(ADC_CTL_REG1,Adc_ThisConfiguration->ArrayOfAdcChannels[0],3);         
         if(Adc_ThisConfiguration->Adc_GroupAccessMode == ADC_ACCESS_MODE_STREAMING)
         {
            for(uint8_t i = 0; i<Adc_ThisConfiguration->Adc_NbSamples; i++)
            {
               Adc_StartGroupConversion(0);
               *DataBufferPtr++ = ((ADC_BUFF_REG_H << 8) + ADC_BUFF_REG_L)/2;
            }   
            Adc_ThisConfiguration->Adc_Status = ADC_STREAM_COMPLETED;
         }
         else if(Adc_ThisConfiguration->Adc_GroupAccessMode == ADC_ACCESS_MODE_SINGLE)
         {
             Adc_StartGroupConversion(0);
             *DataBufferPtr++ = ((ADC_BUFF_REG_H << 8) + ADC_BUFF_REG_L)/2;
         }
        }
        else if(Adc_ThisConfiguration->Adc_GroupConvMode == ADC_CONV_MODE_CONTINUOUS_INTERRUPT)
        { 
           for(uint8_t i = 0; i<Adc_ThisConfiguration->Adc_NbChannels; i++)
           {
             *Adc_Result = DataBufferPtr++ ;
             ADC_CTL_REG1 &= 0x11000101;
             REG_VALUE_SHIFT(ADC_CTL_REG1,i,3);    
             Adc_StartGroupConversion(0);
            }
        }
    }
  return E_OK;
}
#endif

#if (ADC_ENABLE_START_STOP_GROUP_API==STD_ON)
void Adc_StartGroupConversion ( Adc_GroupType groupId )
{
#if (DEV_ERROR_DETECT == STD_ON)
	/* check if the input configuration pointer is not a NULL_PTR */
	if (Adc_ThisConfiguration->Adc_GroupConvMode == ADC_CONV_MODE_CONTINUOUS_INTERRUPT) 
    {
		Det_ReportError(ADC_MODULE_ID, ADC_INSTANCE_ID, 
        ADC_START_GROUP_SID,ADC_E_WRONG_CONV_MODE);
    
	} 
    else if(Adc_ThisConfiguration->Adc_Status == ADC_UNINIT)
    {
        Det_ReportError(ADC_MODULE_ID, ADC_INSTANCE_ID, 
        ADC_START_GROUP_SID,ADC_E_UNINIT);   
    }
    else if(groupId != 0)
    {
        Det_ReportError(ADC_MODULE_ID, ADC_INSTANCE_ID, 
        ADC_START_GROUP_SID,ADC_E_PARAM_GROUP);   
    }else
#endif
    {
        SET_BIT(ADC_CTL_REG1,ADC_BUSY_BIT);
        Adc_ThisConfiguration->Adc_Status = ADC_BUSY;
        while(BIT_IS_SET(ADC_CTL_REG1,ADC_BUSY_BIT));    
        Adc_ThisConfiguration->Adc_Status = ADC_COMPLETED;
    }
    
}
void Adc_StopGroupConversion ( Adc_GroupType groupId )
{
#if (DEV_ERROR_DETECT == STD_ON)
	/* check if the input configuration pointer is not a NULL_PTR */
	if (Adc_ThisConfiguration->Adc_GroupConvMode == ADC_CONV_MODE_CONTINUOUS_INTERRUPT) 
    {
		Det_ReportError(ADC_MODULE_ID, ADC_INSTANCE_ID, 
        ADC_STOP_GROUP_SID,ADC_E_WRONG_CONV_MODE);
    
	} 
    else if(Adc_ThisConfiguration->Adc_Status == ADC_UNINIT)
    {
        Det_ReportError(ADC_MODULE_ID, ADC_INSTANCE_ID, 
        ADC_STOP_GROUP_SID,ADC_E_UNINIT);   
    }
    else if(groupId != 0)
    {
        Det_ReportError(ADC_MODULE_ID, ADC_INSTANCE_ID, 
        ADC_STOP_GROUP_SID,ADC_E_PARAM_GROUP);   
    }else
#endif
    {    
        CLEAR_BIT(ADC_CTL_REG1,ADC_BUSY_BIT);
        Adc_ThisConfiguration->Adc_Status = ADC_IDLE;
    }
}
#endif

#if (ADC_DEINIT_API==STD_ON)
void Adc_DeInit()
{
#if (DEV_ERROR_DETECT == STD_ON)

    if(Adc_ThisConfiguration->Adc_Status == ADC_UNINIT)
    {    
        Det_ReportError(ADC_MODULE_ID, ADC_INSTANCE_ID,
                ADC_DEINIT_SID,ADC_E_UNINIT);
    }
    else
#endif
    {
        CLEAR_REG(ADC_CTL_REG1);
        CLEAR_REG(ADC_CTL_REG2);
    }
}
#endif

#if (ADC_GET_STATUS_API==STD_ON)
Adc_StatusType Adc_GetStatus()
{
    return Adc_ThisConfiguration->Adc_Status;
}
#endif


#if (ADC_SETUP_BUFF_API==STD_ON)
Std_ReturnType Adc_SetupResultBuffer( Adc_GroupType Group, Adc_ValueGroupType* DataBufferPtr )
{
#if (DEV_ERROR_DETECT == STD_ON)
	/* check if the input data pointer is not a NULL_PTR */
	if (DataBufferPtr == NULL) 
    {
		Det_ReportError(ADC_MODULE_ID, ADC_INSTANCE_ID, 
        ADC_SETUP_BUFF_SID,ADC_E_PARAM_POINTER);
    
	} 
    else if(Adc_ThisConfiguration->Adc_Status == ADC_UNINIT)
    {
        Det_ReportError(ADC_MODULE_ID, ADC_INSTANCE_ID, 
        ADC_SETUP_BUFF_SID,ADC_E_UNINIT);   
    }
    else if(Group != 0)
    {
        Det_ReportError(ADC_MODULE_ID, ADC_INSTANCE_ID, 
        ADC_SETUP_BUFF_SID,ADC_E_PARAM_GROUP);   
    }else
#endif
    {
        *Adc_Result = DataBufferPtr;
    }
    return E_OK;
}
#endif

#if (ADC_GRP_NOTIF_CAPABILITY==STD_ON)		
void Adc_EnableGroupNotification(Adc_GroupType groupId)
{
#if (DEV_ERROR_DETECT == STD_ON)
	if (Adc_ThisConfiguration->Adc_GroupConvMode == ADC_CONV_MODE_ONESHOT_POLLING) 
    {
		Det_ReportError(ADC_MODULE_ID, ADC_INSTANCE_ID, 
        ADC_EN_GRP_NOTIF_SID,ADC_E_WRONG_CONV_MODE);
    
	} 
    else if(Adc_ThisConfiguration->Adc_Status == ADC_UNINIT)
    {
        Det_ReportError(ADC_MODULE_ID, ADC_INSTANCE_ID, 
        ADC_EN_GRP_NOTIF_SID,ADC_E_UNINIT);   
    }
    else if(groupId != 0)
    {
        Det_ReportError(ADC_MODULE_ID, ADC_INSTANCE_ID, 
        ADC_EN_GRP_NOTIF_SID,ADC_E_PARAM_GROUP);   
    }else
#endif
    {
        Interrupt_Enable(ADC,Adc_CallbackFn);
    }
}
void Adc_DisableGroupNotification(Adc_GroupType groupId)
{
#if (DEV_ERROR_DETECT == STD_ON)
	if (Adc_ThisConfiguration->Adc_GroupConvMode == ADC_CONV_MODE_ONESHOT_POLLING) 
    {
		Det_ReportError(ADC_MODULE_ID, ADC_INSTANCE_ID, 
        ADC_DIS_GRP_NOTIF_SID,ADC_E_WRONG_CONV_MODE);
    
	} 
    else if(Adc_ThisConfiguration->Adc_Status == ADC_UNINIT)
    {
        Det_ReportError(ADC_MODULE_ID, ADC_INSTANCE_ID, 
        ADC_DIS_GRP_NOTIF_SID,ADC_E_UNINIT);   
    }
    else if(groupId != 0)
    {
        Det_ReportError(ADC_MODULE_ID, ADC_INSTANCE_ID, 
        ADC_DIS_GRP_NOTIF_SID,ADC_E_PARAM_GROUP);   
    }else
#endif
    {
        Interrupt_Disable(ADC);
    }
}
#endif
