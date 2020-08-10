/***************************************************************
*
* Module: Dio
*
* File Name: Dio.h
*
* Description: Header file for Dio Module,
*              implementation is based on AUTOSAR specfications.
*
* Author: Mostafa Amgad
*
* Date:  July 17, 2020
****************************************************************/

#ifndef DIO_H
#define DIO_H


/* Dio Module Id */
#define DIO_MODULE_ID    0x120
/* Dio Instance Id */
#define DIO_INSTANCE_ID  0x00

/*=================================================================
                         INCLUDE FILES
==================================================================*/
/*pre-compile configurations*/
#include "../cfg/Dio_Cfg.h"

/*needed interfaces from external units*/
#include "Port.h"


/*=================================================================
                      API Service Id Macros
==================================================================*/
/* Service ID for DIO read Channel */
#define DIO_READ_CHANNEL_SID            0x00
/* Service ID for DIO write Channel */
#define DIO_WRITE_CHANNEL_SID           0x01
/* Service ID for DIO toggle Channel */
#define DIO_TOGGLE_CHANNEL_SID           0x01

/*=================================================================
                        DET Error Codes 
==================================================================*/
/* DET code to report Invalid Channel */
#define DIO_E_PARAM_INVALID_CHANNEL_ID  0x0A


/*=================================================================
                       Module Data Types
==================================================================*/
/* Type definition for Dio_ChannelType used by the DIO APIs */
typedef uint8_t Dio_ChannelType;

/* Type definition for Dio_PortType used by the DIO APIs */
typedef uint8_t Dio_PortType;

/* Type definition for Dio_PortLevelType used by the DIO APIs */
typedef uint8_t Dio_PortLevelType;

/* Type definition for Dio_StateType used by the DIO APIs */
typedef uint8_t Dio_StateType;

/* Type definition for Dio_LevelType used by the DIO APIs */
typedef enum{
    LOW,HIGH
}Dio_LevelType;

typedef struct {
    /* Member contains the ID of the Port that this channel belongs to */
    Dio_PortType Port;
    /* Member contains the ID of the Channel*/
    Dio_ChannelType Channel;
} Dio_ConfigChannelType;

/* Data Structure required for initializing the Dio Driver */
typedef struct {
    Dio_ConfigChannelType Channels[DIO_CONFIGURED_CHANNLES];
} Dio_ConfigGroupChannelType;

/*=================================================================
                      FUNCTION PROTOTYPES
==================================================================*/
 /**
 * @brief   Service to set a level of a channel.
 * @details If the specified channel is configured as an output channel,
 *          the Dio_WriteChannel function shall set the specified 
 *          Level for the specified channel.
 * 
 * @pre     @p Port_Init() must have been called first.
 *
 * @param[in] ChannelId       ID of DIO channel
 * @param[in] Level           Value to be written
 * 
 */
void Dio_WriteChannel(Dio_ChannelType ChannelId, Dio_LevelType Level);



 /**
 * @brief   Returns the value of the specified DIO channel.
 * @details The Dio_ReadChannel function shall return the value of 
  *         the specified DIO channel.
 * @pre     @p Port_Init() must have been called first.
 *
 * @param[in] ChannelId       ID of DIO channel
 */
Dio_LevelType Dio_ReadChannel(Dio_ChannelType ChannelId);



 /**
 * @brief   Toggles the value of the specified DIO channel.
 * @details The Dio_ToggleChannel function shall toggle the value of 
  *         the specified DIO channel.
 * @pre     @p Port_Init() must have been called first.
 *
 * @param[in] ChannelId       ID of DIO channel
 */
void Dio_ToggleChannel(Dio_ChannelType ChannelId);



 /**
 * @brief   Service to set a value of the port.
 * @details The Dio_WritePort function shall set the specified 
  *         value for the specified port.
 * @pre     @p Port_Init() must have been called first.
 *
 * @param[in] PortId     ID of DIO Port
 * @param[in] Level      Value to be written
 */
void Dio_WritePort ( Dio_PortType PortId, Dio_PortLevelType Level );


 /**
 * @brief   Returns the level of all channels of that port.
 * @details The Dio_ReadPort function shall return the level 
  *         of all channels of that port.
 * 
 * @pre     @p Port_Init() must have been called first.
 * 
 * @param[in] Dio_PortLevelType       Level of all channels of that port
 */
Dio_PortLevelType Dio_ReadPort ( Dio_PortType PortId );

#endif   /*Dio.h*/
