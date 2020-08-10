# 1 "rte/Rte.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "rte/Rte.c" 2
# 10 "rte/Rte.c"
# 1 "rte/Rte_Type.h" 1
# 13 "rte/Rte_Type.h"
# 1 "rte/../common/Std_Types.h" 1



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\stdint.h" 1 3
# 13 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\stdint.h" 3
typedef signed char int8_t;






typedef signed int int16_t;







typedef __int24 int24_t;







typedef signed long int int32_t;
# 52 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint8_t;





typedef unsigned int uint16_t;






typedef __uint24 uint24_t;






typedef unsigned long int uint32_t;
# 88 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\stdint.h" 3
typedef signed char int_least8_t;







typedef signed int int_least16_t;
# 109 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\stdint.h" 3
typedef __int24 int_least24_t;
# 118 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\stdint.h" 3
typedef signed long int int_least32_t;
# 136 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint_least8_t;






typedef unsigned int uint_least16_t;
# 154 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\stdint.h" 3
typedef __uint24 uint_least24_t;







typedef unsigned long int uint_least32_t;
# 181 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\stdint.h" 3
typedef signed char int_fast8_t;






typedef signed int int_fast16_t;
# 200 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\stdint.h" 3
typedef __int24 int_fast24_t;







typedef signed long int int_fast32_t;
# 224 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint_fast8_t;





typedef unsigned int uint_fast16_t;
# 240 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\stdint.h" 3
typedef __uint24 uint_fast24_t;






typedef unsigned long int uint_fast32_t;
# 268 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\stdint.h" 3
typedef int32_t intmax_t;
# 282 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\stdint.h" 3
typedef uint32_t uintmax_t;






typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 4 "rte/../common/Std_Types.h" 2


typedef unsigned char bool;
# 19 "rte/../common/Std_Types.h"
typedef unsigned char uint8;
typedef signed char sint8;
typedef unsigned short uint16;
typedef signed short sint16;
typedef unsigned long uint32;
typedef signed long sint32;
typedef unsigned long long uint64;
typedef signed long long sint64;
typedef float float32;
typedef double float64;
typedef unsigned char boolean;
# 38 "rte/../common/Std_Types.h"
typedef uint8_t Std_ReturnType;
# 54 "rte/../common/Std_Types.h"
enum {
Pin0,Pin1,Pin2,Pin3,Pin4,Pin5,Pin6,Pin7
};
# 13 "rte/Rte_Type.h" 2


typedef uint8 StepMotorStepType;
typedef uint8 MultiStateBtnType;
typedef uint8 SensorPositionType;
typedef uint8 SensorWeightType;
typedef uint8 IoPositionSensorReadingType;
typedef uint16 IoWeightSensorReadingType;
typedef uint8 SeatModeBtnType;
# 10 "rte/Rte.c" 2

# 1 "rte/Rte_Main.h" 1
# 17 "rte/Rte_Main.h"
typedef struct
{
 boolean IsUpdated;
 Std_ReturnType Status;
} Rte_DataFlagsType;

typedef struct
{
 Rte_DataFlagsType Height;
 Rte_DataFlagsType Incline;
 Rte_DataFlagsType Slide;
} Rte_SenderReceiverFlagsType;

typedef struct
{
 MultiStateBtnType HeightBtnState;
 MultiStateBtnType InclineBtnState;
 MultiStateBtnType SlideBtnState;
} Rte_SenderReceiverBuffersType;

Std_ReturnType Rte_Start(void);
Std_ReturnType Rte_Stop(void);
# 11 "rte/Rte.c" 2


# 1 "rte/Rte_HeightMotor.h" 1
# 13 "rte/Rte_HeightMotor.h"
# 1 "rte/Rte_HeightMotor_Type.h" 1
# 13 "rte/Rte_HeightMotor.h" 2



Std_ReturnType Rte_Call_HeightMotor_rpIOSetHeight_IOSetForward();
Std_ReturnType Rte_Call_HeightMotor_rpIOSetHeight_IOSetReverse();





void HeightMotor_Move(StepMotorStepType Step);
# 13 "rte/Rte.c" 2

# 1 "rte/Rte_HeightSensor.h" 1
# 13 "rte/Rte_HeightSensor.h"
# 1 "rte/Rte_HeightSensor_Type.h" 1
# 13 "rte/Rte_HeightSensor.h" 2



Std_ReturnType Rte_Call_HeightSensor_rpIOGetHeight_IOGet(IoPositionSensorReadingType* position);




void HeightSensor_GetPosition(SensorPositionType* Position);
# 14 "rte/Rte.c" 2

# 1 "rte/Rte_HMI.h" 1
# 13 "rte/Rte_HMI.h"
# 1 "rte/Rte_HMI_Type.h" 1
# 13 "rte/Rte_HMI.h" 2



Std_ReturnType Rte_Read_HMI_rpSeatCtrlData_Height(uint8* Height);
Std_ReturnType Rte_Read_HMI_rpSeatCtrlData_Incline(uint8* Incline);
Std_ReturnType Rte_Read_HMI_rpSeatCtrlData_Slide(uint8* Slide);
Std_ReturnType Rte_Read_HMI_rpSeatModeBtn_SeatModeBtn(SeatModeBtnType* SeatModeBtn);
boolean Rte_IsUpdated_HMI_rpSeatCtrlData_Height();
boolean Rte_IsUpdated_HMI_rpSeatCtrlData_Incline();
boolean Rte_IsUpdated_HMI_rpSeatCtrlData_Slide();
Std_ReturnType Rte_Write_HMI_ppSeatCtrlBtns_HeightBtnState(MultiStateBtnType HeightBtnState);
Std_ReturnType Rte_Write_HMI_ppSeatCtrlBtns_InclineBtnState(MultiStateBtnType InclineBtnState);
Std_ReturnType Rte_Write_HMI_ppSeatCtrlBtns_SlideBtnState(MultiStateBtnType SlideBtnState);
Std_ReturnType Rte_Switch_HMI_ppSeatCtrlMode_SeatCtrlMode(uint8 SeatCtrlMode);
# 41 "rte/Rte_HMI.h"
void HMI_MainFunction(void);
void HMI_SeatModeChanged(void);
# 15 "rte/Rte.c" 2

# 1 "rte/Rte_InclineMotor.h" 1
# 13 "rte/Rte_InclineMotor.h"
# 1 "rte/Rte_InclineMotor_Type.h" 1
# 13 "rte/Rte_InclineMotor.h" 2



Std_ReturnType Rte_Call_InclineMotor_rpIOSetIncline_IOSetForward();
Std_ReturnType Rte_Call_InclineMotor_rpIOSetIncline_IOSetReverse();





void InclineMotor_Move(StepMotorStepType Step);
# 16 "rte/Rte.c" 2

# 1 "rte/Rte_InclineSensor.h" 1
# 13 "rte/Rte_InclineSensor.h"
# 1 "rte/Rte_InclineSensor_Type.h" 1
# 13 "rte/Rte_InclineSensor.h" 2



Std_ReturnType Rte_Call_InclineSensor_rpIOGetIncline_IOGet(IoPositionSensorReadingType* position);




void InclineSensor_GetPosition(SensorPositionType* Position);
# 17 "rte/Rte.c" 2

# 1 "rte/Rte_IoHwAbs.h" 1
# 13 "rte/Rte_IoHwAbs.h"
# 1 "rte/Rte_IoHwAbs_Type.h" 1
# 13 "rte/Rte_IoHwAbs.h" 2





void IoHwAbs_ECUGet_Height(IoPositionSensorReadingType* position);
void IoHwAbs_ECUGet_Incline(IoPositionSensorReadingType* position);
void IoHwAbs_ECUGet_Slide(IoPositionSensorReadingType* position);
void IoHwAbs_ECUGet_Weight(IoWeightSensorReadingType* weight);
void IoHwAbs_ECUSetForward_Height(void);
void IoHwAbs_ECUSetForward_Incline(void);
void IoHwAbs_ECUSetForward_Slide(void);
void IoHwAbs_ECUSetReverse_Height(void);
void IoHwAbs_ECUSetReverse_Incline(void);
void IoHwAbs_ECUSetReverse_Slide(void);
# 18 "rte/Rte.c" 2

# 1 "rte/Rte_SeatManager.h" 1
# 13 "rte/Rte_SeatManager.h"
# 1 "rte/Rte_SeatManager_Type.h" 1
# 13 "rte/Rte_SeatManager.h" 2



Std_ReturnType Rte_Read_SeatManager_rpSeatCtrlBtns_HeightBtnState(MultiStateBtnType* HeightBtnState);
Std_ReturnType Rte_Read_SeatManager_rpSeatCtrlBtns_InclineBtnState(MultiStateBtnType* InclineBtnState);
Std_ReturnType Rte_Read_SeatManager_rpSeatCtrlBtns_SlideBtnState(MultiStateBtnType* SlideBtnState);
Std_ReturnType Rte_Call_SeatManager_rpHeightMotor_Move(StepMotorStepType Step);
Std_ReturnType Rte_Call_SeatManager_rpInclineMotor_Move(StepMotorStepType Step);
Std_ReturnType Rte_Call_SeatManager_rpSlideMotor_Move(StepMotorStepType Step);
Std_ReturnType Rte_Call_SeatManager_rpHeightSensor_GetPosition(SensorPositionType* Position);
Std_ReturnType Rte_Call_SeatManager_rpSlideSensor_GetPosition(SensorPositionType* Position);
Std_ReturnType Rte_Call_SeatManager_rpInclineSensor_GetPosition(SensorPositionType* Position);
Std_ReturnType Rte_Call_SeatManager_rpWeightSensor_GetWeight(SensorWeightType* Weight);
# 39 "rte/Rte_SeatManager.h"
void SeatManager_SetHeight(void);
void SeatManager_SetIncline(void);
void SeatManager_SetSlide(void);
void SeatManager_AutoHeight(void);
void SeatManager_AutoSlide(void);
void SeatManager_AutoIncline(void);
# 19 "rte/Rte.c" 2

# 1 "rte/Rte_SlideMotor.h" 1
# 13 "rte/Rte_SlideMotor.h"
# 1 "rte/Rte_SlideMotor_Type.h" 1
# 13 "rte/Rte_SlideMotor.h" 2



Std_ReturnType Rte_Call_SlideMotor_rpIOSetSlide_IOSetForward();
Std_ReturnType Rte_Call_SlideMotor_rpIOSetSlide_IOSetReverse();





void SlideMotor_Move(StepMotorStepType Step);
# 20 "rte/Rte.c" 2

# 1 "rte/Rte_SlideSensor.h" 1
# 13 "rte/Rte_SlideSensor.h"
# 1 "rte/Rte_SlideSensor_Type.h" 1
# 13 "rte/Rte_SlideSensor.h" 2



Std_ReturnType Rte_Call_SlideSensor_rpIOGetSlide_IOGet(IoPositionSensorReadingType* position);




void SlideSensor_GetPosition(SensorPositionType* Position);
# 21 "rte/Rte.c" 2

# 1 "rte/Rte_WeightSensor.h" 1
# 13 "rte/Rte_WeightSensor.h"
# 1 "rte/Rte_WeightSensor_Type.h" 1
# 13 "rte/Rte_WeightSensor.h" 2



Std_ReturnType Rte_Call_WeightSensor_rpIOGetWeight_IOGet(IoWeightSensorReadingType* weight);




void WeightSensor_GetWeight(SensorWeightType* Weight);
# 22 "rte/Rte.c" 2


# 1 "rte/../bsw/static/Com.h" 1
# 14 "rte/../bsw/static/Com.h"
# 1 "rte/../bsw/static/../cfg/Com_Cfg.h" 1
# 14 "rte/../bsw/static/Com.h" 2


typedef uint16 Com_SignalIdType;

Std_ReturnType Com_ReceiveSignal(Com_SignalIdType SignalId, void* SignalDataPtr);

void Com_MainFunction(void);
# 24 "rte/Rte.c" 2

# 1 "rte/../bsw/static/Os.h" 1
# 14 "rte/../bsw/static/Os.h"
# 1 "rte/../bsw/static/../cfg/Os_Cfg.h" 1
# 23 "rte/../bsw/static/../cfg/Os_Cfg.h"
void CyclicTask(void);
void AppTsk(void);
# 14 "rte/../bsw/static/Os.h" 2


typedef uint8 TaskType;
typedef uint8 AlarmType;
typedef uint32 TickType;
typedef uint32 EventMaskType;

void Os_ActivateTask(TaskType taskId);
void Os_TerminateTask();
void Os_SetRelAlarm(AlarmType alarmID, TickType offset, TickType cycle);
void Os_CancelAlarm(AlarmType alarmID);
void Os_SetEvent(TaskType taskId, EventMaskType osEvent);
void Os_ClearEvent(EventMaskType osEvent);
void Os_GetEvent(TaskType taskId, EventMaskType* osEvent);
void Os_WaitEvent(EventMaskType osEvent);
void Os_SuspendAllInterrupts();
void Os_ResumeAllInterrupts();
# 25 "rte/Rte.c" 2








static Rte_SenderReceiverBuffersType Rte_SenderReceiverBuffers;
static Rte_SenderReceiverFlagsType Rte_SenderReceiverFlags;







static uint8 SeatCtrlMode_CurrentMode = 0;
# 57 "rte/Rte.c"
Std_ReturnType Rte_Write_HMI_ppSeatCtrlBtns_HeightBtnState(MultiStateBtnType HeightBtnState)
{
 Rte_SenderReceiverBuffers.HeightBtnState = HeightBtnState;

 Os_SetEvent(1U, 2U);

 return 0U;
}

Std_ReturnType Rte_Read_SeatManager_rpSeatCtrlBtns_HeightBtnState(MultiStateBtnType* HeightBtnState)
{
 *HeightBtnState = Rte_SenderReceiverBuffers.HeightBtnState;
 return 0U;
}

Std_ReturnType Rte_Write_HMI_ppSeatCtrlBtns_InclineBtnState(MultiStateBtnType InclineBtnState)
{
 Rte_SenderReceiverBuffers.InclineBtnState = InclineBtnState;

 Os_SetEvent(1U, 4U);

 return 0U;
}

Std_ReturnType Rte_Read_SeatManager_rpSeatCtrlBtns_InclineBtnState(MultiStateBtnType* InclineBtnState)
{
 *InclineBtnState = Rte_SenderReceiverBuffers.InclineBtnState;
 return 0U;
}

Std_ReturnType Rte_Write_HMI_ppSeatCtrlBtns_SlideBtnState(MultiStateBtnType SlideBtnState)
{
 Rte_SenderReceiverBuffers.SlideBtnState = SlideBtnState;

 Os_SetEvent(1U, 8U);


 return 0U;
}

Std_ReturnType Rte_Read_SeatManager_rpSeatCtrlBtns_SlideBtnState(MultiStateBtnType* SlideBtnState)
{
 *SlideBtnState = Rte_SenderReceiverBuffers.SlideBtnState;
 return 0U;
}
# 110 "rte/Rte.c"
Std_ReturnType Rte_Read_HMI_rpSeatCtrlData_Height(uint8* Height)
{
 (void)Com_ReceiveSignal(0U, (void*)Height);


 Rte_SenderReceiverFlags.Height.IsUpdated = (0u);

 return Rte_SenderReceiverFlags.Height.Status;
}

boolean Rte_IsUpdated_HMI_rpSeatCtrlData_Height(void)
{
 return Rte_SenderReceiverFlags.Height.IsUpdated;
}

Std_ReturnType Rte_Read_HMI_rpSeatCtrlData_Incline(uint8* Incline)
{
 (void)Com_ReceiveSignal(1U, (void*)Incline);

 Rte_SenderReceiverFlags.Incline.IsUpdated = (0u);

 return Rte_SenderReceiverFlags.Incline.Status;
}

boolean Rte_IsUpdated_HMI_rpSeatCtrlData_Incline(void)
{
 return Rte_SenderReceiverFlags.Incline.IsUpdated;
}

Std_ReturnType Rte_Read_HMI_rpSeatCtrlData_Slide(uint8* Slide)
{
 (void)Com_ReceiveSignal(2U, (void*)Slide);

 Rte_SenderReceiverFlags.Slide.IsUpdated = (0u);

 return Rte_SenderReceiverFlags.Slide.Status;
}

boolean Rte_IsUpdated_HMI_rpSeatCtrlData_Slide(void)
{
 return Rte_SenderReceiverFlags.Slide.IsUpdated;
}

Std_ReturnType Rte_Read_HMI_rpSeatModeBtn_SeatModeBtn(SeatModeBtnType* SeatModeBtn)
{
 (void)Com_ReceiveSignal(3U, (void*)SeatModeBtn);
 return 0U;
}







Std_ReturnType Rte_Switch_HMI_ppSeatCtrlMode_SeatCtrlMode(uint8 SeatCtrlMode)
{
 SeatCtrlMode_CurrentMode = SeatCtrlMode;
 return 0U;
}
# 178 "rte/Rte.c"
Std_ReturnType Rte_Call_HeightMotor_rpIOSetHeight_IOSetForward(void)
{
 IoHwAbs_ECUSetForward_Height();
 return 0U;
}

Std_ReturnType Rte_Call_HeightMotor_rpIOSetHeight_IOSetReverse(void)
{
 IoHwAbs_ECUSetReverse_Height();
 return 0U;
}

Std_ReturnType Rte_Call_InclineMotor_rpIOSetIncline_IOSetForward(void)
{
 IoHwAbs_ECUSetForward_Incline();
 return 0U;
}

Std_ReturnType Rte_Call_InclineMotor_rpIOSetIncline_IOSetReverse(void)
{
 IoHwAbs_ECUSetReverse_Incline();
 return 0U;
}

Std_ReturnType Rte_Call_SlideMotor_rpIOSetSlide_IOSetForward(void)
{
 IoHwAbs_ECUSetForward_Slide();
 return 0U;
}

Std_ReturnType Rte_Call_SlideMotor_rpIOSetSlide_IOSetReverse(void)
{
 IoHwAbs_ECUSetReverse_Slide();
 return 0U;
}

Std_ReturnType Rte_Call_HeightSensor_rpIOGetHeight_IOGet(IoPositionSensorReadingType* position)
{
 IoHwAbs_ECUGet_Height(position);
 return 0U;
}

Std_ReturnType Rte_Call_InclineSensor_rpIOGetIncline_IOGet(IoPositionSensorReadingType* position)
{
 IoHwAbs_ECUGet_Incline(position);
 return 0U;
}

Std_ReturnType Rte_Call_SlideSensor_rpIOGetSlide_IOGet(IoPositionSensorReadingType* position)
{
 IoHwAbs_ECUGet_Slide(position);
 return 0U;
}

Std_ReturnType Rte_Call_WeightSensor_rpIOGetWeight_IOGet(IoWeightSensorReadingType* weight)
{
 IoHwAbs_ECUGet_Weight(weight);
 return 0U;
}

Std_ReturnType Rte_Call_SeatManager_rpHeightMotor_Move(StepMotorStepType Step)
{
 HeightMotor_Move(Step);
 return 0U;
}

Std_ReturnType Rte_Call_SeatManager_rpInclineMotor_Move(StepMotorStepType Step)
{
 InclineMotor_Move(Step);
 return 0U;
}

Std_ReturnType Rte_Call_SeatManager_rpSlideMotor_Move(StepMotorStepType Step)
{
 SlideMotor_Move(Step);
 return 0U;
}

Std_ReturnType Rte_Call_SeatManager_rpHeightSensor_GetPosition(SensorPositionType* Position)
{
 HeightSensor_GetPosition(Position);
 return 0U;
}

Std_ReturnType Rte_Call_SeatManager_rpInclineSensor_GetPosition(SensorPositionType* Position)
{
 InclineSensor_GetPosition(Position);
 return 0U;
}

Std_ReturnType Rte_Call_SeatManager_rpSlideSensor_GetPosition(SensorPositionType* Position)
{
 SlideSensor_GetPosition(Position);
 return 0U;
}

Std_ReturnType Rte_Call_SeatManager_rpWeightSensor_GetWeight(SensorWeightType* Weight)
{
 WeightSensor_GetWeight(Weight);
 return 0U;
}







void Rte_ComCbk_HeightBtnSignal(void)
{
 Rte_SenderReceiverFlags.Height.IsUpdated = (1u);
 Rte_SenderReceiverFlags.Height.Status = 0U;
}

void Rte_ComCbk_RxTout_HeightBtnSignal(void)
{
 Rte_SenderReceiverFlags.Height.Status = 128;
}

void Rte_ComCbk_InclineBtnSignal(void)
{
 Rte_SenderReceiverFlags.Incline.IsUpdated = (1u);
 Rte_SenderReceiverFlags.Incline.Status = 0U;
}

void Rte_ComCbk_RxTout_InclineBtnSignal(void)
{
 Rte_SenderReceiverFlags.Incline.Status = 128;
}

void Rte_ComCbk_SlideBtnSignal(void)
{
 Rte_SenderReceiverFlags.Slide.IsUpdated = (1u);
 Rte_SenderReceiverFlags.Slide.Status = 0U;
}

void Rte_ComCbk_RxTout_SlideBtnSignal(void)
{
 Rte_SenderReceiverFlags.Slide.Status = 128;
}

void Rte_ComCbk_AutoBtnSignal(void)
{
 Os_SetEvent(1U, 1U);
}







void CyclicTask(void)
{
 static uint8 TaskCounter = 0;







 if(TaskCounter % 2 == 0)
 {
  if(!(SeatCtrlMode_CurrentMode == 0 || SeatCtrlMode_CurrentMode == 1))
  {
   SeatManager_AutoHeight();
  }

  if(!(SeatCtrlMode_CurrentMode == 0 || SeatCtrlMode_CurrentMode == 1))
  {
   SeatManager_AutoIncline();
  }

  if(!(SeatCtrlMode_CurrentMode == 0 || SeatCtrlMode_CurrentMode == 1))
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


 Os_WaitEvent(1U | 2U | 4U | 8U);


 Os_GetEvent(1U, &CurrentEvents);


 Os_ClearEvent(CurrentEvents);

 if((CurrentEvents & 1U) != 0)
 {
  HMI_SeatModeChanged();
 }

 if((CurrentEvents & 2U) != 0)
 {
  if(!(SeatCtrlMode_CurrentMode == 0 || SeatCtrlMode_CurrentMode == 2))
  {
   SeatManager_SetHeight();
  }
 }

 if((CurrentEvents & 4U) != 0)
 {
  if(!(SeatCtrlMode_CurrentMode == 0 || SeatCtrlMode_CurrentMode == 2))
  {
   SeatManager_SetIncline();
  }
 }

 if((CurrentEvents & 8U) != 0)
 {
  if(!(SeatCtrlMode_CurrentMode == 0 || SeatCtrlMode_CurrentMode == 2))
  {
   SeatManager_SetSlide();
  }
 }

 Os_TerminateTask();
}







Std_ReturnType Rte_Start()
{
 Rte_SenderReceiverFlags.Height.IsUpdated = (0u);
 Rte_SenderReceiverFlags.Height.Status = 0U;
 Rte_SenderReceiverFlags.Incline.IsUpdated = (0u);
 Rte_SenderReceiverFlags.Incline.Status = 0U;
 Rte_SenderReceiverFlags.Slide.IsUpdated = (0u);
 Rte_SenderReceiverFlags.Slide.Status = 0U;
 Rte_SenderReceiverBuffers.HeightBtnState = 0;
 Rte_SenderReceiverBuffers.InclineBtnState = 0;
 Rte_SenderReceiverBuffers.SlideBtnState = 0;

 Os_SetRelAlarm(0U, 0, 100);

 return 0U;
}

Std_ReturnType Rte_Stop()
{
 Os_CancelAlarm(0U);

 return 0U;
}
