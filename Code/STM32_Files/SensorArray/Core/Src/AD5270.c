/**							Digital Potentiometer
*   @file     AD5270.c
*   @brief    Source file for AD5270 rheostat
*   @author   Minerva Vargas
*
********************************************************************************/
#include "AD5270.h"
#include "usb_device.h"

extern UART_HandleTypeDef huart1;

////////////////////////////////// Digital Potentiometer AD5270 /////////////////////////////////
/*
   Brief SPI initialization. Sends {0x1C, 0x03} to start communication
   return none
*/
void Poti_SPI_Init(SPI_HandleTypeDef *hspi1)
{
	uint8_t SPI_Data[2] = {0x1C, 0x03};

	HAL_GPIO_WritePin(GPIOA, SPI1_CS_Pin, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIA_Pin, GPIO_PIN_RESET); // Poti A
	HAL_SPI_Transmit(hspi1, (uint8_t *)SPI_Data, 2, HAL_MAX_DELAY);
	HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIA_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOA, SPI1_CS_Pin, GPIO_PIN_SET);
	HAL_Delay(1);
	HAL_GPIO_WritePin(GPIOA, SPI1_CS_Pin, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIB_Pin, GPIO_PIN_RESET); // Poti B
	HAL_SPI_Transmit(hspi1, (uint8_t *)SPI_Data, 2, HAL_MAX_DELAY);
	HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIB_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOA, SPI1_CS_Pin, GPIO_PIN_SET);
	HAL_Delay(200);

}
/*
   Sets a given resistance value for the potentiometer_
    - resistance: Value between 0 and 20,000, in Ohms, increase in steps of 20
    - poti: selects between potentiometer 'A' and 'B'
 */
uint16_t Poti_Set_RDAC(uint16_t resistance, unsigned char poti, SPI_HandleTypeDef *hspi1)
{
	// Sets new resistance value to specified AD5270 poti (A or B)
	uint16_t RDAC_val = AD5270_CalcRDAC(resistance);
	uint8_t RDAC[2];

	//RDAC_Value = (float)((RDAC_val * MAX_RESISTANCE) / 1024.0); // inverse operation to get actual resistance in the RDAC

	RDAC[1] = RDAC_val & 0xff;
	RDAC[0] = (((RDAC_val >> 8) & MASK_RDAC) | WRITE_RDAC);

	if(poti == 'A'){			// Select Poti A or B
		HAL_GPIO_WritePin(GPIOA, SPI1_CS_Pin, GPIO_PIN_RESET);
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIA_Pin, GPIO_PIN_RESET);
		HAL_SPI_Transmit(hspi1, (uint8_t *)RDAC, 2, HAL_MAX_DELAY);
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIA_Pin, GPIO_PIN_SET);
		HAL_GPIO_WritePin(GPIOA, SPI1_CS_Pin, GPIO_PIN_SET);}
	else{
		HAL_GPIO_WritePin(GPIOA, SPI1_CS_Pin, GPIO_PIN_RESET);
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIB_Pin, GPIO_PIN_RESET);
		HAL_SPI_Transmit(hspi1, (uint8_t *)RDAC, 2, HAL_MAX_DELAY);
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIB_Pin, GPIO_PIN_SET);
		HAL_GPIO_WritePin(GPIOA, SPI1_CS_Pin, GPIO_PIN_SET);}

	HAL_Delay(1);

	return (uint16_t)resistance;
}

/***************************************************************************
 * @brief Writes data to SPI.
 *
 * @param data - Write data buffer:
 *               - first byte is the chip select number;
 *               - from the second byte onwards are located data bytes to write.
 * @param bytesNumber - Number of bytes to write.
 * @param poti - Select potentiometer A or B.
 *
 * @return Number of written bytes.
 *******************************************************************************/
void Poti_SPI_Write(unsigned char* data, unsigned char bytesNumber, unsigned char poti)
{
	uint8_t count = 0;
	int len = 1; // strlen(data[count]), length of 1 char

	if(poti == 'A')			// Select Poti A or B

		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIA_Pin, GPIO_PIN_RESET);
	else
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIB_Pin, GPIO_PIN_RESET);

	for(count = 0;count < bytesNumber;count++)// write instruction
	{
		HAL_UART_Transmit(&huart1, &data[count], len, 20);
	}

	if(poti == 'A')			// Select Poti A or B
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIA_Pin, GPIO_PIN_SET);
	else
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIB_Pin, GPIO_PIN_SET);


}
/***************************************************************************//**
 * @brief Reads data from SPI.
 *
 * @param data - As an input parameter, data represents the write buffer:
 *               - first byte is the chip select number;
 *               - from the second byte onwards are located data bytes to write.
 *               As an output parameter, data represents the read buffer:
 *               - from the first byte onwards are located the read data bytes.
 * @param bytesNumber - Number of bytes to write.
 *
 * @return Number of written bytes.
 *******************************************************************************/
void Poti_SPI_Read(unsigned char* data, unsigned char bytesNumber, unsigned char poti)
{
	unsigned char writeData[4]  = {0, 0, 0, 0};
	unsigned char count          = 0;
	int len = 1; // strlen(writeData[0]), length of 1 char

	for(count = 0;count <= bytesNumber;count++)
	{
		if(count == 0)
			writeData[count] = data[count];
		else
			writeData[count] = 0xAA;    /* dummy value */
	}

	if(poti == 'A')			// Select Poti A or B
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIA_Pin, GPIO_PIN_RESET);
	else
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIB_Pin, GPIO_PIN_RESET);

	HAL_UART_Transmit(&huart1, &writeData[0], len, 20);


	for(count = 1; count < bytesNumber + 1;count++) {
		data[count - 1] = HAL_UART_Transmit(&huart1, &writeData[count], len, 20);
	}

	if(poti == 'A')			// Select Poti A or B
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIA_Pin, GPIO_PIN_SET);
	else
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIB_Pin, GPIO_PIN_SET);
	//}
}

/**
 * @brief Compute for the nearest RDAC value from given resistance
 * @param resistance - resistor
 * @return RDAC value - closest possible to given resistance
 */
uint16_t AD5270_CalcRDAC(uint16_t resistance)
{
	if (resistance > MAX_RESISTANCE)
		resistance = MAX_RESISTANCE;
	if (resistance < 0)
		resistance = 0 ;

   return ((uint16_t)( ( ((uint32_t) resistance << 10) / (uint32_t) MAX_RESISTANCE) -1));

}
////////////////////////////////// END Digital Potentiometer /////////////////////////////////
