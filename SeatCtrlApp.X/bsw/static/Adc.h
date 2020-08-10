/***************************************************************
*
* Module: Adc
*
* File Name: Adc.h
*
* Description: Header file for Adc Module,
*              implementation is based on AUTOSAR specfications.
*
* Author: Mostafa Amgad
*
* Date:  July 17, 2020
****************************************************************/


#ifndef ADC_H
#define	ADC_H

/* ADC Module Id */
#define ADC_MODULE_ID    0x123
/* ADC Instance Id */
#define ADC_INSTANCE_ID  0x00

/*=================================================================
                         INCLUDE FILES
==================================================================*/
/*pre-compile configurations*/
#include "../cfg/Adc_Cfg.h"

/*needed interfaces from external units*/
#include "Port.h"


/*=================================================================
                      API Service Id Macros
==================================================================*/
/* Service ID for Adc INIT */
#define ADC_INIT_SID              	  0x00
/*Service ID for Adc DeInit*/
#define ADC_DEINIT_SID                0x01
/*Service ID for Adc StartGroupConversion*/
#define ADC_START_GROUP_SID       	  0x02
/*Service ID for Adc StopGroupConversion*/
#define ADC_STOP_GROUP_SID        	  0x03
/*Service ID for Adc ReadGroup*/
#define ADC_READ_GP_SID          	  0x04
/*Service ID for Adc EnableGroupNotification*/
#define ADC_EN_GRP_NOTIF_SID          0x07
/*Service ID for Adc DisableGroupNotification*/
#define ADC_DIS_GRP_NOTIF_SID         0x08
/*Service ID for Adc GetGroupStatus*/
#define ADC_GET_STATUS_SID            0x09
/*Service ID for Adc SetupResultBuffer*/
#define ADC_SETUP_BUFF_SID            0x0c

/*=================================================================
                        DET Error Codes 
==================================================================*/
//API service called without module initialization
#define ADC_E_UNINIT 0x0A
//Adc_Init has been called while ADC is already initialized
#define ADC_E_ALREADY_INITIALIZED 0x0D
//A function has been called with incorrect parameter(pointer is NULL_PTR)
#define ADC_E_PARAM_POINTER 0x0E
//Invalid group ID requested
#define ADC_E_PARAM_GROUP 0x15
//Adc_EnableHardwareTrigger or Adc_DisableHardwareTrigger called on a 
//group with conversion mode configured as continuous
#define ADC_E_WRONG_CONV_MODE 0x16
//Enable/disable notification fn for group with configuration is polling
#define ADC_E_NOTIF_CAPABILITY 0x18

/*=================================================================
                           CONSTANTS
==================================================================*/
#define ADC_CTL_REG1 ADCON0
#define ADC_CTL_REG2 ADCON1
#define ADC_BUFF_REG_H ADRESH
#define ADC_BUFF_REG_L ADRESL
#define ADC_BUSY_BIT Pin2

/*=================================================================
                       Module Data Types
==================================================================*/
//Numeric ID of an ADC channel.
typedef uint8_t Adc_ChannelType;

//Numeric ID of an ADC channel group.
typedef uint8_t Adc_GroupType; //group index in array (0 - 7)

//Type for reading the converted values of a channel group
typedef uint8_t Adc_ValueGroupType;

//Type for configuring the number of group conversions in streaming access mode
typedef uint8_t Adc_StreamNumSampleType;

//Type of conversion time, i.e. the time during which
//the sampled analogue value is converted into digital representation.
typedef uint8_t Adc_ConversionTimeType; 

//Type of Adc Callback function that returns the adc result
typedef void (*Adc_CallbackFnType)(Adc_ValueGroupType);


#if(EXTRA_FEATURES==STD_ON)
//Type of sampling time, i.e. the time during which the value is sampled
//(in clock-cycles). 
typedef uint8_t Adc_SamplingTimeType;

//Type of channel resolution in number of bits.
typedef uint8_t Adc_ResolutionType;

//Priority level of the channel. Lowest priority is 0.
typedef uint8_t Adc_GroupPriorityType; 
#endif

//Type of Adc Channels
typedef enum AdcChannel{
    PA0,PA1,PA2,PA3
}AdcChannel;

//Type of clock prescaler factor.
typedef enum Adc_PrescalerType{
    ADC_PRE_2,ADC_PRE_8,ADC_PRE_32,ADC_RC,ADC_PRE_4,ADC_PRE_16,ADC_PRE_64
}Adc_PrescalerType;

//Type for configuring the access mode to group conversion results.
typedef enum Adc_GroupAccessModeType{  
ADC_ACCESS_MODE_SINGLE,
ADC_ACCESS_MODE_STREAMING
}Adc_GroupAccessModeType;

//Type for configuring the streaming access mode buffer type.
typedef enum Adc_StreamBufferModeType{ 
ADC_STREAM_BUFFER_LINEAR,
ADC_STREAM_BUFFER_CIRCULAR
}Adc_StreamBufferModeType;

//Type for configuring the conversion mode of an ADC Channel group.
typedef enum Adc_GroupConvModeType{  
ADC_CONV_MODE_ONESHOT_POLLING,
ADC_CONV_MODE_CONTINUOUS_INTERRUPT
}Adc_GroupConvModeType;

//Type for alignment of ADC raw results in ADC result buffer
typedef enum Adc_ResultAlignmentType{
ADC_ALIGN_LEFT,
ADC_ALIGN_RIGHT
}Adc_ResultAlignmentType;

//Current status of the conversion of the requested ADC Channel group.
typedef enum Adc_StatusType{
	ADC_UNINIT,
    ADC_IDLE,
	ADC_BUSY,
	ADC_COMPLETED,
	ADC_STREAM_COMPLETED
}Adc_StatusType;

#if(EXTRA_FEATURES==STD_ON)
//Type for configuring the trigger source for an ADC Channel group.
typedef enum Adc_TriggerSourceType{
ADC_TRIG_SRC_SW, 
ADC_TRIG_SRC_HW
}Adc_TriggerSourceType;

//Type for configuring the HW trigger source for an ADC Channel group.
typedef enum Adc_HwTriggerSourceType{
ADC_TRIG_EXTERNAL,
ADC_TRIG_TIMER,
NO_HW_TRIG
}Adc_HwTriggerSourceType;

//Type for configuring on which edge of the hardware trigger
//signal the driver should react, i.e. start the conversion (
typedef enum Adc_HwTriggerSignalType{
ADC_HW_TRIG_RISING_EDGE, 
ADC_HW_TRIG_FALLING_EDGE, 
ADC_HW_TRIG_BOTH_EDGES
}Adc_HwTriggerSignalType;
#endif

//Data structure containing the set of configuration parameters
//required for initializing the ADC Driver and ADC HW Unit(s).
typedef struct{
//Group Id
Adc_GroupType Adc_Group;  
//number of adc channels
Adc_ChannelType Adc_NbChannels;  
//array of adc channels used
AdcChannel ArrayOfAdcChannels[MAX_NB_ADC_CHANNELS];
//single or streaming
Adc_GroupAccessModeType Adc_GroupAccessMode;
//number of samples taken for a single channel (streaming)
Adc_StreamNumSampleType Adc_NbSamples;
//oneShot or continuous
Adc_GroupConvModeType Adc_GroupConvMode;
//align the conversion result to the left or the right
Adc_ResultAlignmentType Adc_ResultAlignment;
//the prescaler used in the conversion
Adc_PrescalerType Adc_Prescale;
//a function to be called after finishing the conversion
Adc_CallbackFnType CallbackFn;
//used for error checking and handling
Adc_StatusType Adc_Status;
#if(EXTRA_FEATURES==STD_ON)
//the trigger source for an ADC Channel group.
Adc_TriggerSourceType Adc_TriggerSource;
//the HW trigger source for an ADC Channel group.
Adc_HwTriggerSourceType Adc_HwTriggerSource;
//the HW trigger signal for an ADC Channel group.
Adc_HwTriggerSignalType Adc_HwTriggerSignal;
//linear or circular buffer (for streaming)
Adc_StreamBufferModeType Adc_StreamBufferMode;
//Group Priority
Adc_GroupPriorityType GroupPriority;
#endif
}Adc_ConfigType;

/*=================================================================
                      FUNCTION PROTOTYPES
==================================================================*/
/**
 * @brief   Initializes the Adc Driver module.
 * @details The function Adc_Init shall initialize the ADC hardware units and
 *          driver according to the configuration set referenced by ConfigPtr.
 * 
 * @post    Adc_Init() must be called before all other Adc Driver module's 
 *          functions otherwise no operation can occur on the Adc.
 *
 * @param[in] ConfigPtr     A pointer to the structure which contains
 *                          initialization parameters.
 */
void Adc_Init(Adc_ConfigType*);



/**
 * @brief   Reads the group conversion result of the last completed conversion round of
 *          requested group and stores the channel values at DataBufferPtr address
 * @details The function Adc_ReadGroup shall read the raw converted values without
 *          further scaling. The read values shall be aligned according the
 *          configuration parameter setting of ADC_RESULT_ALIGNMENT
 * 
 * @pre     @p Adc_Init() must have been called first.
 *
 * @param[in] Group              Numeric ID of requested ADC channel group.
 * @param[out] DataBufferPtr     ADC results of all channels of the selected group are
 *                               stored in the data buffer addressed with the pointer. 
 * @param[out] Std_ReturnType    E_OK: Read command has been completed 
  *                              E_NOT_OK: Read command has not been completed
 */
#if (ADC_READ_GP_CAPABILITY==STD_ON)
Std_ReturnType Adc_ReadGroup ( Adc_GroupType Group, Adc_ValueGroupType* DataBufferPtr );
#endif


 /**
 * @brief   Starts/Stops the conversion of all channels of requested ADC Channel group.
 * @details The function Adc_StartGroupConversion/Adc_StopGroupConversion shall start 
  *         the conversion of all channels of the requested ADC Channel group. 
 *          Depending on the group configuration, one-shot or continuous conversion
 * 
 * @pre     @p Adc_Init() must have been called first.
 *
 * @param[in] Group              Numeric ID of requested ADC channel group.
 */
#if (ADC_ENABLE_START_STOP_GROUP_API==STD_ON)		
void Adc_StartGroupConversion ( Adc_GroupType groupId );
void Adc_StopGroupConversion ( Adc_GroupType groupId );
#endif



 /**
 * @brief   Returns all ADC HW Units to a state comparable to their power on reset state.
 * @details The function Adc_DeInit shall return all ADC HW Units to a state
  *         comparable to their power on reset state
 * 
 * @pre     @p Adc_Init() must have been called first.
 *
 */
#if (ADC_DEINIT_API==STD_ON)
void Adc_DeInit (void);
#endif



 /**
 * @brief   Returns the conversion status of the requested ADC Channel group.
 * @details The function Adc_GetGroupStatus shall return the conversion status
  *          of the requested ADC Channel group.
 * 
 * @pre     @p Adc_Init() must have been called first.
 *
 * @param[in] Group              Numeric ID of requested ADC channel group.
 * @param[out] Adc_StatusType    Conversion status for the requested group.
 */
#if (ADC_GET_STATUS_API==STD_ON)
Adc_StatusType Adc_GetStatus();
#endif



 /**
 * @brief   
 * @details 
 * 
 * @pre     @p Adc_Init() must have been called first.
 *
 * @param[in] Group              Numeric ID of requested ADC channel group.
 * @param[in] DataBufferPtr      pointer to result data buffer
 * @param[out] Std_ReturnType     E_OK: setup has been completed 
 *                                E_NOT_OK: setup has not been completed
 */
#if (ADC_SETUP_BUFF_API==STD_ON)
Std_ReturnType Adc_SetupResultBuffer( Adc_GroupType Group, Adc_ValueGroupType* DataBufferPtr ); 
#endif



/**
 * @brief   Enables/Disables the notification mechanism for requested ADC Channel group.
 * @details The function Adc_EnableGroupNotification/Adc_DisableGroupNotification shall 
 *          enable the notification mechanism for the requested ADC Channel group.?
 * 
 * @pre     @p Adc_Init() must have been called first.
 *
 * @param[in] Group              Numeric ID of requested ADC channel group.
 */
#if (ADC_GRP_NOTIF_CAPABILITY==STD_ON)		
void Adc_EnableGroupNotification(Adc_GroupType groupId);
void Adc_DisableGroupNotification(Adc_GroupType groupId);
#endif



#endif  /*Adc.h*/
