/**
 *
 * \brief Sprints AUTOSAR Master Class - SeatCtrlApp
 * \author Hassan Farahat
 *
 * For any inquiries: hassan.m.farahat@gmail.com
 *
 */
 
#ifndef RTE_IOHWABS_H
#define RTE_IOHWABS_H

#include "Rte_IoHwAbs_Type.h"

/* RTE APIs Prototype Declaration */

/* Runnables Prototype Declaration */
void IoHwAbs_ECUGet_Height(IoPositionSensorReadingType* position);
void IoHwAbs_ECUGet_Incline(IoPositionSensorReadingType* position);
void IoHwAbs_ECUGet_Slide(IoPositionSensorReadingType* position);
void IoHwAbs_ECUGet_Weight(IoWeightSensorReadingType* weight);
void IoHwAbs_ECUSetForward_Height(void);
void IoHwAbs_ECUSetForward_Incline(void);
void IoHwAbs_ECUSetForward_Slide(void);
void IoHwAbs_ECUSetReverse_Height(void);
void IoHwAbs_ECUSetReverse_Incline(void);
void IoHwAbs_ECUSetReverse_Slide(void);

#endif