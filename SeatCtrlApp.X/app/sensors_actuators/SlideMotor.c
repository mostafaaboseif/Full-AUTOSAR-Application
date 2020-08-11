

#include "../../rte/Rte_SlideMotor.h"


/**
 *
 * Runnable SlideMotor_Move
 *
 * Triggered By:
 *  - OperationInvokedEventImpl.OIE_ppSlideMotor_Move
 *
 */

void SlideMotor_Move (StepMotorStepType Step)
{
	if(Step == MOTOR_STEP_PLUS)
	{
		(void)Rte_Call_rpIOSetSlide_IOSetForward();
	}
	else if(Step == MOTOR_STEP_MINUS)
	{
		(void)Rte_Call_rpIOSetSlide_IOSetReverse();
	}
	else
	{
		/* do nothing */
	}
}

