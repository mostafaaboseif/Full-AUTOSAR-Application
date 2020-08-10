/**
 *
 * \brief Sprints AUTOSAR Master Class - SeatCtrlApp
 * \author Hassan Farahat
 *
 * For any inquiries: hassan.m.farahat@gmail.com
 *
 */
 
#include "vfb.h"

/* Position Buttons */
VFB_MultiStateBtnEnum 		VFB_HeightBtnState 		= VFB_BTN_STATE_INIT;
VFB_MultiStateBtnEnum 		VFB_InclineBtnState		= VFB_BTN_STATE_INIT;
VFB_MultiStateBtnEnum 		VFB_SlideBtnState		= VFB_BTN_STATE_INIT;

/* Auto Button */
VFB_AutoStateBtnEnum 		VFB_AutoBtnState		= VFB_BTN_STATE_MANUAL;

/* Position Motors */
VFB_MotorStateEnum 			VFB_HeightMotorState	= VFB_MOTOR_FORWARD;
VFB_MotorStateEnum 			VFB_InclineMotorState	= VFB_MOTOR_FORWARD;
VFB_MotorStateEnum 			VFB_SlideMotorState		= VFB_MOTOR_FORWARD;

/* Position Sensors */
uint8 						VFB_HeightPosition		= 0;
uint8 						VFB_InclinePosition		= 0;
uint8 						VFB_SlidePosition		= 0;

/* Weight Sensor */
uint16 						VFB_DriverWeight		= 0;
