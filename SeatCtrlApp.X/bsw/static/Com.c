/**
 *
 * \brief Sprints AUTOSAR Master Class - SeatCtrlApp
 * \author Hassan Farahat
 *
 * For any inquiries: hassan.m.farahat@gmail.com
 *
 */
 
#include "Com.h"
#include "../../rte/Rte_Cbk.h"
#include "../../vfb/vfb.h"

void Com_MainFunction(void)
{
	Rte_ComCbk_HeightBtnSignal();
	Rte_ComCbk_InclineBtnSignal();
	Rte_ComCbk_SlideBtnSignal();
	Rte_ComCbk_AutoBtnSignal();
}

Std_ReturnType Com_ReceiveSignal(Com_SignalIdType SignalId, void* SignalDataPtr)
{
	/* Read from VFB variables */
	switch(SignalId)
	{
		case ComConf_ComSignal_HeightBtnSignal:
			*((uint8*)SignalDataPtr) = (uint8)VFB_HeightBtnState;
			break;
			
		case ComConf_ComSignal_InclineBtnSignal:
			*((uint8*)SignalDataPtr) = (uint8)VFB_InclineBtnState;
			break;
			
		case ComConf_ComSignal_SlideBtnSignal:
			*((uint8*)SignalDataPtr) = (uint8)VFB_SlideBtnState;
			break;
		
		case ComConf_ComSignal_AutoBtnSignal:
			*((uint8*)SignalDataPtr) = (uint8)VFB_AutoBtnState;
			break;
		
		default:
			break;
	}
	
	return E_OK;
}