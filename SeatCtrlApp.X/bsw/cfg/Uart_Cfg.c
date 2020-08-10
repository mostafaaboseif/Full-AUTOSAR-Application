
#include "../static/Uart_CDD.h"

Uart_ConfigType Uart_Config = 
{
    .Baudrate = 9600,
    .ComMode = MASTER_TX,
    .OpMode = UART_POLLING,
    .SysMode = ASYNCHRONOUS,
    .NinthBitEn = NINTH_BIT_DIS,
    .AddrDetEn = ADDR_DET_DIS,
    .TransferStart = UART_LSB_FIRST
};
