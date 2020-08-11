

#include "../../rte/Rte_HeightSensor.h"


/**
 *
 * Runnable HeightSensor_GetPosition
 *
 * Triggered By:
 *  - OperationInvokedEventImpl.OIE_ppHeightSensor_GetPosition
 *
 */

void HeightSensor_GetPosition (SensorPositionType* Position)
{
	IoPositionSensorReadingType position;

	/* Server Call Points */
	(void)Rte_Call_rpIOGetHeight_IOGet(&position);
	
	if(position == 0)
	{
		*Position = SENSOR_POSITION_STEP_0;
	}
	else if(position > 0 && position <= 64)
	{
		*Position = SENSOR_POSITION_STEP_1;
	}
	else if(position > 64 && position<= 192)
	{
		*Position = SENSOR_POSITION_STEP_2;
	}
	else
	{
		*Position = SENSOR_POSITION_STEP_3;
	}
}

