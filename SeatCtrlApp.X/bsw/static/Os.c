
 
#include "Os.h"
#include <time.h>

static void delay(int milli_seconds)
{
	time_t start_time = clock();

	while (clock() < start_time + milli_seconds);
}

static EventMaskType AppTsk_CurrentEvents = 0;

void Os_ActivateTask(TaskType taskId)
{
	switch(taskId)
	{
		case OsTaskId_CyclicTask:
			CyclicTask();
			break;
			
		case OsTaskId_AppTsk:
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
		case OsTaskId_AppTsk:
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
		case OsTaskId_AppTsk:
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
