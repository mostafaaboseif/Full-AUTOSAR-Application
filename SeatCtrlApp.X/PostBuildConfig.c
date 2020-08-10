/* #include <pic.h>
#include "OS/OS.h"
#include "MCAL/Port.h"
#include "MCAL/Gpt.h"
#include "EcuAL/Disp.h"
#include "EcuAL/Eeprom.h"
#include "EcuAL/TempSensor.h"
#include "EcuAL/TempSystem.h"
#include "MCAL/Pwm.h"
#include "MCAL/Uart.h"

void Task_OffState(void);void Task_ReadEeprom(void);
void Task_UpDownFirstTime(void);void Task_SetTemp(void);
void Task_DispSetTemp(void);void Task_WriteEeprom(void);
void Task_MeasureTemp(void);void Task_HeatOrCool(void);
void Task_DispCurrentTemp(void);

Os_ConfigType Os_Config = 
{
	.NbOfStates = 5,
	.NbOfTasks_Array = {1,1,1,3,3},
    .TaskTable = 
    {
        Task_OffState,Task_ReadEeprom,Task_UpDownFirstTime,
        Task_SetTemp,Task_DispSetTemp,Task_WriteEeprom,
        Task_MeasureTemp,Task_HeatOrCool,Task_DispCurrentTemp
    }
};

Disp_ConfigType Disp_Config = 
{
    .DisplayPort = PortD,
    .EnablePort = PortA,
    .EnablePins = {Pin4,Pin5},
    .NbDigits = 2,
    .BlinkingPeriod = 1000
};

Port_ConfigType Disp_PinsConfiguration[3] = 
{
    {.Port=PortD,.Pin=Pin0,.PinDirection=PORT_PIN_OUT},
    {.Port=PortA,.Pin=Pin4,.PinDirection=PORT_PIN_OUT},
    {.Port=PortA,.Pin=Pin5,.PinDirection=PORT_PIN_OUT}
};  
   
Eep_ConfigType Eep_Config = 
{
    .Eep_SlaveAddress = 0xA0,
    .Eep_Size= SIZE_4KB
};
 
Port_ConfigType Port_ButtonsConfig[5] =
{
    {.Port=PortB,.Pin=Pin0,.PinDirection=PORT_PIN_IN},
    {.Port=PortB,.Pin=Pin1,.PinDirection=PORT_PIN_IN},
    {.Port=PortB,.Pin=Pin2,.PinDirection=PORT_PIN_IN}, 
    {.Port=PortB,.Pin=Pin7,.PinDirection=PORT_PIN_OUT}
};

void TickHandler();

Gpt_ConfigType Gpt_Config = 
{
    .Module = TIMER1,
    .Channel = 0,
    .TickRate = 1000,
    .CallbackFn = TickHandler,
    .Mode = TIMER_MODE,
    .ClkSource = GPT_INTERNAL
};

void Adc_Handler(uint8_t x){}
Adc_ConfigType TempSensor_Config = 
{
    .Adc_NbChannels = 1,
    .ArrayOfAdcChannels = {PA2},
    .Adc_GroupAccessMode = ADC_ACCESS_MODE_STREAMING,
    .Adc_NbSamples = ADC_SAMPLES_NB,
    .Adc_GroupConvMode = ADC_CONV_MODE_ONESHOT_POLLING,
    .Adc_ResultAlignment = ADC_ALIGN_RIGHT,
    .Adc_Prescale = ADC_PRE_8,
    .CallbackFn = Adc_Handler
};

Pwm_ConfigType Pwm_Config = 
{
    .Channel = 1,
    .Period = 500, 
    .DutyCycle = 0,
    .Polarity = POLARITY_HIGH
};

Port_ConfigType TempSystem_Configurations[2] = 
{
    {.Port=PortC,.Pin=Pin5,.PinDirection=PORT_PIN_OUT},
    {.Port=PortC,.Pin=Pin2,.PinDirection=PORT_PIN_OUT}
};

Port_ConfigType I2c_ConfigPins[2] =
{
    {.Port=PortC,.Pin=Pin3,.PinDirection=PORT_PIN_IN},
    {.Port=PortC,.Pin=Pin4,.PinDirection=PORT_PIN_IN}
};

I2c_ConfigType I2c_Config = 
{
    .I2c_Channel = 0,
    .I2c_Module = I2C0,
    .I2c_Baudrate = 100000,
    .I2c_Mode = I2C_MASTER,
    .I2c_DataWidth = BITS_8,
    .I2c_BufferSource = INTERNAL_BUFFER,
    .I2c_TransferStart = MSB_FIRST,
    .I2c_DefaultTransmitValue = HIGH
};

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


 */