/**
 *
 * \brief Sprints AUTOSAR Master Class - SeatCtrlApp
 * \author Hassan Farahat
 *
 * For any inquiries: hassan.m.farahat@gmail.com
 *
 */
 
#ifndef RTE_INCLINESENSOR_H
#define RTE_INCLINESENSOR_H

#include "Rte_InclineSensor_Type.h"

/* RTE APIs Prototype Declaration */
Std_ReturnType Rte_Call_InclineSensor_rpIOGetIncline_IOGet(IoPositionSensorReadingType* position);

#define Rte_Call_rpIOGetIncline_IOGet 				Rte_Call_InclineSensor_rpIOGetIncline_IOGet

/* Runnables Prototype Declaration */
void InclineSensor_GetPosition(SensorPositionType* Position);

#endif