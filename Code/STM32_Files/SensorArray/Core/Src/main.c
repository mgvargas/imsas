/* USER CODE BEGIN Header */
/**						IMSAS, Minerva Vargas
 ******************************************************************************
 * @file           : main.c
 * @brief          : Hair Sensor Array Measurement Board
 ******************************************************************************
 * @attention
 *
 * Measurement board for an array of 9 artificial hair flow sensors, each one with
 * two half Wheatstone bridges (Channel A and B). The sensors outputs are connected
 * to a multiplexer (CD74HC4067), compared with the Vout of a digital potentiometer
 * and amplified. The amplified output is read with an ADC (MCP3561), the measurements
 * are sent to an STM32F405 microcontroller.
 *
 * This software component is licensed by ST under BSD 3-Clause license,
 * the "License"; You may not use this file except in compliance with the
 * License. You may obtain a copy of the License at:
 *                        opensource.org/licenses/BSD-3-Clause
 *
 ******************************************************************************
 */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "usb_device.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "CD74HC4067.h"		// Multiplexer
#include "ADC.h"			// ADC
#include "AD5270.h"			// Digital potentiometer
#include "calibration.h"
#include "command.h"
#include "math.h"
#include "usbd_cdc_if.h"
#include "string.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
ADC_HandleTypeDef hadc1;
ADC_HandleTypeDef hadc2;

I2C_HandleTypeDef hi2c1;

SPI_HandleTypeDef hspi1;
SPI_HandleTypeDef hspi2;

UART_HandleTypeDef huart1;

/* USER CODE BEGIN PV */
usb_buffer usb_data;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_I2C1_Init(void);
static void MX_SPI1_Init(void);
static void MX_ADC1_Init(void);
static void MX_ADC2_Init(void);
static void MX_USART1_UART_Init(void);
static void MX_SPI2_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
/////////////////////////// Global Variables //////////////////////////////////
//uint8_t POTIA[2] = {0x07, 0xff};
// ADC Values
//uint8_t cmd_ADC[2];
uint8_t ADC_RX_buffer[3];
int raw_ADC;
int i;

// Read sensors
float Sensor_values_A[10];
float Sensor_values_B[10];
/////////////////////////// end Global Variables //////////////////////////////////
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
	// Variable definition
	//uint8_t UART_Data[25] = "Test UART communication :";

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */
	HAL_Delay(1000);
  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_I2C1_Init();
  MX_SPI1_Init();
  MX_ADC1_Init();
  MX_ADC2_Init();
  MX_USART1_UART_Init();
  MX_SPI2_Init();
  MX_USB_DEVICE_Init();
  /* USER CODE BEGIN 2 */
	HAL_Delay(2000);
	mux_channel(0);  // Select mux channel (for both mux)
	HAL_Delay(200);

	// Configure ADC
	config_ADC(0x0D,0xA5); // Lock register: Write access is allowed on the full register map
	config_ADC(0x01,0xE3); // Conversion mode
	config_ADC(0x02,0x1C); // Oversampling rate
	config_ADC(0x04,0xC0); // Configure conversion and gain
	config_ADC(0x05,0x04); // Configure IRQ register, only a test
	config_ADC(0x06,ADC_A_Select); // Select ADC A
	config_ADC2(0x07); // Scan register


	HAL_Delay(100);


  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
	while (1)
	{
		// Start SPI communication with Digital Poti (AD5270) SPI1_CS_POTIA_Pin
		Poti_SPI_Init(&hspi1); // Initialize digital potentiometer
		HAL_Delay(20);
		calibrate_potis(&hspi1);

		// Mode single sensor
		if (HAL_GPIO_ReadPin(GPIOC, Switch_Mode_Pin)){
			HAL_GPIO_WritePin(GPIOB, LED_STATUS_Pin, GPIO_PIN_SET);
			read_single_sensor();
		}
		// Mode sensor array
		else{
			HAL_GPIO_WritePin(GPIOB, LED_STATUS_Pin, GPIO_PIN_RESET);
			read_sensor_array();
		}
		// Check if a new command came over USB
		if(usb_data.new_data == 1)
		{
			decode_command(&usb_data.data[0]);
			usb_data_reset();
		}
		HAL_Delay(20);

		// Send test message UART
		/*HAL_UART_Transmit(&huart1, UART_Data,25,20); // Handle_type, data, length, timeout
		HAL_Delay(200);
		HAL_UART_Transmit(&huart1, ADC_RX_buffer, 3, 20);
		//HAL_Delay(10);
		//HAL_UART_Transmit(&huart1, Data,11,20); // Handle_type, data, length, timeout */


	}

    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */

  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 8;
  RCC_OscInitStruct.PLL.PLLN = 168;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 7;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief ADC1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC1_Init(void)
{

  /* USER CODE BEGIN ADC1_Init 0 */

  /* USER CODE END ADC1_Init 0 */

  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC1_Init 1 */

  /* USER CODE END ADC1_Init 1 */
  /** Configure the global features of the ADC (Clock, Resolution, Data Alignment and number of conversion)
  */
  hadc1.Instance = ADC1;
  hadc1.Init.ClockPrescaler = ADC_CLOCK_SYNC_PCLK_DIV4;
  hadc1.Init.Resolution = ADC_RESOLUTION_12B;
  hadc1.Init.ScanConvMode = DISABLE;
  hadc1.Init.ContinuousConvMode = DISABLE;
  hadc1.Init.DiscontinuousConvMode = DISABLE;
  hadc1.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_NONE;
  hadc1.Init.ExternalTrigConv = ADC_SOFTWARE_START;
  hadc1.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc1.Init.NbrOfConversion = 1;
  hadc1.Init.DMAContinuousRequests = DISABLE;
  hadc1.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
  if (HAL_ADC_Init(&hadc1) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_1;
  sConfig.Rank = 1;
  sConfig.SamplingTime = ADC_SAMPLETIME_3CYCLES;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC1_Init 2 */

  /* USER CODE END ADC1_Init 2 */

}

/**
  * @brief ADC2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC2_Init(void)
{

  /* USER CODE BEGIN ADC2_Init 0 */

  /* USER CODE END ADC2_Init 0 */

  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC2_Init 1 */

  /* USER CODE END ADC2_Init 1 */
  /** Configure the global features of the ADC (Clock, Resolution, Data Alignment and number of conversion)
  */
  hadc2.Instance = ADC2;
  hadc2.Init.ClockPrescaler = ADC_CLOCK_SYNC_PCLK_DIV4;
  hadc2.Init.Resolution = ADC_RESOLUTION_12B;
  hadc2.Init.ScanConvMode = DISABLE;
  hadc2.Init.ContinuousConvMode = DISABLE;
  hadc2.Init.DiscontinuousConvMode = DISABLE;
  hadc2.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_NONE;
  hadc2.Init.ExternalTrigConv = ADC_SOFTWARE_START;
  hadc2.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc2.Init.NbrOfConversion = 1;
  hadc2.Init.DMAContinuousRequests = DISABLE;
  hadc2.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
  if (HAL_ADC_Init(&hadc2) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_2;
  sConfig.Rank = 1;
  sConfig.SamplingTime = ADC_SAMPLETIME_3CYCLES;
  if (HAL_ADC_ConfigChannel(&hadc2, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC2_Init 2 */

  /* USER CODE END ADC2_Init 2 */

}

/**
  * @brief I2C1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_I2C1_Init(void)
{

  /* USER CODE BEGIN I2C1_Init 0 */

  /* USER CODE END I2C1_Init 0 */

  /* USER CODE BEGIN I2C1_Init 1 */

  /* USER CODE END I2C1_Init 1 */
  hi2c1.Instance = I2C1;
  hi2c1.Init.ClockSpeed = 100000;
  hi2c1.Init.DutyCycle = I2C_DUTYCYCLE_2;
  hi2c1.Init.OwnAddress1 = 0;
  hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c1.Init.OwnAddress2 = 0;
  hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN I2C1_Init 2 */

  /* USER CODE END I2C1_Init 2 */

}

/**
  * @brief SPI1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI1_Init(void)
{

  /* USER CODE BEGIN SPI1_Init 0 */

  /* USER CODE END SPI1_Init 0 */

  /* USER CODE BEGIN SPI1_Init 1 */

  /* USER CODE END SPI1_Init 1 */
  /* SPI1 parameter configuration*/
  hspi1.Instance = SPI1;
  hspi1.Init.Mode = SPI_MODE_MASTER;
  hspi1.Init.Direction = SPI_DIRECTION_2LINES;
  hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi1.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi1.Init.CLKPhase = SPI_PHASE_2EDGE;
  hspi1.Init.NSS = SPI_NSS_SOFT;
  hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_4;
  hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi1.Init.CRCPolynomial = 10;
  if (HAL_SPI_Init(&hspi1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI1_Init 2 */

  /* USER CODE END SPI1_Init 2 */

}

/**
  * @brief SPI2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI2_Init(void)
{

  /* USER CODE BEGIN SPI2_Init 0 */

  /* USER CODE END SPI2_Init 0 */

  /* USER CODE BEGIN SPI2_Init 1 */

  /* USER CODE END SPI2_Init 1 */
  /* SPI2 parameter configuration*/
  hspi2.Instance = SPI2;
  hspi2.Init.Mode = SPI_MODE_MASTER;
  hspi2.Init.Direction = SPI_DIRECTION_2LINES;
  hspi2.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi2.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi2.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi2.Init.NSS = SPI_NSS_SOFT;
  hspi2.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_64;
  hspi2.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi2.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi2.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi2.Init.CRCPolynomial = 10;
  if (HAL_SPI_Init(&hspi2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI2_Init 2 */

  /* USER CODE END SPI2_Init 2 */

}

/**
  * @brief USART1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART1_UART_Init(void)
{

  /* USER CODE BEGIN USART1_Init 0 */

  /* USER CODE END USART1_Init 0 */

  /* USER CODE BEGIN USART1_Init 1 */

  /* USER CODE END USART1_Init 1 */
  huart1.Instance = USART1;
  huart1.Init.BaudRate = 115200;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART1_Init 2 */

  /* USER CODE END USART1_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOC, MUXA_S0_Pin|MUXA_S1_Pin|MUXA_S2_Pin|MUXA_S3_Pin
                          |MUXB_S0_Pin|MUXB_S1_Pin|MUXB_S2_Pin|MUXB_S3_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, SPI2_CS_ADC_Pin|SPI1_CS_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIA_Pin|SPI1_CS_POTIB_Pin|LED_STATUS_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pins : MUXA_S0_Pin MUXA_S1_Pin MUXA_S2_Pin MUXA_S3_Pin
                           MUXB_S0_Pin MUXB_S1_Pin MUXB_S2_Pin MUXB_S3_Pin */
  GPIO_InitStruct.Pin = MUXA_S0_Pin|MUXA_S1_Pin|MUXA_S2_Pin|MUXA_S3_Pin
                          |MUXB_S0_Pin|MUXB_S1_Pin|MUXB_S2_Pin|MUXB_S3_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : SPI2_CS_ADC_Pin SPI1_CS_Pin */
  GPIO_InitStruct.Pin = SPI2_CS_ADC_Pin|SPI1_CS_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : SPI1_CS_POTIA_Pin SPI1_CS_POTIB_Pin LED_STATUS_Pin */
  GPIO_InitStruct.Pin = SPI1_CS_POTIA_Pin|SPI1_CS_POTIB_Pin|LED_STATUS_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : PushButton_Calibration_Pin Switch_Mode_Pin */
  GPIO_InitStruct.Pin = PushButton_Calibration_Pin|Switch_Mode_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */


////////////////////////////////// Read: Array or single sensor mode ///////////////////

void read_sensor_array(void){
	char usb_array_A[85] = "Array_A ";
	char usb_array_B[85] = "Array_B ";
	char values_A[75];
	char values_B[75];
	uint8_t *ADC_RX_buffer_pointer;
	int sensor;

	while(1){
		char *posA = values_A;

		// For channel A
		config_ADC(0x6, ADC_A_Select);
		for (sensor=1; sensor <= 9; sensor++){
			// Set calibrated potentiometer values
			mux_channel(sensor);
			Poti_Set_RDAC(Potentiometer_values_A[sensor], 'A', &hspi1);
			//HAL_Delay(10);
			//Read ADC
			ADC_RX_buffer_pointer = read_ADC(0x00);
			Sensor_values_A[sensor] = voltage_ADC(ADC_RX_buffer_pointer);

			// Save value as string array
			if (sensor<9)
				posA += sprintf(posA, "%.4f, ", Sensor_values_A[sensor]);
			else
				posA += sprintf(posA, "%.4f\n", Sensor_values_A[sensor]);
		}
		// Send array
		strcat(usb_array_A, values_A);
		CDC_Transmit_FS((uint8_t *) usb_array_A, strlen(usb_array_A));
		strcpy(usb_array_A, "Array_A "); // Reset string value

		// For channel B
		char *posB = values_B;
		config_ADC(0x6, ADC_B_Select);
		for (sensor=1; sensor <= 9; sensor++){
			// Set calibrated potentiometer values
			mux_channel(sensor);
			Poti_Set_RDAC(Potentiometer_values_B[sensor], 'B', &hspi1);
			//HAL_Delay(10);

			//Read ADC
			ADC_RX_buffer_pointer = read_ADC(0x00);
			Sensor_values_B[sensor] = voltage_ADC(ADC_RX_buffer_pointer);

			// Save value as string array
			if (sensor<9)
				posB += sprintf(posB, "%.4f, ", Sensor_values_B[sensor]);
			else
				posB += sprintf(posB, "%.4f\n", Sensor_values_B[sensor]);
		}
		// Send array B
		strcat(usb_array_B, values_B);
		CDC_Transmit_FS((uint8_t *) usb_array_B, strlen(usb_array_B));
		strcpy(usb_array_B, "Array_B "); // Reset string value

		//Switch between single sensor and array mode
		if ((HAL_GPIO_ReadPin(GPIOC, Switch_Mode_Pin)) != 0){
				break;}

		// Check if a new command came over USB
		if(usb_data.new_data == 1)
		{
			decode_command(&usb_data.data[0]);
			usb_data_reset();
		}
	}
}

void read_single_sensor(){
	char usb_msg_A[10] = "SA ";
	char usb_msg_B[10] = "SB ";
	char txBuf[8];
	float measured_voltage;
	uint8_t *ADC_RX_buffer_pointer;

	mux_channel(0);
	Poti_Set_RDAC(Potentiometer_values_A[0], 'A', &hspi1);
	Poti_Set_RDAC(Potentiometer_values_B[0], 'B', &hspi1);

	while(1){
		//Read ADC value A and send via USB
		config_ADC(0x6, ADC_A_Select);
		HAL_Delay(20);
		ADC_RX_buffer_pointer = read_ADC(0x00);
		measured_voltage = voltage_ADC(ADC_RX_buffer_pointer);

		sprintf(txBuf, "%.4f\n", measured_voltage);
		strcat(usb_msg_A, txBuf);
		CDC_Transmit_FS((uint8_t *) usb_msg_A, strlen(usb_msg_A));

		strcpy(usb_msg_A, "SA "); // Reset string value

		//Read ADC value B
		config_ADC(0x6, ADC_B_Select);
		HAL_Delay(20);
		ADC_RX_buffer_pointer = read_ADC(0x00);
		measured_voltage = voltage_ADC(ADC_RX_buffer_pointer);

		sprintf(txBuf, "%.4f\n", measured_voltage);
		strcat(usb_msg_B, txBuf);
		CDC_Transmit_FS((uint8_t *) usb_msg_B, strlen(usb_msg_B));

		strcpy(usb_msg_B, "SB "); // Reset string value


		if ((HAL_GPIO_ReadPin(GPIOC, Switch_Mode_Pin)) != 1){
			break;

		// Check if a new command came over USB
		if(usb_data.new_data == 1)
		{
			decode_command(&usb_data.data[0]);
			usb_data_reset();
		}

		}
	}
}
//////////////////////////////////  End Read: Array or single sensor mode ///////////////////

////////////////////////////////// Command over USB ///////////////////
void CDC_ReceiveCallBack(uint8_t *buf, uint32_t len)
{
	memcpy(usb_data.data, buf, len);
	usb_data.new_data = 1;
	usb_data.length = len;
}

uint8_t usb_data_reset(void)
{
	uint32_t i = 0;

	for(i = 0; i<MAX_USB_BUFFER_LENGTH; i++)
	{
		usb_data.data[i] = 0;
	}
	usb_data.new_data = 0;
	return 1;
}
////////////////////////////////// END Command over USB ///////////////////

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
	/* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
	/* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
