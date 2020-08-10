# 1 "bsw/static/Com.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "bsw/static/Com.c" 2
# 10 "bsw/static/Com.c"
# 1 "bsw/static/Com.h" 1
# 13 "bsw/static/Com.h"
# 1 "bsw/static/../../common/Std_Types.h" 1



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
# 4 "bsw/static/../../common/Std_Types.h" 2


typedef unsigned char bool;
# 19 "bsw/static/../../common/Std_Types.h"
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
# 38 "bsw/static/../../common/Std_Types.h"
typedef uint8_t Std_ReturnType;
# 54 "bsw/static/../../common/Std_Types.h"
enum {
Pin0,Pin1,Pin2,Pin3,Pin4,Pin5,Pin6,Pin7
};
# 13 "bsw/static/Com.h" 2

# 1 "bsw/static/../cfg/Com_Cfg.h" 1
# 14 "bsw/static/Com.h" 2


typedef uint16 Com_SignalIdType;

Std_ReturnType Com_ReceiveSignal(Com_SignalIdType SignalId, void* SignalDataPtr);

void Com_MainFunction(void);
# 10 "bsw/static/Com.c" 2

# 1 "bsw/static/../../rte/Rte_Cbk.h" 1
# 15 "bsw/static/../../rte/Rte_Cbk.h"
void Rte_ComCbk_HeightBtnSignal(void);
void Rte_ComCbk_RxTout_HeightBtnSignal(void);
void Rte_ComCbk_InclineBtnSignal(void);
void Rte_ComCbk_RxTout_InclineBtnSignal(void);
void Rte_ComCbk_SlideBtnSignal(void);
void Rte_ComCbk_RxTout_SlideBtnSignal(void);
void Rte_ComCbk_AutoBtnSignal(void);
# 11 "bsw/static/Com.c" 2

# 1 "bsw/static/../../vfb/vfb.h" 1
# 15 "bsw/static/../../vfb/vfb.h"
typedef enum
{
 VFB_BTN_STATE_INIT = 0,
 VFB_BTN_STATE_MINUS = 1,
 VFB_BTN_STATE_PLUS = 2
} VFB_MultiStateBtnEnum;

typedef enum
{
 VFB_BTN_STATE_MANUAL = 0,
 VFB_BTN_STATE_AUTO = 1
} VFB_AutoStateBtnEnum;

typedef enum
{
 VFB_MOTOR_REVERSE = 0,
 VFB_MOTOR_FORWARD = 1
} VFB_MotorStateEnum;


VFB_MultiStateBtnEnum VFB_HeightBtnState;
VFB_MultiStateBtnEnum VFB_InclineBtnState;
VFB_MultiStateBtnEnum VFB_SlideBtnState;


VFB_AutoStateBtnEnum VFB_AutoBtnState;


VFB_MotorStateEnum VFB_HeightMotorState;
VFB_MotorStateEnum VFB_InclineMotorState;
VFB_MotorStateEnum VFB_SlideMotorState;


uint8 VFB_HeightPosition;
uint8 VFB_InclinePosition;
uint8 VFB_SlidePosition;


uint16 VFB_DriverWeight;
# 12 "bsw/static/Com.c" 2


void Com_MainFunction(void)
{
 Rte_ComCbk_HeightBtnSignal();
 Rte_ComCbk_InclineBtnSignal();
 Rte_ComCbk_SlideBtnSignal();
 Rte_ComCbk_AutoBtnSignal();
}

Std_ReturnType Com_ReceiveSignal(Com_SignalIdType SignalId, void* SignalDataPtr)
{

 switch(SignalId)
 {
  case 0U:
   *((uint8*)SignalDataPtr) = (uint8)VFB_HeightBtnState;
   break;

  case 1U:
   *((uint8*)SignalDataPtr) = (uint8)VFB_InclineBtnState;
   break;

  case 2U:
   *((uint8*)SignalDataPtr) = (uint8)VFB_SlideBtnState;
   break;

  case 3U:
   *((uint8*)SignalDataPtr) = (uint8)VFB_AutoBtnState;
   break;

  default:
   break;
 }

 return ((Std_ReturnType)0x00u);
}
