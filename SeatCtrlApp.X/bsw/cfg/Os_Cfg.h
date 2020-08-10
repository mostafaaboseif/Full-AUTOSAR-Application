/**
 *
 * \brief Sprints AUTOSAR Master Class - SeatCtrlApp
 * \author Hassan Farahat
 *
 * For any inquiries: hassan.m.farahat@gmail.com
 *
 */
 
#ifndef OS_CFG_H
#define OS_CFG_H

#define OsConf_OsAlarm_Rte_Alarm_CyclicTask_100ms					0U

#define OsConf_OsEvent_AppTsk_DRE_HMI_SeatModeBtn					1U
#define OsConf_OsEvent_AppTsk_DRE_SeatManager_HeightBtnState		2U
#define OsConf_OsEvent_AppTsk_DRE_SeatManager_InclineBtnState		4U
#define OsConf_OsEvent_AppTsk_DRE_SeatManager_SlideBtnState			8U

#define OsTaskId_CyclicTask		0U
#define OsTaskId_AppTsk			1U

void CyclicTask(void);
void AppTsk(void);

#endif