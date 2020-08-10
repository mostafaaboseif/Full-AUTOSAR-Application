/***************************************************************
*
* Module: Spi
*
* File Name: Spi.h
*
* Description: Header file for Spi Module,
*              implementation is based on AUTOSAR specfications.
*
* Author: Mostafa Amgad
*
* Date:  July 17, 2020
****************************************************************/


/*************************** IMPORTANT NOTE *****************************
* The external interface of this driver follows the Autosar Specs for the
* Spi_Handler driver, but internally the driver is implemented using I2c
* protocol (to be able to use the eeprom), the two protocols are the same
* so there won't be any difference
*************************************************************************/

#ifndef SPI_H
#define SPI_H


/* Spi Module Id */
#define SPI_MODULE_ID    0x083
/* Spi Instance Id */
#define SPI_INSTANCE_ID  0x00
/*=================================================================
                         INCLUDE FILES
==================================================================*/
/*pre-compile configurations*/
#include "../cfg/Spi_Cfg.h"

/*needed interfaces from external units*/
#include "Port.h"


/*=================================================================
                      API Service Id Macros
==================================================================*/
/* Service ID for Spi INIT */
#define SPI_INIT_SID              	  0x00
/*Service ID for Spi DeInit*/
#define SPI_DEINIT_SID                0x01
/*Service ID for Spi WriteIB*/
#define SPI_WRITE_SID                 0x02
/*Service ID for Spi ReadIB*/
#define SPI_READ_SID             	  0x03
/*Service ID for Spi GetStatus*/
#define SPI_GET_STATUS_SID            0x07

/*=================================================================
                        DET Error Codes 
==================================================================*/
//API service called without module initialization
#define SPI_E_UNINIT 0x1A
//A function has been called with incorrect parameter(pointer is NULL_PTR)
#define SPI_E_PARAM_POINTER 0x10
//SpiInit has been called while SPI is already initialized
#define SPI_E_ALREADY_INITIALIZED 0x4A
//API service called with wrong channel as parameter
#define SPI_E_PARAM 0x0A

/*=================================================================
                           CONSTANTS
==================================================================*/
#define SPI_CTL_REG1 SSPCON
#define SPI_CTL_REG2 SSPCON2
#define SPI_STAT_REG SSPSTAT
#define SPI_BUFF_REG SSPBUF
#define SPI_ADDR_REG SSPADD
#define SPI_BUSY_BIT SSPIF

#define EEPROM_Address_R 0xA1
#define EEPROM_Address_W 0xA0

enum{
    SEN_BIT,RSEN_BIT,PEN_BIT,RCEN_BIT,
    ACKEN_BIT,ACKDT_BIT,ACKSTAT_BIT
};

/*=================================================================
                       Module Data Types
==================================================================*/
//Type for Spi Baudrate
typedef uint32_t Spi_BaudRateType;

//Specifies the identification (ID) for a Channel.
typedef uint8_t Spi_ChannelType;

//Type for defining the number of data elements of the type 
//Spi_DataBufferType to send and / or receive by Channel
typedef uint16_t Spi_NumberOfDataType;

//Type of application data buffer elements.
typedef uint16_t Spi_DataBufferType;

//Type for the Spi mode
typedef enum{
    SPI_SLAVE_7BIT =      0b0110,
    SPI_SLAVE_10BIT =     0b0111,
    SPI_MASTER =          0b1000,
    SPI_MASTER_FRIMWARE=  0b1001,
    SPI_SLAVE_7BIT_INT_EN=0b1010,
    SPI_SLAVE_10BIT_INT_EN=0b1011
}Spi_ModeType;

//Type for the Spi module
typedef enum{
    SPI0
}Spi_ModuleType;

//Type for the Spi status
typedef enum{
    SPI_UNINIT,
    SPI_IDLE,
    SPI_BUSY
}Spi_StatusType;

//Type for the Spi buffer source
typedef enum{
    INTERNAL_BUFFER,EXTERNAL_BUFFER
}Spi_BufferSourceType;

//Type for the Spi transfer start
typedef enum{
    MSB_FIRST,LSB_FIRST
}Spi_TransferStartType;

//Type for the Spi data waidth
typedef enum{
    BITS_8,BITS_16,BITS_32
}Spi_DataWidthType;

//This type of the external data structure 
//shall contain the initialization data for the SPI Handler/Driver.
typedef struct{ 
    Spi_ChannelType Spi_Channel;
    Spi_ModuleType Spi_Module;
    Spi_BaudRateType Spi_Baudrate;    
    Spi_ModeType Spi_Mode;
    Spi_DataWidthType Spi_DataWidth;
    Spi_BufferSourceType Spi_BufferSource;
    Spi_TransferStartType Spi_TransferStart;
    Spi_DataBufferType Spi_DefaultTransmitValue;
    Spi_StatusType Spi_Status;    
}Spi_ConfigType;

/*=================================================================
                      FUNCTION PROTOTYPES
==================================================================*/

/**
 * @brief   Initializes the Spi Driver module.
 * @details The function @p Spi_Init() shall initialize all Spi relevant registers 
 *          with the values of the structure referenced by the parameter Config-Ptr.
 * 
 * @post    Spi_Init() must be called before all other Spi Driver module's 
 *          functions otherwise no operation can occur on the Spi.
 *
 * @param[in] ConfigPtr     A pointer to the structure which contains
 *                          initialization parameters.
 */

void Spi_Init(Spi_ConfigType *Config_Ptr);



 /**
 * @brief   Service for writing one or more data to an IB SPI Handler/Driver
  *         Channel specified by parameter.
 * @details The function Spi_WriteIB provides the service for writing one or more 
  *         data to an IB SPI Handler/Driver Channel by the respective parameter
 * @pre     @p Port_Init() must have been called first.
 *
 * @param[in] Channel             Channel ID.
 * @param[in] DataBufferPtr       Pointer to source data buffer
 * @param[out] Std_ReturnType     E_OK: write command has been accepted 
  *                               E_NOT_OK: write command has not been accepted
 */
Std_ReturnType Spi_WriteIB ( Spi_ChannelType Channel, Spi_DataBufferType* DataBufferPtr );



 /**
 * @brief   Service for reading one or more data to an IB SPI Handler/Driver
  *         Channel specified by parameter.
 * @details The function Spi_WriteIB provides the service for reading one or more 
  *         data to an IB SPI Handler/Driver Channel by the respective parameter
 * @pre     @p Port_Init() must have been called first.
 *
 * @param[in] Channel             Channel ID.
 * @param[in] DataBufferPtr       Pointer to destination data buffer in RAM
 * @param[out] Std_ReturnType     E_OK: write command has been accepted 
  *                               E_NOT_OK: write command has not been accepted
 */
Std_ReturnType Spi_ReadIB ( Spi_ChannelType Channel, Spi_DataBufferType* DataBufferPtr );


 
/**
 * @brief   Service for writing the slave address to an IB SPI Handler/Driver
 * @details The function Spi_WriteSlaveAddress provides the service for writing the 
 *          slave address to an IB SPI Handler/Driver
 * @pre     @p Port_Init() must have been called first.
 *
 * @param[in]  uint8_t            slave address
 * @param[out] uint8_t            ACKSTAT
 */
uint8_t Spi_WriteSlaveAddress(uint8_t);


/*
 * @brief   Returns all SPI HW Units to a state comparable to their power on reset state.
 * @details The function Spi_DeInit shall return all SPI HW Units to a state
 *         comparable to their power on reset state
 * 
 * @pre     @p Spi_Init() must have been called first.
 *
 */
#if(SPI_DEINIT_API==STD_ON)
void Spi_DeInit();
#endif

 /**
 * @brief   Returns the conversion status of the Spi module
 * @details The function Spi_GetStatus shall return the conversion status
  *          of the Spi module
 * 
 * @pre     @p i2c_Init() must have been called first.
 *
 * @param[out] Spi_StatusType    Conversion status for the Spi module.
 */
#if(SPI_GET_STATUS_API==STD_ON)
Spi_StatusType Spi_GetStatus ( void );
#endif



/**
 * @brief   Set of function to send specific bits on the Spi bus
 * @details The Set of function to send specific bits on the Spi bus used 
 *          in the communication by Spi devices
 * 
 * @pre     @p Spi_Init() must have been called first.
 */
void SPI_Master_Wait();
void SPI_Master_Start();
void SPI_Master_RepeatedStart();
void SPI_Master_Stop();
void SPI_ACK();
void SPI_NACK();


#endif   /*Spi.h*/