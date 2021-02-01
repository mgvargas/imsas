
/**							ADC
*   @file     ADC.c
*   @brief    Source file for the MCP3561 ADC
*   @author   Minerva Vargas
*
********************************************************************************/
	/* ADC Output
	 *
	 *  Register CONFIG0: Address 0x1
	 *    XX -> 11(if all 0, then 00 full shutdown, 11 partial shutdown)	CONFIG0[7:6]
	 *    CLK_SEL[1:0] 10 -> Internal RC Oscillator, no clock output        CONFIG0[5:4]
	 *    CS_SEL[1:0] 00 ->  No current source is applied       			CONFIG0[3:2]
	 *    ADC_MODE[1:0] 11 -> conversion, needs 256 DMCLK time to start     CONFIG0[1:0]
	 *    				10 -> standby
	 *    so: 0x23 for conversion mode, 0x22 for standby mode
	 *    if XX is 11, then 0xE3 for conversion mode, 0xE2 for standby mode (better!)
	 *
	 *  Register CONFIG1: Address 0x2, leave as default (0x0C)
	 *    OSR[3:0] = 0011 -> Data Rate (Hz) with MCLK = 4.9152 MHz is 4800
	 *
	 *  Register CONFIG2: Address 0x3, leave as default (0x8B)
	 *    BOOST[1:0] 10
	 *    Gain[2:0] = 001 -> gain 1
	 *    AZ_MUX 0 no auto-zeroing
	 *    RESERVED[1:0] 11
	 *
	 *  Register CONFIG3: Address 0x4  set to 0xC0, (0x80 for One-shot conversion)
	 *    CONV_MODE[1:0] = 11 -> = Continuous Conversion mode
	 *    DATA_FORMAT[1:0] = 00 ->  the output register shows only the 24-bit value
	 *    CRC_FORMAT 0 default
	 *    EN_CRCCOM 0 default
	 *    EN_OFFCAL 0 -> Disable Digital Offset Calibration
	 *    EN_GAINCAL 0 -> Disable Digital Gain Calibration
	 *
	 * Register IRQ: Address 0x5, set to 0x04 (does not require a pull-up resistor)
	 *
	 *  Register MUX: Address 0x6
	 *    ADC A --- select CH0 -> MUX[7:4] 0000 and CH1 -> MUX[3:0] 0001  0x01
	 *    ADC B --- select CH2 -> MUX[7:4] 0010 and CH3 -> MUX[3:0] 0011  0x23
	 *
	 *  Register LOCK REGISTER: Address 0xD, Write Access Password Entry Code
	 *    0xA5 = Write access is allowed on the full register map
	 *
	 *  Register ADCDATA address 0x0 -> Latest A/D conversion data output value
	 *
	 *  Send a command 01 (ADC address) 0001 (register) 10 (write)  -> 0x46
	 *
	 *  Configuration example:
	 *
	 * config_ADC(0x0D,0xA5); // Lock register: Write access is allowed on the full register map
	 * //config_ADC(0x01,0xE2); // Standby mode
	 * config_ADC(0x01,0xE3); // Conversion mode
	 * config_ADC(0x02,0x1C); // Oversampling rate
	 * config_ADC(0x04,0xC0); // Configure conversion and gain
	 * config_ADC(0x05,0x04); // Configure IRQ register, only a test
	 * config_ADC(0x06,ADC_A_Select); // Select ADC A
	 * config_ADC2(0x07); // Scan register
	 *
	 */

#include "ADC.h"
#include "AD5270.h"
#include "main.h"
#include "usb_device.h"
extern SPI_HandleTypeDef hspi2;
extern uint8_t ADC_RX_buffer[3];

uint8_t cmd_ADC[2];

//////////////////////////////////////////// ADC /////////////////////////////////
void config_ADC(uint8_t ADC_reg, uint8_t command){
	cmd_ADC[0] = (ADC_ADDRESS << 6) | (ADC_reg << 2) | ADC_WRITE;
	cmd_ADC[1] = command;

	HAL_GPIO_WritePin(GPIOA, SPI2_CS_ADC_Pin, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOA, SPI1_CS_Pin, GPIO_PIN_RESET);
	HAL_SPI_Transmit(&hspi2, (uint8_t *)cmd_ADC, 2, HAL_MAX_DELAY);
	HAL_GPIO_WritePin(GPIOA, SPI2_CS_ADC_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOA, SPI1_CS_Pin, GPIO_PIN_SET);
	//HAL_Delay(50);
}

void config_ADC2(uint8_t ADC_reg){
	uint8_t cmd_ADC2[4];
	cmd_ADC2[0] = (ADC_ADDRESS << 6) | (ADC_reg << 2) | ADC_WRITE;
	cmd_ADC2[1] = 0x00;
	cmd_ADC2[2] = 0x00;
	cmd_ADC2[3] = 0x00;

	HAL_GPIO_WritePin(GPIOA, SPI2_CS_ADC_Pin, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOA, SPI1_CS_Pin, GPIO_PIN_RESET);
	HAL_SPI_Transmit(&hspi2, (uint8_t *)cmd_ADC2, 4, HAL_MAX_DELAY);
	HAL_GPIO_WritePin(GPIOA, SPI2_CS_ADC_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOA, SPI1_CS_Pin, GPIO_PIN_SET);
}

uint8_t * read_ADC(uint8_t ADC_reg){
	uint8_t Read_ADC[1];

	Read_ADC[0] = (ADC_ADDRESS << 6) | (ADC_reg << 2) | ADC_READ;

	HAL_GPIO_WritePin(GPIOA, SPI2_CS_ADC_Pin, GPIO_PIN_RESET);
	HAL_SPI_Transmit(&hspi2, (uint8_t *)Read_ADC, 1, HAL_MAX_DELAY);
	HAL_SPI_Receive(&hspi2, (uint8_t *)ADC_RX_buffer, 3, HAL_MAX_DELAY);
	HAL_GPIO_WritePin(GPIOA, SPI2_CS_ADC_Pin, GPIO_PIN_SET);

	return &ADC_RX_buffer[0]; // Returns address of the array
}

float voltage_ADC(uint8_t *ADC_RX_buffer_pointer){ // Converts value from read_ADC to float
	float ADC_Vout;
	int raw_ADC;
	int i;

	uint8_t ADC_RX_buffer[3];
	for ( i = 0; i < 3; i++ )   // Save buffer pointer to array
		ADC_RX_buffer[i] = *(ADC_RX_buffer_pointer + i);

	//Find out the sign
	char sign = (ADC_RX_buffer[0] & 0x80); // and [1 0 0 0 0 0 0 0]

	if (sign == 0x00){ // If positive, send
		raw_ADC = (ADC_RX_buffer[0] << 16) | (ADC_RX_buffer[1] << 8) | ADC_RX_buffer[2];
		ADC_Vout = raw_ADC*3.3/8388608.0; // register * Vref / 23 bit resolution
	}
	else
		ADC_Vout = 0; // if negative, then 0

	return ADC_Vout;
}
/////////////////////////////////////////// End ADC /////////////////////////////////
