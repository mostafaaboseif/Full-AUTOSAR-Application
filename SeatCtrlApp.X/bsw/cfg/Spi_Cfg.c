

#include "../static/Spi.h"

Port_ConfigType Spi_ConfigPins[2] =
{
    {.Port=PortC,.Pin=Pin3,.PinDirection=PORT_PIN_IN},
    {.Port=PortC,.Pin=Pin4,.PinDirection=PORT_PIN_IN}
};

Spi_ConfigType Spi_Config = 
{
    .Spi_Channel = 0,
    .Spi_Module = SPI0,
    .Spi_Baudrate = 100000,
    .Spi_Mode = SPI_MASTER,
    .Spi_DataWidth = BITS_8,
    .Spi_BufferSource = INTERNAL_BUFFER,
    .Spi_TransferStart = MSB_FIRST,
    .Spi_DefaultTransmitValue = HIGH
};