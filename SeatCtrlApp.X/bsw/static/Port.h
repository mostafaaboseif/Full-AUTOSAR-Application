/***************************************************************
*
* Module: Port
*
* File Name: Port.h
*
* Description: Header file for Port Module,
*              implementation is based on AUTOSAR specfications.
*
* Author: Mostafa Amgad
*
* Date:  July 17, 2020
****************************************************************/

#ifndef PORT_H
#define PORT_H

/* Port Module Id */
#define PORT_MODULE_ID    0x124
/* Port Instance Id */
#define PORT_INSTANCE_ID  0x00

/*=================================================================
                         INCLUDE FILES
==================================================================*/

/* Standard AUTOSAR types */
#include "../../common/Std_Types.h"

/*Common Macros*/
#include "../../common_macros.h"

/* Microcontroller Configurations */
#include "../../micro_config.h"

/* PreCompile Configurations */
#include "../cfg/Port_Cfg.h"

/*needed interfaces from external units*/
#include "Dio.h"
#include "interrupt.h"
#if (DEV_ERROR_DETECT == STD_ON)
#include "../../Det.h"
#endif

/*=================================================================
                      API Service Id Macros
==================================================================*/
/* Service ID for Port INIT */
#define PORT_INIT_SID           			  0x00
/*Service ID for Port Set Pin Direction*/
#define PORT_SET_PIN_DIRECTION_SID            0x01
/*Service ID for Port Set Pin Direction*/
#define PORT_Refresh_PORT_DIRECTION_SID       0x02
/*Service ID for Set Pin Mode*/
#define PORT_SET_PIN_MODE_SID           	  0x04

/*=================================================================
                        DET Error Codes 
==================================================================*/
//Invalid Port Pin ID requested
#define PORT_E_PARAM_PIN 0x0A
//Port Pin not configured as changeable
#define PORT_E_DIRECTION_UNCHANGEABLE 0x0B
//API Port_SetPinMode service called when mode is unchangeable.
#define PORT_E_MODE_UNCHANGEABLE 0x0E
//API service called without module initialization
#define PORT_E_UNINIT 0x0F
//APIs called with a Null Pointer
#define PORT_E_PARAM_POINTER 0x10

/*=================================================================
                           CONSTANTS
==================================================================*/
#define DDR_BASE    0x085
#define PORT_BASE   0x005
#define PINS_NUM     24

/*=================================================================
                       Module Data Types
==================================================================*/
//Data type for the symbolic name of a port pin.
typedef uint8_t Port_PinType ;

//Possible directions of a port pin.
typedef enum Port_PinDirectionType{
	PORT_PIN_IN ,
	PORT_PIN_OUT
}Port_PinDirectionType;

//Different port pin modes.
typedef enum Port_PortType{
    PortA, PortB, PortC, PortD, PortE
}Port_PortType;

#if(EXTRA_FEATURES==STD_ON)
//Possible pull-up resistors configurations of a port pin.
typedef enum {
	PULL_UP ,
	PULL_DOWN,
    NO_PULL
}Port_PullConfigType ;

//Possible pin Changeable (directions or modes) configurations of a port pin.
typedef enum{
	NOT_CHANGEABLE,
    CHANGEABLE
}Port_PinChangeableType;

//Possible modes of a port pin.
typedef enum{
    DIO,AIN,AOUT,I2C
}Port_PinModeType;

//Port status
typedef enum {
    PORT_NOT_INITIALIZED,
    PORT_INITIALIZED  
}Port_PortStatusType;
#endif

//Type of the external data structure containing the initialization 
//data for this module.
typedef struct {
    Port_PortType Port;  //the configured port
	Port_PinType Pin  ;  //the configured pin
    Port_PinDirectionType PinDirection  ;  //direction of the configured pin(input/output) 
#if(EXTRA_FEATURES==STD_ON)
    uint8 PinIntitLevel;  //initial output value of the configured pin
    Port_PullConfigType PullConfig;  //activating internal pull-up resistors 
    Port_PinModeType PinMode;   //mode of the configured pin (dio, uart, ?)
    //indicates if the pin direction can be changed in runtime. 
    Port_PinChangeableType PinDirChangeable;  
    //indicates if the pin mode can be changed in runtime. 
    Port_PinChangeableType PinModeChangeable;  
    Port_PortStatusType Port_PortStatus;  //used for error checking and handling
#endif
}Port_ConfigType;


/*=================================================================
                      FUNCTION PROTOTYPES
==================================================================*/

/**
 * @brief   Initializes the Port Driver module.
 * @details The function @p Port_Init() will initialize a specific port and port pin
 *          with the configuration set pointed to by the parameter @p ConfigPtr.
 * @post    Port_Init() must be called before all other Port Driver module's functions
 *          otherwise no operation can occur on the MCU ports and port pins.
 *
 * @param[in] ConfigPtr     A pointer to the structure which contains
 *                          initialization parameters.
 */
void Port_Init(Port_ConfigType* ConfigPtr);



/**
 * @brief   Initializes the Port Driver module.
 * @details The function @p Port_InitPort() will initialize ALL ports and port pins
 *          with the configuration set pointed to by the parameter @p ConfigPtr.
 * @post    Port_InitPort() must be called before all other Port Driver module's functions
 *          otherwise no operation can occur on the MCU ports and port pins.
 *
 * @param[in] ConfigPtr     A pointer to the structure which contains
 *                          initialization parameters.
 */
void Port_InitPort(Port_ConfigType* ConfigPtr);



#if(EXTRA_FEATURES==STD_ON)
**
 * @brief   Sets the port pin direction.
 * @details The function @p Port_SetPinDirection() will set the port pin direction
 *          during runtime.
 * @pre     @p Port_Init() must have been called first. In order to change the
 *          pin direction the PortPinDirectionChangeable flag must have been set
 *          to @p TRUE.
 *
 * @param[in] Pin           Pin ID number.
 * @param[in] Direction     Port Pin direction.
 */

void Port_SetPinDirection(Port_PinType Pin, Port_PinDirectionType Direction);



/**
 * @brief   Refreshes port direction.
 * @details This function will refresh the direction of all configured ports to
 *          the configured direction.<br>
 *          The PORT driver will exclude from refreshing those port pins that
 *          are configured as "pin direction changeable during runtime".
 * @pre     @p Port_Init() must have been called first.
 */
void Port_RefreshPortDirection();


/**
 * @brief   Sets the port pin mode.
 * @details The function @p Port_SetPinMode() will set the port pin mode of the
 *          referenced pin during runtime.
 * @pre     @p Port_Init() must have been called first.
 *
 * @param[in] Pin       Pin ID number.
 * @param[in] Mode      New Port Pin mode to be set on port pin.
 */

void Port_SetPinMode(Port_PinType Pin, Port_PinModeType Mode);
#endif

#endif    /*Port.h*/