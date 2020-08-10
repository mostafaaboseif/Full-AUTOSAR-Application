/***************************************************************
*
* Module: Interrupt
*
* File Name: Interrupt.c
*
* Description: Source file for Interrupt Module,
*              implementation is based on AUTOSAR specfications.
*
* Author: Mostafa Amgad
*
* Date:  July 17, 2020
****************************************************************/


/*=================================================================
                            INCLUDES
*================================================================*/
#include "interrupt.h"

/*=================================================================
                    GLOBAL STATIC VARIABLES
*================================================================*/
void (*callbackTable[MODULES_USING_INTERRUPT])();

/*=================================================================
                LOCAL FUNCTIONS IMPLEMENTATION
*================================================================*/
void __interrupt() ISR(void)
{
  if(TMR1IF)
  {
      callbackTable[TIMER]();
  }
  if(ADIF)
  {
      callbackTable[ADC]();
  }
  if (TXIF)   
  {
    callbackTable[UART_TX]();
    TXIF = 0; 
  }
  if (RCIF)   
  {
    callbackTable[UART_RX]();
    RCIF = 0; 
  }
  if (INTF)   
  {
    callbackTable[EXTERNAL_OR_SW]();
    INTF = 0; 
  }
}


/*=================================================================
                     APIs IMPLEMENTATION
*================================================================*/
void Interrupt_Enable(Interrupt_SourceType Interrupt_Source, void (*callback)())
{
    if(Interrupt_Source == TIMER)
    {
        TMR1IF = 0;  
        TMR1IE = 1;  
        PEIE = 1;  
        GIE = 1;   
        callbackTable[TIMER] = callback;
    }

    if(Interrupt_Source == ADC)
    {
        ADIF = 0;  // Clear ADC Interrupt Flag
        ADIE = 1;  // ADC Interrupt Enable Bit
        PEIE = 1;  // Peripherals Interrupt Enable Bit
        GIE = 1;   // Global Interrupts Enable Bit
        callbackTable[ADC] = callback;
    }
     if(Interrupt_Source == UART_TX)
    {
        TXIF = 0 ;
        TXIE = 0;
        PEIE = 1;
        GIE = 1;
        callbackTable[UART_TX] = callback;
    }
     if(Interrupt_Source == UART_RX)
    {
        RCIF = 0 ;
        RCIE = 0;
        PEIE = 1;
        GIE = 1;
        callbackTable[UART_RX] = callback;
    }
    if(Interrupt_Source == EXTERNAL_OR_SW)
    {
        INTF = 0 ;
        INTEDG = 0;
        INTE = 1;
        GIE = 1;
        callbackTable[EXTERNAL_OR_SW] = callback;
    }
}
void Interrupt_Disable(Interrupt_SourceType Interrupt_Source)
{

    if(Interrupt_Source == TIMER)
        TMR1IE = 0;  
    if(Interrupt_Source == ADC)
        ADIE = 0; 
    if(Interrupt_Source == UART_TX)
        TXIE = 0; 
    if(Interrupt_Source == UART_RX)
        RCIE = 0; 
    if(Interrupt_Source == EXTERNAL_OR_SW)
        INTE = 0; 
}

void Interrupt_SwTrigger()
{
    INTF=1;
}