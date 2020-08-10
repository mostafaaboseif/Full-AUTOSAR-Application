/***************************************************************
*
* Module: Uart
*
* File Name: Uart.h
*
* Description: Header file for Uart Module,
*              implementation is based on AUTOSAR specfications.
*
* Author: Mostafa Amgad
*
* Date:  July 17, 2020
****************************************************************/

#ifndef UART_H
#define UART_H

/* Uart Module Id */
#define UART_MODULE_ID    0x255
/* Uart Instance Id */
#define UART_INSTANCE_ID  0x00


/*=================================================================
                         INCLUDE FILES
==================================================================*/
/*needed interfaces from external units*/
#include "Port.h"
#include <stdio.h>
#include <stdlib.h>


/*=================================================================
                      API Service Id Macros
==================================================================*/
/* Service ID for Uart INIT */
#define UART_INIT_SID           			  0x00
/* Service ID for Uart DeInit */
#define UART_DEINIT_SID           			  0x01
/* Service ID for Uart WriteByte */
#define UART_WRITE_SID           			  0x02
/* Service ID for Uart ReadByte */
#define UART_READ_SID           			  0x03

/*=================================================================
                        DET Error Codes 
==================================================================*/
//API service called without module initialization
#define UART_E_UNINIT 0x0A
//API service for initialization called when already initialized
#define UART_E_ALREADY_INITIALIZED 0x0D
//API parameter checking: invalid pointer (NULL_PTR)
#define UART_E_PARAM_POINTER 0x16
//API parameter checking: invalid mode
#define UART_E_PARAM_MODE 0x1F

/*=================================================================
                           CONSTANTS
==================================================================*/
#define UART_CTL_REG1 TXSTA
#define UART_CTL_REG2 RCSTA
#define UART_RELO_REG SPBRG
#define UART_TX_BUFF_REG TXREG
#define UART_RX_BUFF_REG RCREG

/*=================================================================
                       Module Data Types
==================================================================*/
typedef uint16_t Uart_BaudrateType;

typedef enum{
    MASTER_TX,SLAVE_RX
}Uart_ComModeType;
typedef enum{
    SYNCHRONOUS,ASYNCHRONOUS
}Uart_SysModeType;
typedef enum{
    UART_POLLING,UART_INTERRUPT
}Uart_OpModeType;
typedef enum{
    UART_LSB_FIRST,UART_MSB_FIRST
}Uart_TransferStartType;
typedef enum{
    NINTH_BIT_DIS,NINTH_BIT_EN
}Uart_NinthBitType;
typedef enum{
    ADDR_DET_DIS,ADDR_DET_EN
}Uart_AddressDetectionType;
typedef enum{
    UART_UNINIT,
    UART_IDLE,
    UART_BUSY
}Uart_StatusType;

typedef struct{
    Uart_BaudrateType Baudrate;  
    Uart_ComModeType ComMode;  //Master transmitter ot Slave reciever   
    Uart_OpModeType OpMode;  //Synchronous or Asynchronous
    Uart_SysModeType SysMode;  //polling or interrupt
    Uart_NinthBitType NinthBitEn;  //ninth bit communication enable
    Uart_AddressDetectionType AddrDetEn;  //detection property enable 
    Uart_TransferStartType TransferStart;  //LSB or MSB
    Uart_StatusType Status;
}Uart_ConfigType;

/*=================================================================
                      FUNCTION PROTOTYPES
==================================================================*/
void Uart_Init(Uart_ConfigType*);
Std_ReturnType Uart_WriteByte(uint8_t);
Std_ReturnType Uart_WriteString(char*);
Std_ReturnType Uart_WriteInt(uint8_t Number);

#if(UART_DEINIT_API==STD_ON)
void Uart_DeInit(void);
#endif

#if(UART_GET_STATUS_API==STD_ON)
Uart_StatusType Uart_GetStatus(void);
#endif

#endif   /*Uart.h*/