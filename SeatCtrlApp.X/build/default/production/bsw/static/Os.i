# 1 "bsw/static/Os.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "bsw/static/Os.c" 2
# 10 "bsw/static/Os.c"
# 1 "bsw/static/Os.h" 1
# 13 "bsw/static/Os.h"
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
# 13 "bsw/static/Os.h" 2

# 1 "bsw/static/../cfg/Os_Cfg.h" 1
# 23 "bsw/static/../cfg/Os_Cfg.h"
void CyclicTask(void);
void AppTsk(void);
# 14 "bsw/static/Os.h" 2


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
# 10 "bsw/static/Os.c" 2

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\time.h" 1 3



# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\__unsupported.h" 1 3
# 4 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\time.h" 2 3

# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\__size_t.h" 1 3



typedef unsigned size_t;
# 5 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\time.h" 2 3

# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\__null.h" 1 3
# 6 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\time.h" 2 3


typedef long time_t;
struct tm {
 int tm_sec;
 int tm_min;
 int tm_hour;
 int tm_mday;
 int tm_mon;
 int tm_year;
 int tm_wday;
 int tm_yday;
 int tm_isdst;
};





extern int time_zone;




extern time_t time(time_t *);
extern int stime(time_t *);
# 47 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\time.h" 3
extern char * asctime(const struct tm *) ;
extern char * ctime(const time_t *) ;
extern struct tm * gmtime(const time_t *) ;
extern struct tm * localtime(const time_t *) ;
extern size_t strftime(char *, size_t, const char *, const struct tm *) ;
extern time_t mktime(struct tm *);
# 11 "bsw/static/Os.c" 2


static void delay(int milli_seconds)
{
 time_t start_time = (-1L);

 while ((-1L) < start_time + milli_seconds);
}

static EventMaskType AppTsk_CurrentEvents = 0;

void Os_ActivateTask(TaskType taskId)
{
 switch(taskId)
 {
  case 0U:
   CyclicTask();
   break;

  case 1U:
   AppTsk();
   break;

  default:
   break;
 }
}

void Os_TerminateTask()
{
}

void Os_SetRelAlarm(AlarmType alarmID, TickType offset, TickType cycle)
{
 while (1)
 {
  CyclicTask();
  delay(cycle);
 }
}

void Os_CancelAlarm(AlarmType alarmID)
{
}

void Os_SetEvent(TaskType taskId, EventMaskType osEvent)
{
 switch(taskId)
 {
  case 1U:
   AppTsk_CurrentEvents |= osEvent;
   Os_ActivateTask(taskId);
   break;

  default:
   break;
 }
}

void Os_ClearEvent(EventMaskType osEvent)
{
 AppTsk_CurrentEvents &= (~osEvent);
}

void Os_GetEvent(TaskType taskId, EventMaskType* osEvent)
{
 switch(taskId)
 {
  case 1U:
   *osEvent = AppTsk_CurrentEvents;
   break;

  default:
   break;
 }
}

void Os_WaitEvent(EventMaskType osEvent)
{
}

void Os_SuspendAllInterrupts()
{
}

void Os_ResumeAllInterrupts()
{
}
