/**
 *
 * \brief Sprints AUTOSAR Master Class - SeatCtrlApp
 * \author Hassan Farahat
 *
 * For any inquiries: hassan.m.farahat@gmail.com
 *
 */
 
#ifndef RTE_HMI_H
#define RTE_HMI_H

#include "Rte_HMI_Type.h"

/* RTE APIs Prototype Declaration */
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

#define Rte_Read_rpSeatCtrlData_Height 				Rte_Read_HMI_rpSeatCtrlData_Height
#define Rte_Read_rpSeatCtrlData_Incline 			Rte_Read_HMI_rpSeatCtrlData_Incline
#define Rte_Read_rpSeatCtrlData_Slide 				Rte_Read_HMI_rpSeatCtrlData_Slide
#define Rte_Read_rpSeatModeBtn_SeatModeBtn			Rte_Read_HMI_rpSeatModeBtn_SeatModeBtn
#define Rte_IsUpdated_rpSeatCtrlData_Height 		Rte_IsUpdated_HMI_rpSeatCtrlData_Height
#define Rte_IsUpdated_rpSeatCtrlData_Incline 		Rte_IsUpdated_HMI_rpSeatCtrlData_Incline
#define Rte_IsUpdated_rpSeatCtrlData_Slide 			Rte_IsUpdated_HMI_rpSeatCtrlData_Slide
#define Rte_Write_ppSeatCtrlBtns_HeightBtnState 	Rte_Write_HMI_ppSeatCtrlBtns_HeightBtnState
#define Rte_Write_ppSeatCtrlBtns_InclineBtnState 	Rte_Write_HMI_ppSeatCtrlBtns_InclineBtnState
#define Rte_Write_ppSeatCtrlBtns_SlideBtnState 		Rte_Write_HMI_ppSeatCtrlBtns_SlideBtnState
#define Rte_Switch_ppSeatCtrlMode_SeatCtrlMode		Rte_Switch_HMI_ppSeatCtrlMode_SeatCtrlMode

/* Runnables Prototype Declaration */
void HMI_MainFunction(void);
void HMI_SeatModeChanged(void);

#endif