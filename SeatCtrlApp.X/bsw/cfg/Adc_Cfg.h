/**
 *
 * \brief Sprints AUTOSAR Master Class - SeatCtrlApp
 * \author Hassan Farahat
 *
 * For any inquiries: hassan.m.farahat@gmail.com
 *
 */
 
#ifndef ADC_CFG_H
#define ADC_CFG_H

#define AdcConf_AdcGroup_PositionsSensorsGrp			0U
#define ADC_GR0_NUM_CHANNELS							3U

#define MAX_NB_ADC_CHANNELS 3
#define MAX_NB_ADC_GROUPS 1

#define ADC_SAMPLES_NB 1

#define ADC_DEINIT_API STD_ON
#define ADC_SETUP_BUFF_API STD_ON
#define ADC_READ_GP_CAPABILITY STD_ON
#define ADC_ENABLE_START_STOP_GROUP_API STD_ON
#define ADC_GRP_NOTIF_CAPABILITY STD_ON
#define ADC_GET_STATUS_API STD_ON

#endif