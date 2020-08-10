/**
 *
 * \brief Sprints AUTOSAR Master Class - SeatCtrlApp
 * \author Hassan Farahat
 *
 * For any inquiries: hassan.m.farahat@gmail.com
 *
 */
 
#ifndef VFB_H
#define VFB_H

#include "../common/Std_Types.h"

typedef enum
{
	VFB_BTN_STATE_INIT 		= 0,
	VFB_BTN_STATE_MINUS 	= 1,
	VFB_BTN_STATE_PLUS 		= 2
} VFB_MultiStateBtnEnum;

typedef enum
{
	VFB_BTN_STATE_MANUAL 	= 0,
	VFB_BTN_STATE_AUTO 		= 1
} VFB_AutoStateBtnEnum;

typedef enum
{
	VFB_MOTOR_REVERSE		= 0,
	VFB_MOTOR_FORWARD		= 1
} VFB_MotorStateEnum;

/* Position Buttons */
VFB_MultiStateBtnEnum 		VFB_HeightBtnState;
VFB_MultiStateBtnEnum 		VFB_InclineBtnState;
VFB_MultiStateBtnEnum 		VFB_SlideBtnState;

/* Auto Button */
VFB_AutoStateBtnEnum 		VFB_AutoBtnState;

/* Position Motors */
VFB_MotorStateEnum 			VFB_HeightMotorState;
VFB_MotorStateEnum 			VFB_InclineMotorState;
VFB_MotorStateEnum 			VFB_SlideMotorState;

/* Position Sensors */
uint8 						VFB_HeightPosition;
uint8 						VFB_InclinePosition;
uint8 						VFB_SlidePosition;

/* Weight Sensor */
uint16 						VFB_DriverWeight;

#endif
