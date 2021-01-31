
/**							ADC
*   @file     ADC.c
*   @brief    Source file for the MCP3561 ADC
*   @author   Minerva Vargas
*
********************************************************************************/


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
