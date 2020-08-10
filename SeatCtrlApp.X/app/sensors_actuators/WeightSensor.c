/**
 *
 * \file WeightSensor_Template.c
 * \brief Rte Component Template for AUTOSAR SWC: WeightSensor
 *
 * \author Sprints AUTOSAR Authoring Tool (SAAT) v1.0.2
 * Generated on 7/14/2020 11:53 PM
 *
 * For any inquiries: hassan.m.farahat@gmail.com
 *
 */

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

