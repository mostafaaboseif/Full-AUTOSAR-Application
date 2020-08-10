# 1 "app/appswcs/HMI.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "app/appswcs/HMI.c" 2
# 13 "app/appswcs/HMI.c"
# 1 "app/appswcs/../../rte/Rte_HMI.h" 1
# 13 "app/appswcs/../../rte/Rte_HMI.h"
# 1 "app/appswcs/../../rte/Rte_HMI_Type.h" 1
# 13 "app/appswcs/../../rte/Rte_HMI_Type.h"
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
# 13 "app/appswcs/../../rte/Rte_HMI_Type.h" 2
# 13 "app/appswcs/../../rte/Rte_HMI.h" 2



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
# 41 "app/appswcs/../../rte/Rte_HMI.h"
void HMI_MainFunction(void);
void HMI_SeatModeChanged(void);
# 13 "app/appswcs/HMI.c" 2
# 25 "app/appswcs/HMI.c"
static MultiStateBtnType btnValueToState(uint8 value)
{
 MultiStateBtnType btnState;

 if(value == 1)
 {
  btnState = 2;
 }
 else if(value == 2)
 {
  btnState = 1;
 }
 else
 {
  btnState = 0;
 }

 return btnState;
}

void HMI_MainFunction (void)
{
 Std_ReturnType status;
 MultiStateBtnType HeightBtnState;
 MultiStateBtnType InclineBtnState;
 MultiStateBtnType SlideBtnState;
 uint8 Height;
 uint8 Incline;
 uint8 Slide;
 boolean IsUpdated;

 IsUpdated = Rte_IsUpdated_HMI_rpSeatCtrlData_Height();
 status = Rte_Read_HMI_rpSeatCtrlData_Height(&Height);
 if(status == 0U && IsUpdated == (1u))
 {
  HeightBtnState = btnValueToState(Height);
  (void)Rte_Write_HMI_ppSeatCtrlBtns_HeightBtnState(HeightBtnState);
 }

 IsUpdated = Rte_IsUpdated_HMI_rpSeatCtrlData_Incline();
 status = Rte_Read_HMI_rpSeatCtrlData_Incline(&Incline);
 if(status == 0U && IsUpdated == (1u))
 {
  InclineBtnState = btnValueToState(Incline);
  (void)Rte_Write_HMI_ppSeatCtrlBtns_InclineBtnState(InclineBtnState);
 }

 IsUpdated = Rte_IsUpdated_HMI_rpSeatCtrlData_Slide();
 status = Rte_Read_HMI_rpSeatCtrlData_Slide(&Slide);
 if(status == 0U && IsUpdated == (1u))
 {
  SlideBtnState = btnValueToState(Slide);
  (void)Rte_Write_HMI_ppSeatCtrlBtns_SlideBtnState(SlideBtnState);
 }
}
# 90 "app/appswcs/HMI.c"
void HMI_SeatModeChanged (void)
{
 SeatModeBtnType SeatModeBtn;
 uint8 SeatCtrlMode = 0;

 (void)Rte_Read_HMI_rpSeatModeBtn_SeatModeBtn(&SeatModeBtn);

 if(SeatModeBtn == 0)
 {
  SeatCtrlMode = 1;
 }
 else if(SeatModeBtn == 1)
 {
  SeatCtrlMode = 2;
 }
 else
 {

 }

 (void)Rte_Switch_HMI_ppSeatCtrlMode_SeatCtrlMode(SeatCtrlMode);
}
