/**
 *
 * \brief Sprints AUTOSAR Master Class - SeatCtrlApp
 * \author Hassan Farahat
 *
 * For any inquiries: hassan.m.farahat@gmail.com
 *
 */

#include "Rte_Type.h"
#include "Rte_Main.h"

#include "Rte_HeightMotor.h"
#include "Rte_HeightSensor.h"
#include "Rte_HMI.h"
#include "Rte_InclineMotor.h"
#include "Rte_InclineSensor.h"
#include "Rte_IoHwAbs.h"
#include "Rte_SeatManager.h"
#include "Rte_SlideMotor.h"
#include "Rte_SlideSensor.h"
#include "Rte_WeightSensor.h"

#include "../bsw/static/Com.h"
#include "../bsw/static/Os.h"

/* ***************************************************** */
/* 														 */
/* Sender Receiver Variables 							 */
/* 														 */
/* ***************************************************** */

static Rte_SenderReceiverBuffersType Rte_SenderReceiverBuffers;
static Rte_SenderReceiverFlagsType Rte_SenderReceiverFlags;

/* ***************************************************** */
/* 														 */
/* Mode Switch Variables 								 */
/* 														 */
/* ***************************************************** */

static uint8 SeatCtrlMode_CurrentMode 		= RTE_MODE_SeatCtrlMode_INIT;

/* Mode Disabling Handling */
#define IsModeDisablingActive_0		\
(SeatCtrlMode_CurrentMode == RTE_MODE_SeatCtrlMode_INIT || SeatCtrlMode_CurrentMode == RTE_MODE_SeatCtrlMode_MANUAL)

#define IsModeDisablingActive_1		\
(SeatCtrlMode_CurrentMode == RTE_MODE_SeatCtrlMode_INIT || SeatCtrlMode_CurrentMode == RTE_MODE_SeatCtrlMode_AUTO)

/* ***************************************************** */
/* 														 */
/* Sender Receiver APIs - IntraECU 					 */
/* 														 */
/* ***************************************************** */

Std_ReturnType Rte_Write_HMI_ppSeatCtrlBtns_HeightBtnState(MultiStateBtnType HeightBtnState)
{
	Rte_SenderReceiverBuffers.HeightBtnState = HeightBtnState;
	
	Os_SetEvent(OsTaskId_AppTsk, OsConf_OsEvent_AppTsk_DRE_SeatManager_HeightBtnState);
	
	return RTE_E_OK; 
}

Std_ReturnType Rte_Read_SeatManager_rpSeatCtrlBtns_HeightBtnState(MultiStateBtnType* HeightBtnState)
{
	*HeightBtnState = Rte_SenderReceiverBuffers.HeightBtnState;
	return RTE_E_OK; 
}

Std_ReturnType Rte_Write_HMI_ppSeatCtrlBtns_InclineBtnState(MultiStateBtnType InclineBtnState)
{
	Rte_SenderReceiverBuffers.InclineBtnState = InclineBtnState;
	
	Os_SetEvent(OsTaskId_AppTsk, OsConf_OsEvent_AppTsk_DRE_SeatManager_InclineBtnState);
	
	return RTE_E_OK; 
}

Std_ReturnType Rte_Read_SeatManager_rpSeatCtrlBtns_InclineBtnState(MultiStateBtnType* InclineBtnState)
{
	*InclineBtnState = Rte_SenderReceiverBuffers.InclineBtnState;
	return RTE_E_OK; 
}

Std_ReturnType Rte_Write_HMI_ppSeatCtrlBtns_SlideBtnState(MultiStateBtnType SlideBtnState)
{
	Rte_SenderReceiverBuffers.SlideBtnState = SlideBtnState;
	
	Os_SetEvent(OsTaskId_AppTsk, OsConf_OsEvent_AppTsk_DRE_SeatManager_SlideBtnState);
	//to set event
	
	return RTE_E_OK; 
}

Std_ReturnType Rte_Read_SeatManager_rpSeatCtrlBtns_SlideBtnState(MultiStateBtnType* SlideBtnState)
{
	*SlideBtnState = Rte_SenderReceiverBuffers.SlideBtnState;
	return RTE_E_OK; 
}

/* ***************************************************** */
/* 														 */
/* Sender Receiver APIs - InterECU 					 */
/* 														 */
/* ***************************************************** */

//write and read from buffers
Std_ReturnType Rte_Read_HMI_rpSeatCtrlData_Height(uint8* Height)
{
	(void)Com_ReceiveSignal(ComConf_ComSignal_HeightBtnSignal, (void*)Height);
	//signal from data mapping
	
	Rte_SenderReceiverFlags.Height.IsUpdated = FALSE;
	
	return Rte_SenderReceiverFlags.Height.Status;
}

boolean Rte_IsUpdated_HMI_rpSeatCtrlData_Height(void)
{
	return Rte_SenderReceiverFlags.Height.IsUpdated;
}

Std_ReturnType Rte_Read_HMI_rpSeatCtrlData_Incline(uint8* Incline)
{
	(void)Com_ReceiveSignal(ComConf_ComSignal_InclineBtnSignal, (void*)Incline);
	
	Rte_SenderReceiverFlags.Incline.IsUpdated = FALSE;
	
	return Rte_SenderReceiverFlags.Incline.Status;
}

boolean Rte_IsUpdated_HMI_rpSeatCtrlData_Incline(void)
{
	return Rte_SenderReceiverFlags.Incline.IsUpdated;
}

Std_ReturnType Rte_Read_HMI_rpSeatCtrlData_Slide(uint8* Slide)
{
	(void)Com_ReceiveSignal(ComConf_ComSignal_SlideBtnSignal, (void*)Slide);
	
	Rte_SenderReceiverFlags.Slide.IsUpdated = FALSE;
	
	return Rte_SenderReceiverFlags.Slide.Status;
}

boolean Rte_IsUpdated_HMI_rpSeatCtrlData_Slide(void)
{
	return Rte_SenderReceiverFlags.Slide.IsUpdated;
}

Std_ReturnType Rte_Read_HMI_rpSeatModeBtn_SeatModeBtn(SeatModeBtnType* SeatModeBtn)
{
	(void)Com_ReceiveSignal(ComConf_ComSignal_AutoBtnSignal, (void*)SeatModeBtn);
	return RTE_E_OK;
}

/* ***************************************************** */
/* 														 */
/* Mode Switch APIs					 					 */
/* 														 */
/* ***************************************************** */

Std_ReturnType Rte_Switch_HMI_ppSeatCtrlMode_SeatCtrlMode(uint8 SeatCtrlMode)
{
	SeatCtrlMode_CurrentMode = SeatCtrlMode;
	return RTE_E_OK; 
}

/* ***************************************************** */
/* 														 */
/* Client Server APIs					 				 */
/* 														 */
/* ***************************************************** */

//simple because 1 server 1 client, no need for protection
Std_ReturnType Rte_Call_HeightMotor_rpIOSetHeight_IOSetForward(void)
{
	IoHwAbs_ECUSetForward_Height();
	return RTE_E_OK;
}

Std_ReturnType Rte_Call_HeightMotor_rpIOSetHeight_IOSetReverse(void)
{
	IoHwAbs_ECUSetReverse_Height();
	return RTE_E_OK;
}

Std_ReturnType Rte_Call_InclineMotor_rpIOSetIncline_IOSetForward(void)
{
	IoHwAbs_ECUSetForward_Incline();
	return RTE_E_OK;
}

Std_ReturnType Rte_Call_InclineMotor_rpIOSetIncline_IOSetReverse(void)
{
	IoHwAbs_ECUSetReverse_Incline();
	return RTE_E_OK;
}

Std_ReturnType Rte_Call_SlideMotor_rpIOSetSlide_IOSetForward(void)
{
	IoHwAbs_ECUSetForward_Slide();
	return RTE_E_OK;
}

Std_ReturnType Rte_Call_SlideMotor_rpIOSetSlide_IOSetReverse(void)
{
	IoHwAbs_ECUSetReverse_Slide();
	return RTE_E_OK;
}

Std_ReturnType Rte_Call_HeightSensor_rpIOGetHeight_IOGet(IoPositionSensorReadingType* position)
{
	IoHwAbs_ECUGet_Height(position);
	return RTE_E_OK;
}

Std_ReturnType Rte_Call_InclineSensor_rpIOGetIncline_IOGet(IoPositionSensorReadingType* position)
{
	IoHwAbs_ECUGet_Incline(position);
	return RTE_E_OK;
}

Std_ReturnType Rte_Call_SlideSensor_rpIOGetSlide_IOGet(IoPositionSensorReadingType* position)
{
	IoHwAbs_ECUGet_Slide(position);
	return RTE_E_OK;
}

Std_ReturnType Rte_Call_WeightSensor_rpIOGetWeight_IOGet(IoWeightSensorReadingType* weight)
{
	IoHwAbs_ECUGet_Weight(weight);
	return RTE_E_OK;
}

Std_ReturnType Rte_Call_SeatManager_rpHeightMotor_Move(StepMotorStepType Step)
{
	HeightMotor_Move(Step);
	return RTE_E_OK;
}

Std_ReturnType Rte_Call_SeatManager_rpInclineMotor_Move(StepMotorStepType Step)
{
	InclineMotor_Move(Step);
	return RTE_E_OK;
}

Std_ReturnType Rte_Call_SeatManager_rpSlideMotor_Move(StepMotorStepType Step)
{
	SlideMotor_Move(Step);
	return RTE_E_OK;
}

Std_ReturnType Rte_Call_SeatManager_rpHeightSensor_GetPosition(SensorPositionType* Position)
{
	HeightSensor_GetPosition(Position);
	return RTE_E_OK;
}

Std_ReturnType Rte_Call_SeatManager_rpInclineSensor_GetPosition(SensorPositionType* Position)
{
	InclineSensor_GetPosition(Position);
	return RTE_E_OK;
}

Std_ReturnType Rte_Call_SeatManager_rpSlideSensor_GetPosition(SensorPositionType* Position)
{
	SlideSensor_GetPosition(Position);
	return RTE_E_OK;
}

Std_ReturnType Rte_Call_SeatManager_rpWeightSensor_GetWeight(SensorWeightType* Weight)
{
	WeightSensor_GetWeight(Weight);
	return RTE_E_OK;
}

/* ***************************************************** */
/* 														 */
/* Com Callbacks Impl - InterECU					 	 */
/* 														 */
/* ***************************************************** */

void Rte_ComCbk_HeightBtnSignal(void)
{
	Rte_SenderReceiverFlags.Height.IsUpdated = TRUE;
	Rte_SenderReceiverFlags.Height.Status = RTE_E_OK;
}

void Rte_ComCbk_RxTout_HeightBtnSignal(void)
{
	Rte_SenderReceiverFlags.Height.Status = RTE_E_MAX_AGE_EXCEDDED;
}

void Rte_ComCbk_InclineBtnSignal(void)
{
	Rte_SenderReceiverFlags.Incline.IsUpdated = TRUE;
	Rte_SenderReceiverFlags.Incline.Status = RTE_E_OK;
}

void Rte_ComCbk_RxTout_InclineBtnSignal(void)
{
	Rte_SenderReceiverFlags.Incline.Status = RTE_E_MAX_AGE_EXCEDDED;
}

void Rte_ComCbk_SlideBtnSignal(void)
{
	Rte_SenderReceiverFlags.Slide.IsUpdated = TRUE;
	Rte_SenderReceiverFlags.Slide.Status = RTE_E_OK;
}

void Rte_ComCbk_RxTout_SlideBtnSignal(void)
{
	Rte_SenderReceiverFlags.Slide.Status = RTE_E_MAX_AGE_EXCEDDED;
}

void Rte_ComCbk_AutoBtnSignal(void)
{
	Os_SetEvent(OsTaskId_AppTsk, OsConf_OsEvent_AppTsk_DRE_HMI_SeatModeBtn);
}

/* ***************************************************** */
/* 														 */
/* Tasks Impl					 						 */
/* 														 */
/* ***************************************************** */
//every 100 ms (see Rte_Start)
void CyclicTask(void)
{
	static uint8 TaskCounter = 0;
	
/*  These functions must be uncommented before flashing, 
  they are commented here because they are recursive functions; 
  the compiler XC8 doesn't allow recursion which causes an error */
//	Com_MainFunction();
//	HMI_MainFunction();
	
	if(TaskCounter % 2 == 0)
	{
		if(!IsModeDisablingActive_0)
		{
			SeatManager_AutoHeight();
		}
	
		if(!IsModeDisablingActive_0)
		{
			SeatManager_AutoIncline();
		}
	
		if(!IsModeDisablingActive_0)
		{
			SeatManager_AutoSlide();
		}
	}
	
	TaskCounter = (TaskCounter + 1) % 2;
	
	Os_TerminateTask();
}

void AppTsk(void)
{
	EventMaskType CurrentEvents = 0;
	
	/* Wait for events */
	Os_WaitEvent(OsConf_OsEvent_AppTsk_DRE_HMI_SeatModeBtn | OsConf_OsEvent_AppTsk_DRE_SeatManager_HeightBtnState | OsConf_OsEvent_AppTsk_DRE_SeatManager_InclineBtnState | OsConf_OsEvent_AppTsk_DRE_SeatManager_SlideBtnState);
	
	/* Get the set events */
	Os_GetEvent(OsTaskId_AppTsk, &CurrentEvents);
	
	/* Clear the events */
	Os_ClearEvent(CurrentEvents);
	
	if((CurrentEvents & OsConf_OsEvent_AppTsk_DRE_HMI_SeatModeBtn) != 0)
	{
		HMI_SeatModeChanged();
	}
	
	if((CurrentEvents & OsConf_OsEvent_AppTsk_DRE_SeatManager_HeightBtnState) != 0)
	{
		if(!IsModeDisablingActive_1)
		{
			SeatManager_SetHeight();
		}
	}
	
	if((CurrentEvents & OsConf_OsEvent_AppTsk_DRE_SeatManager_InclineBtnState) != 0)
	{
		if(!IsModeDisablingActive_1)
		{
			SeatManager_SetIncline();
		}
	}
	
	if((CurrentEvents & OsConf_OsEvent_AppTsk_DRE_SeatManager_SlideBtnState) != 0)
	{
		if(!IsModeDisablingActive_1)
		{
			SeatManager_SetSlide();
		}
	}
	
	Os_TerminateTask();
}

/* ***************************************************** */
/* 														 */
/* RTE State Machine APIs					 			 */
/* 														 */
/* ***************************************************** */

Std_ReturnType Rte_Start()
{
	Rte_SenderReceiverFlags.Height.IsUpdated = FALSE;
	Rte_SenderReceiverFlags.Height.Status = RTE_E_OK;
	Rte_SenderReceiverFlags.Incline.IsUpdated = FALSE;
	Rte_SenderReceiverFlags.Incline.Status = RTE_E_OK;
	Rte_SenderReceiverFlags.Slide.IsUpdated = FALSE;
	Rte_SenderReceiverFlags.Slide.Status = RTE_E_OK;
	Rte_SenderReceiverBuffers.HeightBtnState = 0;
	Rte_SenderReceiverBuffers.InclineBtnState = 0;
	Rte_SenderReceiverBuffers.SlideBtnState = 0;
	
	Os_SetRelAlarm(OsConf_OsAlarm_Rte_Alarm_CyclicTask_100ms, 0, 100);
	
	return RTE_E_OK;
}

Std_ReturnType Rte_Stop()
{
	Os_CancelAlarm(OsConf_OsAlarm_Rte_Alarm_CyclicTask_100ms);
	
	return RTE_E_OK;
}

