
#include "../../rte/Rte_HeightMotor.h"


/**
 *
 * Runnable HeightMotor_Move
 *
 * Triggered By:
 *  - OperationInvokedEventImpl.OIE_ppHeightMotor_Move
 *
 */

void HeightMotor_Move (StepMotorStepType Step)
{
	if(Step == MOTOR_STEP_PLUS)
	{
		(void)Rte_Call_rpIOSetHeight_IOSetForward();
	}
	else if(Step == MOTOR_STEP_MINUS)
	{
		(void)Rte_Call_rpIOSetHeight_IOSetReverse();
	}
	else
	{
		/* do nothing */
	}
}

