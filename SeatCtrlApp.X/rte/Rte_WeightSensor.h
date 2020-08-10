/**
 *
 * \brief Sprints AUTOSAR Master Class - SeatCtrlApp
 * \author Hassan Farahat
 *
 * For any inquiries: hassan.m.farahat@gmail.com
 *
 */
 
#ifndef RTE_WEIGHTSENSOR_H
#define RTE_WEIGHTSENSOR_H

#include "Rte_WeightSensor_Type.h"

/* RTE APIs Prototype Declaration */
Std_ReturnType Rte_Call_WeightSensor_rpIOGetWeight_IOGet(IoWeightSensorReadingType* weight);

#define Rte_Call_rpIOGetWeight_IOGet 				Rte_Call_WeightSensor_rpIOGetWeight_IOGet

/* Runnables Prototype Declaration */
void WeightSensor_GetWeight(SensorWeightType* Weight);

#endif