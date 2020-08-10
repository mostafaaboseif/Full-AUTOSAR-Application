/***************************************************************
*
* Module: Interrupt
*
* File Name: Interrupt.h
*
* Description: Header file for Interrupt Module,
*              implementation is based on AUTOSAR specfications.
*
* Author: Mostafa Amgad
*
* Date:  July 17, 2020
****************************************************************/

#ifndef INTERRUPT_H
#define	INTERRUPT_H

/*=================================================================
                         INCLUDE FILES
==================================================================*/
/*needed interfaces from external units*/
#include "Port.h"

/*=================================================================
                           CONSTANTS
==================================================================*/
#define MODULES_USING_INTERRUPT 5

/*=================================================================
                            MACROS
==================================================================*/
#define ENABLE_INTERRUPTS   GIE=1
#define DISABLE_INTERRUPTS   GIE=0

/*=================================================================
                       Module Data Types
==================================================================*/
typedef enum {
    TIMER,    
    ADC,
    UART_TX,
    UART_RX,
    EXTERNAL_OR_SW
}Interrupt_SourceType;


/*=================================================================
                      FUNCTION PROTOTYPES
==================================================================*/
void Interrupt_Enable(Interrupt_SourceType Interrupt_Source, void (*callback)());

void Interrupt_Disable(Interrupt_SourceType Interrupt_Source);

void Interrupt_SwTrigger();

#endif