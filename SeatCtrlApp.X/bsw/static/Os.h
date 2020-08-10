/**
 *
 * \brief Sprints AUTOSAR Master Class - SeatCtrlApp
 * \author Hassan Farahat
 *
 * For any inquiries: hassan.m.farahat@gmail.com
 *
 */
 
#ifndef OS_H
#define OS_H

#include "../../common/Std_Types.h"
#include "../cfg/Os_Cfg.h"

typedef uint8				TaskType;
typedef uint8				AlarmType;
typedef uint32				TickType;
typedef uint32 				EventMaskType;

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

#endif