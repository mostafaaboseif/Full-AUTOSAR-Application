

#include "../../rte/Rte_WeightSensor.h"


/**
 *
 * Runnable WeightSensor_GetWeight
 *
 * Triggered By:
 *  - OperationInvokedEventImpl.OIE_ppWeightSensor_GetWeight
 *
 */

void WeightSensor_GetWeight (SensorWeightType* Weight)
{
	IoWeightSensorReadingType weight;

	/* Server Call Points */
	(void)Rte_Call_rpIOGetWeight_IOGet(&weight);
	
	*Weight = (SensorWeightType)(weight/100);
}

