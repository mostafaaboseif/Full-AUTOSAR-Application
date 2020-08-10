# 1 "app/appswcs/SeatManager.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "app/appswcs/SeatManager.c" 2
# 13 "app/appswcs/SeatManager.c"
# 1 "app/appswcs/../../rte/Rte_SeatManager.h" 1
# 13 "app/appswcs/../../rte/Rte_SeatManager.h"
# 1 "app/appswcs/../../rte/Rte_SeatManager_Type.h" 1
# 13 "app/appswcs/../../rte/Rte_SeatManager_Type.h"
# 1 "app/appswcs/../../rte/Rte_Type.h" 1
# 13 "app/appswcs/../../rte/Rte_Type.h"
# 1 "app/appswcs/../../rte/../common/Std_Types.h" 1



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
# 4 "app/appswcs/../../rte/../common/Std_Types.h" 2


typedef unsigned char bool;
# 19 "app/appswcs/../../rte/../common/Std_Types.h"
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
# 38 "app/appswcs/../../rte/../common/Std_Types.h"
typedef uint8_t Std_ReturnType;
# 54 "app/appswcs/../../rte/../common/Std_Types.h"
enum {
Pin0,Pin1,Pin2,Pin3,Pin4,Pin5,Pin6,Pin7
};
# 13 "app/appswcs/../../rte/Rte_Type.h" 2


typedef uint8 StepMotorStepType;
typedef uint8 MultiStateBtnType;
typedef uint8 SensorPositionType;
typedef uint8 SensorWeightType;
typedef uint8 IoPositionSensorReadingType;
typedef uint16 IoWeightSensorReadingType;
typedef uint8 SeatModeBtnType;
# 13 "app/appswcs/../../rte/Rte_SeatManager_Type.h" 2
# 13 "app/appswcs/../../rte/Rte_SeatManager.h" 2



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
# 39 "app/appswcs/../../rte/Rte_SeatManager.h"
void SeatManager_SetHeight(void);
void SeatManager_SetIncline(void);
void SeatManager_SetSlide(void);
void SeatManager_AutoHeight(void);
void SeatManager_AutoSlide(void);
void SeatManager_AutoIncline(void);
# 13 "app/appswcs/SeatManager.c" 2


static boolean IsMotorAdjustNeeded(SensorPositionType Position, SensorWeightType Weight, StepMotorStepType* Step)
{
 boolean adjustMotor = (0u);

 switch(Position)
 {
  case 0:
   if(Weight > 60)
   {
    *Step = 0;
    adjustMotor = (1u);
   }
   break;

  case 64:
   if(Weight > 80)
   {
    *Step = 0;
    adjustMotor = (1u);
   }
   else if(Weight <= 80 && Weight >= 60)
   {

   }
   else
   {
    *Step = 1;
    adjustMotor = (1u);
   }
   break;

  case 128:
   if(Weight > 100)
   {
    *Step = 0;
    adjustMotor = (1u);
   }
   else if(Weight <= 100 && Weight >= 80)
   {

   }
   else
   {
    *Step = 1;
    adjustMotor = (1u);
   }
   break;

  case 192:
   if(Weight < 100)
   {
    *Step = 1;
    adjustMotor = (1u);
   }
   break;

  default:
   break;
 }

 return adjustMotor;
}
# 87 "app/appswcs/SeatManager.c"
void SeatManager_SetHeight (void)
{
 MultiStateBtnType HeightBtnState;

 (void)Rte_Read_SeatManager_rpSeatCtrlBtns_HeightBtnState(&HeightBtnState);

 if(HeightBtnState == 2)
 {
  (void)Rte_Call_SeatManager_rpHeightMotor_Move(1);
 }
 else if(HeightBtnState == 1)
 {
  (void)Rte_Call_SeatManager_rpHeightMotor_Move(0);
 }
}
# 113 "app/appswcs/SeatManager.c"
void SeatManager_SetIncline (void)
{
 MultiStateBtnType InclineBtnState;

 (void)Rte_Read_SeatManager_rpSeatCtrlBtns_InclineBtnState(&InclineBtnState);

 if(InclineBtnState == 2)
 {
  (void)Rte_Call_SeatManager_rpInclineMotor_Move(1);
 }
 else if(InclineBtnState == 1)
 {
  (void)Rte_Call_SeatManager_rpInclineMotor_Move(0);
 }
}
# 139 "app/appswcs/SeatManager.c"
void SeatManager_SetSlide (void)
{
 MultiStateBtnType SlideBtnState;

 (void)Rte_Read_SeatManager_rpSeatCtrlBtns_SlideBtnState(&SlideBtnState);

 if(SlideBtnState == 2)
 {
  (void)Rte_Call_SeatManager_rpSlideMotor_Move(1);
 }
 else if(SlideBtnState == 1)
 {
  (void)Rte_Call_SeatManager_rpSlideMotor_Move(0);
 }
}
# 164 "app/appswcs/SeatManager.c"
void SeatManager_AutoHeight (void)
{
 StepMotorStepType Step;
 SensorPositionType Position;
 SensorWeightType Weight;
 boolean adjustMotor;

 (void)Rte_Call_SeatManager_rpHeightSensor_GetPosition(&Position);
 (void)Rte_Call_SeatManager_rpWeightSensor_GetWeight(&Weight);

 adjustMotor = IsMotorAdjustNeeded(Position, Weight, &Step);
 if(adjustMotor)
 {
  (void)Rte_Call_SeatManager_rpHeightMotor_Move(Step);
 }
}
# 190 "app/appswcs/SeatManager.c"
void SeatManager_AutoSlide (void)
{
 StepMotorStepType Step;
 SensorPositionType Position;
 SensorWeightType Weight;
 boolean adjustMotor;

 (void)Rte_Call_SeatManager_rpSlideSensor_GetPosition(&Position);
 (void)Rte_Call_SeatManager_rpWeightSensor_GetWeight(&Weight);

 adjustMotor = IsMotorAdjustNeeded(Position, Weight, &Step);
 if(adjustMotor)
 {
  (void)Rte_Call_SeatManager_rpSlideMotor_Move(Step);
 }
}
# 217 "app/appswcs/SeatManager.c"
void SeatManager_AutoIncline (void)
{
 StepMotorStepType Step;
 SensorPositionType Position;
 SensorWeightType Weight;
 boolean adjustMotor;

 (void)Rte_Call_SeatManager_rpInclineSensor_GetPosition(&Position);
 (void)Rte_Call_SeatManager_rpWeightSensor_GetWeight(&Weight);

 adjustMotor = IsMotorAdjustNeeded(Position, Weight, &Step);
 if(adjustMotor)
 {
  (void)Rte_Call_SeatManager_rpInclineMotor_Move(Step);
 }
}
