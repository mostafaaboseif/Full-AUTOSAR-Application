/**
 *
 * \brief Sprints AUTOSAR Master Class - SeatCtrlApp
 * \author Hassan Farahat
 *
 * For any inquiries: hassan.m.farahat@gmail.com
 *
 */
 
#ifndef RTE_INCLINEMOTOR_H
#define RTE_INCLINEMOTOR_H

#include "Rte_InclineMotor_Type.h"

/* RTE APIs Prototype Declaration */
Std_ReturnType Rte_Call_InclineMotor_rpIOSetIncline_IOSetForward();
Std_ReturnType Rte_Call_InclineMotor_rpIOSetIncline_IOSetReverse();

#define Rte_Call_rpIOSetIncline_IOSetForward 		Rte_Call_InclineMotor_rpIOSetIncline_IOSetForward
#define Rte_Call_rpIOSetIncline_IOSetReverse 		Rte_Call_InclineMotor_rpIOSetIncline_IOSetReverse

/* Runnables Prototype Declaration */
void InclineMotor_Move(StepMotorStepType Step);

#endif