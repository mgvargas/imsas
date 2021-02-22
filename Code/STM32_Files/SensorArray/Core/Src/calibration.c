#include "CD74HC4067.h"		// Multiplexer
#include "AD5270.h"
#include "ADC.h"
#include "math.h"
#include "usbd_cdc_if.h"
#include "string.h"
#include "main.h"
#include "calibration.h"


////////////////////////////////////////////// Calibration ///////////////////////////////////
/* Calibrate the potentiometers to get a balanced output from the bridge, reads all 9 channels
 * and changes the value of the poti until the ADC gets the reference voltage as input */
void calibrate_potis(SPI_HandleTypeDef *hspi1){
	int poti_value;
	int i;
	char *usb_msg = malloc(15);

	if (HAL_GPIO_ReadPin(GPIOC, Switch_Mode_Pin)){
		//mode = Single_mode;
		mux_channel(0);
		strcpy(usb_msg, "Calibrating A\n");

		// For channel A
		CDC_Transmit_FS((uint8_t *)usb_msg, strlen((char *)usb_msg));
		config_ADC(0x6, ADC_A_Select);
		poti_value = balance_one_channel('A', hspi1);
		Potentiometer_values_A[0] = poti_value;
		sprintf(usb_msg, "%i\n", poti_value);

		// For channel B
		strcpy(usb_msg, "Calibrating B\n");
		CDC_Transmit_FS((uint8_t *)usb_msg, strlen((char *)usb_msg));
		config_ADC(0x6, ADC_B_Select);
		poti_value = balance_one_channel('B', hspi1);
		Potentiometer_values_B[0] = poti_value;

		strcpy(usb_msg, "Finished\n");
		CDC_Transmit_FS((uint8_t *)usb_msg, strlen((char *)usb_msg));
	}

	else { //mode = Array_mode;
		// Loop through the 9 sensors
		strcpy(usb_msg, "Calibrate Array\n");
		CDC_Transmit_FS((uint8_t *)usb_msg, strlen((char *)usb_msg));

		// For channel A
		config_ADC(0x6, ADC_A_Select);
		HAL_Delay(100);
		for (i=1; i <= 9; i++){
			mux_channel(i);
			sprintf(usb_msg, "A%i\n", i);
			CDC_Transmit_FS((uint8_t *)usb_msg, strlen((char *)usb_msg));
			HAL_Delay(10);
			poti_value = balance_one_channel('A', hspi1);
			Potentiometer_values_A[i] = poti_value;
		}
		// For channel B
		config_ADC(0x6, ADC_B_Select);
		HAL_Delay(100);
		for (i=1; i <= 9; i++){
			mux_channel(i);
			sprintf(usb_msg, "B%i\n", i);
			CDC_Transmit_FS((uint8_t *)usb_msg, strlen((char *)usb_msg));
			HAL_Delay(10);
			poti_value = balance_one_channel('B', hspi1);
			Potentiometer_values_B[i] = poti_value;
		}
		strcpy(usb_msg, "Finished\n");
		CDC_Transmit_FS((uint8_t *)usb_msg, strlen((char *)usb_msg));

	}
}

int balance_one_channel(unsigned char channel, SPI_HandleTypeDef *hspi1){
	float Vref= 1.65;
	int poti_value = 10000, n;
	uint8_t *raw_ADC;
	float value_ADC;
	char *usb_msg = malloc(20);
	strcpy(usb_msg, "Poti out of range\n");
	char txBuf[50];

	// Read ADC
	raw_ADC = read_ADC(0x00);
	value_ADC = voltage_ADC(raw_ADC);
	HAL_Delay(5);
	raw_ADC= read_ADC(0x00);
	value_ADC = voltage_ADC(raw_ADC);

	// If the value is lower than the ref voltage, then the sensor output is higher than the poti output
	// --> increase poti value (increase voltage) to balance the bridge
	if (value_ADC < Vref)
	{
		while (value_ADC <= (Vref+.015)) // +- 15mV
		{
			// Increase POTI
			if ((Vref - value_ADC) > 1.5)
				poti_value += 300;
			else if ((Vref - value_ADC) > 0.9)
				poti_value += 100;
			else if ((Vref - value_ADC) > 0.5)
				poti_value += 60;
			else
				poti_value += 20;

			if (poti_value > 20000){ // if poti cannot increase more, break
				CDC_Transmit_FS((uint8_t *)usb_msg, strlen((char *)usb_msg));
				HAL_Delay(5);
				return 20000;
			}
			Poti_Set_RDAC(poti_value, channel, hspi1);
			// Read ADC value
			raw_ADC= read_ADC(0x00);
			value_ADC = voltage_ADC(raw_ADC);

			if (value_ADC > (Vref+.3)){ // if it goes to far
				sprintf(txBuf, "Poti: %i, V: %.3f -> ", poti_value, value_ADC);
				CDC_Transmit_FS((uint8_t *)txBuf, strlen((char *)txBuf));
				poti_value -= 10000;
				if (poti_value < 0)
					poti_value = 0;
				Poti_Set_RDAC(poti_value, channel, hspi1);
				raw_ADC = read_ADC(0x00);
				value_ADC = voltage_ADC(raw_ADC);
				sprintf(txBuf, "Poti: %i, V: %.3f \n", poti_value, value_ADC);
				CDC_Transmit_FS((uint8_t *)txBuf, strlen((char *)txBuf));
			}

		}
	}
	// If the value is higher than the ref voltage, then the sensor output is lower than the poti output
	// --> decrease poti value (decrease voltage) to balance the bridge
	else{
		while (value_ADC >= (Vref-.015)) // +- 15mV
		{
			// Decrease POTI
			if ((value_ADC - Vref) > 1.5)
				poti_value -= 300;
			else if ((value_ADC - Vref) > 0.9)
				poti_value -= 100;
			else if ((value_ADC - Vref) > 0.5)
				poti_value -= 60;
			else
				poti_value -= 20;

			if (poti_value < 0){ // if poti cannot decrease more, break
				CDC_Transmit_FS((uint8_t *)usb_msg, strlen((char *)usb_msg));
				HAL_Delay(5);
				return 0;
			}
			Poti_Set_RDAC(poti_value, channel, hspi1);
			// Read ADC value
			raw_ADC= read_ADC(0x00);
			value_ADC = voltage_ADC(raw_ADC);

			if (value_ADC < (Vref-.3)){ // if it goes to far
				sprintf(txBuf, "Poti: %i, V: %.3f -> ", poti_value, value_ADC);
				CDC_Transmit_FS((uint8_t *)txBuf, strlen((char *)txBuf));
				poti_value += 10000;
				if (poti_value > 20000)
					poti_value = 20000;
				Poti_Set_RDAC(poti_value, channel, hspi1);
				raw_ADC = read_ADC(0x00);
				value_ADC = voltage_ADC(raw_ADC);
				sprintf(txBuf, "Poti: %i, V: %.3f \n", poti_value, value_ADC);
				CDC_Transmit_FS((uint8_t *)txBuf, strlen((char *)txBuf));
			}
		}
	}
	sprintf(txBuf, "Poti: %i, V: %.3f \n", poti_value, value_ADC);
	CDC_Transmit_FS((uint8_t *)txBuf, strlen((char *)txBuf));
	HAL_Delay(5);
	return poti_value;
}
//////////////////////////////////////////// End Calibration /////////////////////////////////
