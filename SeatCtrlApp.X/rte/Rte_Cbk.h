/**
 *
 * \brief Sprints AUTOSAR Master Class - SeatCtrlApp
 * \author Hassan Farahat
 *
 * For any inquiries: hassan.m.farahat@gmail.com
 *
 */
 
#ifndef RTE_CBK_H
#define RTE_CBK_H

#include "../common/Std_Types.h"

void Rte_ComCbk_HeightBtnSignal(void);
void Rte_ComCbk_RxTout_HeightBtnSignal(void);
void Rte_ComCbk_InclineBtnSignal(void);
void Rte_ComCbk_RxTout_InclineBtnSignal(void);
void Rte_ComCbk_SlideBtnSignal(void);
void Rte_ComCbk_RxTout_SlideBtnSignal(void);
void Rte_ComCbk_AutoBtnSignal(void);

#endif