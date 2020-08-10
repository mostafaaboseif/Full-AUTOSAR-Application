/**
 *
 * \brief Sprints AUTOSAR Master Class - SeatCtrlApp
 * \author Hassan Farahat
 *
 * For any inquiries: hassan.m.farahat@gmail.com
 *
 */
 
#ifndef RTE_SLIDEMOTOR_H
#define RTE_SLIDEMOTOR_H

#include "Rte_SlideMotor_Type.h"

/* RTE APIs Prototype Declaration */
Std_ReturnType Rte_Call_SlideMotor_rpIOSetSlide_IOSetForward();
Std_ReturnType Rte_Call_SlideMotor_rpIOSetSlide_IOSetReverse();

#define Rte_Call_rpIOSetSlide_IOSetForward 			Rte_Call_SlideMotor_rpIOSetSlide_IOSetForward
#define Rte_Call_rpIOSetSlide_IOSetReverse 			Rte_Call_SlideMotor_rpIOSetSlide_IOSetReverse

/* Runnables Prototype Declaration */
void SlideMotor_Move(StepMotorStepType Step);

#endif