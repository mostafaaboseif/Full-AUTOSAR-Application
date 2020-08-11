

#include "../../rte/Rte_IoHwAbs.h"

/* For reading from Position Sensors */
#include "../../bsw/static/Adc.h"

/* For reading from Weight Sesnor */
#include "../../bsw/static/Spi.h"

/* For driving Motors (height, slide, incline) */
#include "../../bsw/static/Dio.h"

/* Shall be replaced with Inter Runnable Variable */
/* Internal variables to read Position sensors in one Adc Group */
static Adc_ValueGroupType IoHwAb_PositionSensorsReadings[ADC_GR0_NUM_CHANNELS] =
{
   /* Height */
   0,
   /* Incline */
   0,
   /* Slide */
   0
};


/**
 *
 * Runnable IoHwAbs_ECUGet_Height
 *
 * Triggered By:
 *  - OperationInvokedEventImpl.OIE_ppIOGetHeight_IOGet
 *
 */

void IoHwAbs_ECUGet_Height (IoPositionSensorReadingType* position)
{
	Std_ReturnType status;

	status = Adc_ReadGroup(AdcConf_AdcGroup_PositionsSensorsGrp, IoHwAb_PositionSensorsReadings);
	
	if(status == E_OK)
	{
		/* IoPositionSensorReadingType has to be adjusted in arxml file */
		/* as per Adc resolution "Adc_ValueGroupType can be uint8 or uint16" */
		*position = (IoPositionSensorReadingType)IoHwAb_PositionSensorsReadings[0];
	}
	else
	{
		/* Operation shall be updated to return failure error code */
	}
}


/**
 *
 * Runnable IoHwAbs_ECUGet_Incline
 *
 * Triggered By:
 *  - OperationInvokedEventImpl.OIE_ppIOGetIncline_IOGet
 *
 */

void IoHwAbs_ECUGet_Incline (IoPositionSensorReadingType* position)
{
	Std_ReturnType status;

	status = Adc_ReadGroup(AdcConf_AdcGroup_PositionsSensorsGrp, IoHwAb_PositionSensorsReadings);
	
	if(status == E_OK)
	{
		/* IoPositionSensorReadingType has to be adjusted in arxml file */
		/* as per Adc resolution "Adc_ValueGroupType can be uint8 or uint16" */
		*position = (IoPositionSensorReadingType)IoHwAb_PositionSensorsReadings[1];
	}
	else
	{
		/* Operation shall be updated to return failure error code */
	}
}


/**
 *
 * Runnable IoHwAbs_ECUGet_Slide
 *
 * Triggered By:
 *  - OperationInvokedEventImpl.OIE_ppIOGetSlide_IOGet
 *
 */

void IoHwAbs_ECUGet_Slide (IoPositionSensorReadingType* position)
{
	Std_ReturnType status;

	status = Adc_ReadGroup(AdcConf_AdcGroup_PositionsSensorsGrp, IoHwAb_PositionSensorsReadings);
	
	if(status == E_OK)
	{
		/* IoPositionSensorReadingType has to be adjusted in arxml file */
		/* as per Adc resolution "Adc_ValueGroupType can be uint8 or uint16" */
		*position = (IoPositionSensorReadingType)IoHwAb_PositionSensorsReadings[2];
	}
	else
	{
		/* Operation shall be updated to return failure error code */
	}
}


/**
 *
 * Runnable IoHwAbs_ECUGet_Weight
 *
 * Triggered By:
 *  - OperationInvokedEventImpl.OIE_ppIOGetWeight_IOGet
 *
 */

void IoHwAbs_ECUGet_Weight (IoWeightSensorReadingType* weight)
{
	Std_ReturnType status;
	Spi_DataBufferType spiData;

	status = Spi_ReadIB(SpiConf_SpiChannel_WeightSensor, &spiData);
	
	if(status == E_OK)
	{
		/* IoWeightSensorReadingType has to be adjusted in arxml file */
		/* as per Spi_DataType "can be uint8 or uint16" */
		*weight = (IoWeightSensorReadingType)spiData;
	}
	else
	{
		/* Operation shall be updated to return failure error code */
	}
}


/**
 *
 * Runnable IoHwAbs_ECUSetForward_Height
 *
 * Triggered By:
 *  - OperationInvokedEventImpl.OIE_ppIOSetHeight_IOSetForward
 *
 */

void IoHwAbs_ECUSetForward_Height (void)
{
	/* Write HIGH to move forward */
	Dio_WriteChannel(DioConfg_DioChannel_HeightMotorCh, STD_HIGH); 
}


/**
 *
 * Runnable IoHwAbs_ECUSetForward_Incline
 *
 * Triggered By:
 *  - OperationInvokedEventImpl.OIE_ppIOSetIncline_IOSetForward
 *
 */

void IoHwAbs_ECUSetForward_Incline (void)
{
	/* Write HIGH to move forward */
	Dio_WriteChannel(DioConfg_DioChannel_InclineMotorCh, STD_HIGH); 
}


/**
 *
 * Runnable IoHwAbs_ECUSetForward_Slide
 *
 * Triggered By:
 *  - OperationInvokedEventImpl.OIE_ppIOSetSlide_IOSetForward
 *
 */

void IoHwAbs_ECUSetForward_Slide (void)
{
	/* Write HIGH to move forward */
	Dio_WriteChannel(DioConfg_DioChannel_SlideMotorCh, STD_HIGH); 
}


/**
 *
 * Runnable IoHwAbs_ECUSetReverse_Height
 *
 * Triggered By:
 *  - OperationInvokedEventImpl.OIE_ppIOSetHeight_IOSetReverse
 *
 */

void IoHwAbs_ECUSetReverse_Height (void)
{
	/* Write LOW to move reverse */
	Dio_WriteChannel(DioConfg_DioChannel_HeightMotorCh, STD_LOW); 
}


/**
 *
 * Runnable IoHwAbs_ECUSetReverse_Incline
 *
 * Triggered By:
 *  - OperationInvokedEventImpl.OIE_ppIOSetIncline_IOSetReverse
 *
 */

void IoHwAbs_ECUSetReverse_Incline (void)
{
	/* Write LOW to move reverse */
	Dio_WriteChannel(DioConfg_DioChannel_InclineMotorCh, STD_LOW); 
}


/**
 *
 * Runnable IoHwAbs_ECUSetReverse_Slide
 *
 * Triggered By:
 *  - OperationInvokedEventImpl.OIE_ppIOSetSlide_IOSetReverse
 *
 */

void IoHwAbs_ECUSetReverse_Slide (void)
{
	/* Write LOW to move reverse */
	Dio_WriteChannel(DioConfg_DioChannel_SlideMotorCh, STD_LOW); 
}

