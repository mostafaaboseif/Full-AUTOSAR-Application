/**
 *
 * \brief Sprints AUTOSAR Master Class - SeatCtrlApp
 * \author Hassan Farahat
 *
 * For any inquiries: hassan.m.farahat@gmail.com
 *
 */
 
#ifndef RTE_HEIGHTSENSOR_H
#define RTE_HEIGHTSENSOR_H

#include "Rte_HeightSensor_Type.h"

/* RTE APIs Prototype Declaration */
Std_ReturnType Rte_Call_HeightSensor_rpIOGetHeight_IOGet(IoPositionSensorReadingType* position);

#define Rte_Call_rpIOGetHeight_IOGet 				Rte_Call_HeightSensor_rpIOGetHeight_IOGet

/* Runnables Prototype Declaration */
void HeightSensor_GetPosition(SensorPositionType* Position);

#endif