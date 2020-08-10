/***************************************************************
*
* Module: Port
*
* File Name: Port.c
*
* Description: Source file for Port Module,
*              implementation is based on AUTOSAR specfications.
*
* Author: Mostafa Amgad
*
* Date:  July 17, 2020
****************************************************************/


/*=================================================================
                            INCLUDES
*================================================================*/
#include "Port.h"


/*=================================================================
                    GLOBAL STATIC VARIABLES
*================================================================*/
#if(EXTRA_FEATURES==STD_ON)
static Port_ConfigType Port_ThisConfiguration[PORT_TOTAL_NB * 8];
#endif


/*=================================================================
                     APIs IMPLEMENTATION
*================================================================*/
void Port_Init(Port_ConfigType* ConfigPtr)
{
#if (DEV_ERROR_DETECT == STD_ON)
	/* check if the input configuration pointer is not a NULL_PTR */
	if (ConfigPtr == NULL) 
    {
		Det_ReportError(PORT_MODULE_ID, PORT_INSTANCE_ID, PORT_INIT_SID,PORT_E_PARAM_POINTER);
	} else
#endif
    {
        volatile Port_PinType* Port_Dir_Ptr,*Port_Ptr = NULL;
        Port_Dir_Ptr = &HWREG(DDR_BASE, ConfigPtr->Port);
        Port_Ptr = &HWREG(PORT_BASE, ConfigPtr->Port);

        //set pin direction
        if (ConfigPtr->PinDirection == PORT_PIN_OUT) 
        {
            CLEAR_BIT(*Port_Dir_Ptr, ConfigPtr->Pin);
    #if(EXTRA_FEATURES==STD_ON)
            //set pin initial level
            if (ConfigPtr->PinIntitLevel == HIGH) {
               SET_BIT(*Port_Ptr, ConfigPtr->Pin);
            } 
            else if (ConfigPtr->PinIntitLevel == LOW) {
               CLEAR_BIT(*Port_Ptr, ConfigPtr->Pin);
            }
    #else
            CLEAR_BIT(*Port_Ptr, ConfigPtr->Pin);
    #endif
        } 
        else if (ConfigPtr->PinDirection == PORT_PIN_IN) {
            SET_BIT(*Port_Dir_Ptr, ConfigPtr->Pin);

    #if(EXTRA_FEATURES==STD_ON)
            //set pull up/down
            if (ConfigPtr->PullConfig == PULL_UP){
               CLEAR_BIT(OPTION_REG,7);
            }
            else if (ConfigPtr->PullConfig == PULL_DOWN){
               SET_BIT(OPTION_REG,7);
            }
    #endif
        }
    #if(EXTRA_FEATURES==STD_ON)
        //Port status
            ConfigPtr->Port_PortStatus=PORT_INITIALIZED;
            static uint8_t InitializedPortIndex = 0;
            Port_ThisConfiguration[InitializedPortIndex++] = ConfigPtr;     
    #endif
    }
}

void Port_InitPort(Port_ConfigType* ConfigPtr)
{
    for(int i=0 ; i<8 ; i++)
    { 
        Port_Init(ConfigPtr);
        ConfigPtr->Pin++;
    }
}

#if(EXTRA_FEATURES==STD_ON)
void Port_SetPinDirection(Port_PinType Pin, Port_PinDirectionType Direction)
{
#if (DEV_ERROR_DETECT == STD_ON)
	/* check if the input configuration pointer is not a NULL_PTR */	
    if (Pin > PINS_NUM) {
		Det_ReportError(PORT_MODULE_ID, PORT_INSTANCE_ID,
		PORT_SET_PIN_DIRECTION_SID,
		PORT_E_PARAM_PIN);
	} else
#endif
	{
        volatile Port_PinType* Port_Dir_Ptr = NULL;
        Port_PortType PortNb=Pin/8;
        Pin=Pin%8;
        Port_Dir_Ptr = &HWREG(DDR_BASE, PortNb);
        uint8 x ;
        for (int i = 0; i < 8; ++i) {
            if (Port_ThisConfiguration[i].Pin == Pin && Port_ThisConfiguration[i].Port == PortNb) 
                    x = i;
        }
        if(Port_ThisConfiguration[x].PinDirChangeable == CHANGEABLE)
        {
            if(Direction == PORT_PIN_OUT)
            CLEAR_BIT(*Port_Dir_Ptr, Pin);
            else if (Direction == PORT_PIN_OUT)
            SET_BIT(*Port_Dir_Ptr, Pin);
        }

#if (DEV_ERROR_DETECT == STD_ON)
        else
            Det_ReportError(PORT_MODULE_ID, PORT_INSTANCE_ID,
            PORT_SET_PIN_DIRECTION_SID,
            PORT_E_DIRECTION_UNCHANGEABLE);
#endif
    }
    
}

void Port_RefreshPortDirection()
{
    volatile Port_PinType* Port_Dir_Ptr = NULL;
    Port_ConfigType* Port_Config_this = NULL;
  
	for (int i = 0; i < 8; ++i) 
    {
        *Port_Config_this = Port_ThisConfiguration[i];
        Port_Dir_Ptr = &Port_ThisConfiguration;
        Port_Dir_Ptr = &HWREG(DDR_BASE, Port_Config_this->Port);
		if (Port_ThisConfiguration->PinDirection == PORT_PIN_IN) 
			CLEAR_BIT(*Port_Dir_Ptr, Port_Config_this->Pin);
		 else if (Port_ThisConfiguration->PinDirection == PORT_PIN_OUT) 
			SET_BIT(*Port_Dir_Ptr, Port_Config_this->Pin);
    }
}


void Port_SetPinMode(Port_PinType Pin, Port_PinModeType Mode) {

#if (DEV_ERROR_DETECT == STD_ON)
	/* check if the input configuration pointer is not a NULL_PTR */	
    if (Pin > PINS_NUM) {
		Det_ReportError(PORT_MODULE_ID, PORT_INSTANCE_ID,
		PORT_SET_PIN_MODE_SID,
		PORT_E_PARAM_PIN);
	} else
#endif
	{    
        volatile Port_PinType* Port_Mode_Ptr = NULL;
        Port_PortType PortNb=Pin/8;
        Pin=Pin%8;
        Port_Mode_Ptr = &HWREG(DDR_BASE, PortNb);
        uint8 x ;
        for (int i = 0; i < 8; ++i) {
            if (Port_ThisConfiguration[i].Pin == Pin && Port_ThisConfiguration[i].Port == PortNb) 
                    x = i;
        }
        if(Port_ThisConfiguration[x].PinDirChangeable == CHANGEABLE)
        {
            if(Mode == DIO)
            CLEAR_BIT(*Port_Mode_Ptr, Pin);
            else if (Mode == I2C)
            SET_BIT(*Port_Mode_Ptr, Pin);
        }
        else
        {
#if (DEV_ERROR_DETECT == STD_ON)
				Det_ReportError(PORT_MODULE_ID, PORT_INSTANCE_ID,
				PORT_SET_PIN_MODE_SID,
				PORT_E_MODE_UNCHANGEABLE);
#endif
        }
    }
}
#endif
