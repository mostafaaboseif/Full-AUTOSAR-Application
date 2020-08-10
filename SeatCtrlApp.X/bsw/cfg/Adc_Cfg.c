

#include "../static/Adc.h"

void Adc_Handler(uint8_t result){}
Adc_ConfigType TempSensor_Config = 
{
    .Adc_Group = AdcConf_AdcGroup_PositionsSensorsGrp,
    .Adc_NbChannels = ADC_GR0_NUM_CHANNELS,
    .ArrayOfAdcChannels = {PA0,PA1,PA2},
    .Adc_GroupAccessMode = ADC_ACCESS_MODE_SINGLE,
    .Adc_NbSamples = ADC_SAMPLES_NB,
    .Adc_GroupConvMode = ADC_CONV_MODE_ONESHOT_POLLING,
    .Adc_ResultAlignment = ADC_ALIGN_RIGHT,
    .Adc_Prescale = ADC_PRE_8,
    .CallbackFn = Adc_Handler
};
