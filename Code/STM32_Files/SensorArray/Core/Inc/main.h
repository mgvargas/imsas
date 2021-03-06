/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
////////////////////////////////// Commands over USB /////////////////////////////////
#define MAX_USB_BUFFER_LENGTH		256

typedef struct usb_buffer{
	uint8_t data [MAX_USB_BUFFER_LENGTH-1];
	uint8_t new_data; // = 0;
	uint32_t length;// = 0;
}usb_buffer;

uint8_t usb_data_reset(void);
////////////////////////////////// END Commands over USB /////////////////////////////////

////////////////////////////////// Digital Potentiometer /////////////////////////////////

/* Write data mode */
typedef enum {
   UART_WRITE_NO_INT = 1,            /* Write data when interrupts are disabled */
   UART_WRITE_IN_INT,               /* Write data while in an interrupt routine */
   UART_WRITE
} enWriteData;
int Potentiometer_values_A[10];// = {10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000};
int Potentiometer_values_B[10];// = {10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000};
////////////////////////////////// END Digital Potentiometer /////////////////////////////////

////////////////////////////////// ADC /////////////////////////////////
typedef enum {
   ADC_ADDRESS = 0x01,          	/* Address of the ADC */
   ADC_WRITE = 0x02,            	/* Incremental Write Starting at Register Address */
   ADC_READ = 0x01, 				/* Static Read, Register Address is read continuously*/
   ADC_start = 0x1010,				/* Send cdm 00 + ADC_start as address */
   ADC_A_Select = 0x01,				/* if sent to address 6, selects ADC A - 0x01 for differential mode,  08 for the other*/
   ADC_B_Select = 0x23,				/* if sent to address 6, selects ADC B */
   Array_mode = 0x10,				/* Sensor array mode */
   Single_mode = 0x200,				/* Single array mode */
} adc_commands;

////////////////////////////////// End ADC /////////////////////////////////

////////////////////////////////// Read Sensors ///////////////////////////
void read_single_sensor(void);
void read_sensor_array(void);
////////////////////////////////// End Read Sensors ///////////////////////////

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define MUXA_S0_Pin GPIO_PIN_0
#define MUXA_S0_GPIO_Port GPIOC
#define MUXA_S1_Pin GPIO_PIN_1
#define MUXA_S1_GPIO_Port GPIOC
#define MUXA_S2_Pin GPIO_PIN_2
#define MUXA_S2_GPIO_Port GPIOC
#define MUXA_S3_Pin GPIO_PIN_3
#define MUXA_S3_GPIO_Port GPIOC
#define ADC_Amplifier_A_Pin GPIO_PIN_1
#define ADC_Amplifier_A_GPIO_Port GPIOA
#define ADC_Amplifier_B_Pin GPIO_PIN_2
#define ADC_Amplifier_B_GPIO_Port GPIOA
#define SPI2_CS_ADC_Pin GPIO_PIN_3
#define SPI2_CS_ADC_GPIO_Port GPIOA
#define SPI1_CS_Pin GPIO_PIN_4
#define SPI1_CS_GPIO_Port GPIOA
#define MUXB_S0_Pin GPIO_PIN_4
#define MUXB_S0_GPIO_Port GPIOC
#define MUXB_S1_Pin GPIO_PIN_5
#define MUXB_S1_GPIO_Port GPIOC
#define SPI1_CS_POTIA_Pin GPIO_PIN_0
#define SPI1_CS_POTIA_GPIO_Port GPIOB
#define SPI1_CS_POTIB_Pin GPIO_PIN_1
#define SPI1_CS_POTIB_GPIO_Port GPIOB
#define LED_STATUS_Pin GPIO_PIN_12
#define LED_STATUS_GPIO_Port GPIOB
#define MUXB_S2_Pin GPIO_PIN_6
#define MUXB_S2_GPIO_Port GPIOC
#define MUXB_S3_Pin GPIO_PIN_7
#define MUXB_S3_GPIO_Port GPIOC
#define PushButton_Calibration_Pin GPIO_PIN_8
#define PushButton_Calibration_GPIO_Port GPIOC
#define Switch_Mode_Pin GPIO_PIN_9
#define Switch_Mode_GPIO_Port GPIOC
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
