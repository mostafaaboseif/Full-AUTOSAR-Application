/***************************************************************
*
* Module: Det
*
* File Name: Det.h
*
* Description: Header file for Det Module,
*              implementation is based on AUTOSAR specfications.
*
* Author: Mostafa Amgad
*
* Date:  July 17, 2020
****************************************************************/


#ifndef DET_H
#define DET_H

/*=================================================================
                         INCLUDE FILES
==================================================================*/
/*needed interfaces from external units*/
#include "bsw/static/Uart_CDD.h"

/*=================================================================
                      FUNCTION PROTOTYPES
==================================================================*/
void Det_Init();

void Det_ReportError(uint16_t ModuleId,uint8_t InstanceId,uint8_t ApiId,uint8_t ErrorId);


#endif    /*Det.h*/
