/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : main.c
 * @brief          : Main program body
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

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "CD74HC4067.h"		// Multiplexer
#include "AD5270.h"
#include "math.h"


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

UART_HandleTypeDef huart1;

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_I2C1_Init(void);
static void MX_SPI1_Init(void);
static void MX_ADC1_Init(void);
static void MX_ADC2_Init(void);
static void MX_USART1_UART_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
uint8_t SPI_Data[2] = {0x1C, 0x03};
uint8_t POTIA[2] = {0x07, 0xff};
uint8_t cmd_ADC[2];
//uint8_t POTIA[2] = {0x0C, 0x00};
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
	// Variable definition
	uint8_t UART_Data[25] = "Test UART communication :";
	uint8_t Data[11] = " Data sent ";
	uint16_t Res_value;
	//uint8_t ResValUint[2];
	uint8_t *ADC_RX_buffer;//[3];// = {0x2, 0x00, 0x33, 0x33};


  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_I2C1_Init();
  MX_SPI1_Init();
  MX_ADC1_Init();
  MX_ADC2_Init();
  MX_USART1_UART_Init();
  /* USER CODE BEGIN 2 */

	mux_channel(0);  // Select mux channel (for both mux)
	Poti_SPI_Init(); // Initialize digital potentiometer

	// Start SPI communication with Digital Poti (AD5270) SPI1_CS_POTIA_Pin
	AD5270_WriteRDAC(600, 'B');

	//Res_value = AD5270_ReadRDAC('B');
	//AD5270_WriteRDAC(1500, 'A');
	/*Res_value= 100.0;
	int rounded = (int)(Res_value*100+0.5);
	Res_value = rounded/100;
	Float_to_uint(Res_value, ResValUint, 2);
	ResValUint[1] = Res_value & 0xff;
	ResValUint[0] = (Res_value >> 8);*/

	/* ADC Output
	 *
	 *  Register CONFIG0: Address 0x1
	 *    XX (if all 0, then 00 full shutdown   11 partial shutdown)		CONFIG0[7:6]
	 *    CLK_SEL[1:0] 10 -> Internal RC Oscillator, no clock output        CONFIG0[5:4]
	 *    CS_SEL[1:0] 00 ->  No current source is applied       			CONFIG0[3:2]
	 *    ADC_MODE[1:0] 11 -> conversion, needs 256 DMCLK time to start     CONFIG0[1:0]
	 *    				10 -> stand by
	 *    so: 0x23 for conversion mode, 0x22 for standby mode
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
	 *  Register CONFIG3: Address 0x4  set to 0xC0
	 *    CONV_MODE[1:0] = 11 -> = Continuous Conversion mode
	 *    DATA_FORMAT[1:0] = 00 ->  the output register shows only the 24-bit value
	 *    CRC_FORMAT 0 default
	 *    EN_CRCCOM 0 default
	 *    EN_OFFCAL 0 -> Disable Digital Offset Calibration
	 *    EN_GAINCAL 0 -> Disable Digital Gain Calibration
	 *
	 *  Register MUX: Address 0x6
	 *    ADC A --- select CH0 -> MUX[7:4] 0000 and CH1 -> MUX[3:0] 0001  0x01
	 *    ADC B --- select CH2 -> MUX[7:4] 0010 and CH3 -> MUX[3:0] 0011  0x23
	 *
	 *  Register ADCDATA address 0x0 -> Latest A/D conversion data output value
	 *
	 *  Send a command 01 (ADC address) 0001 (register) 10 (write)  -> 0x46
	 *
	 */

	// Configure ADC
	config_ADC(0x1,0x22); // Standby mode
	config_ADC(0x4,0xC0); // Configure conversion and gain
	config_ADC(0x6,0x23); // Select ADC B
	config_ADC(0x1,0x23); // Conversion mode


  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
	while (1)
	{
		//Read ADC value
		ADC_RX_buffer = read_ADC(0x00);
		config_ADC(0x6,0x01); // Select ADC A
		ADC_RX_buffer = read_ADC(0x00);
		config_ADC(0x6,0x23); // Select ADC B
		ADC_RX_buffer = read_ADC(0x00);

		//Blink a LED
		HAL_GPIO_TogglePin(GPIOB,LED_STATUS_Pin);

		// Send test message UART
		HAL_UART_Transmit(&huart1, UART_Data,25,20); // Handle_type, data, length, timeout
		HAL_Delay(1000);

		HAL_UART_Transmit(&huart1, ADC_RX_buffer, 4, 20);
		//HAL_UART_Transmit(&huart1, Res_value, 10, 20);
		HAL_Delay(10);
		HAL_UART_Transmit(&huart1, Data,11,20); // Handle_type, data, length, timeout
		HAL_Delay(1000);


		/* Test plots Arduino Editor / Tools / Serial Plotter
		 * RealtimePlotter https://github.com/sebnil/RealtimePlotter
		 * Real time serial data plot (not sure) http://www.fast-product-development.com/real-time-serial-data-plot.html
		 * SlimPLot https://github.com/infomaniac50/projectsimplot/releases
		 * others https://arduino.stackexchange.com/questions/1180/serial-data-plotting-programs
		 * */


    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
	}
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
  /** Initializes the CPU, AHB and APB busses clocks
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 8;
  RCC_OscInitStruct.PLL.PLLN = 168;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 4;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB busses clocks
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
  hspi1.Init.CLKPolarity = SPI_POLARITY_HIGH;
  hspi1.Init.CLKPhase = SPI_PHASE_2EDGE;
  hspi1.Init.NSS = SPI_NSS_SOFT;
  hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_16;
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
  HAL_GPIO_WritePin(GPIOA, SPI1_CS_ADC_Pin|SPI1_CS_Pin, GPIO_PIN_RESET);

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

  /*Configure GPIO pins : SPI1_CS_ADC_Pin SPI1_CS_Pin */
  GPIO_InitStruct.Pin = SPI1_CS_ADC_Pin|SPI1_CS_Pin;
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

// Reverses a string 'str' of length 'len'
void reverse(char* str, int len)
{
	int i = 0, j = len - 1, temp;
	while (i < j) {
		temp = str[i];
		str[i] = str[j];
		str[j] = temp;
		i++;
		j--;
	}
}

// Converts a given integer x to string str[].
// d is the number of digits required in the output.
// If d is more than the number of digits in x,
// then 0s are added at the beginning.
int intToStr(int x, char str[], int d)
{
	int i = 0;
	while (x) {
		str[i++] = (x % 10) + '0';
		x = x / 10;
	}

	// If number of digits required is more, then
	// add 0s at the beginning
	while (i < d)
		str[i++] = '0';

	reverse(str, i);
	str[i] = '\0';
	return i;
}

// Converts a floating-point/double number to a string.
void Float_to_uint(float n, char* res, int afterpoint)
{
	// Extract integer part
	int ipart = (int)n;

	// Extract floating part
	float fpart = n - (float)ipart;

	// convert integer part to string
	int i = intToStr(ipart, res, 0);

	// check for display option after point
	if (afterpoint != 0) {
		res[i] = '.'; // add dot

		// Get the value of fraction part upto given no.
		// of points after dot. The third parameter
		// is needed to handle cases like 233.007
		fpart = fpart * pow(10, afterpoint);

		intToStr((int)fpart, res + i + 1, afterpoint);
	}
}

////////////////////////////////// Digital Potentiometer /////////////////////////////////
/**
   @brief SPI initialization
   @return none
 **/
void Poti_SPI_Init(void)
{
    //pinMode(AD5270_CS_PIN, OUTPUT); // Set CS pin for ADT7310 as output
    //digitalWrite(AD5270_CS_PIN, HIGH);
	hspi1.Init.CLKPolarity = SPI_POLARITY_LOW;  // Change SPI config

	HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIA_Pin, GPIO_PIN_RESET); // Poti A
	HAL_SPI_Transmit(&hspi1, (uint8_t *)SPI_Data, 2, HAL_MAX_DELAY);
	HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIA_Pin, GPIO_PIN_SET);
	HAL_Delay(1);
	HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIB_Pin, GPIO_PIN_RESET); // Poti B
	HAL_SPI_Transmit(&hspi1, (uint8_t *)SPI_Data, 2, HAL_MAX_DELAY);
	HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIB_Pin, GPIO_PIN_SET);
	HAL_Delay(1);

	hspi1.Init.CLKPolarity = SPI_POLARITY_HIGH;  // Change SPI config
    //SPI.setDataMode(SPI_MODE3);
    //delay(1000);

}
uint16_t AD5270_WriteRDAC(uint16_t resistance, unsigned char poti)
{
	//float RDAC_Value;
	//uint16_t setValue;
	uint16_t RDAC_val = AD5270_CalcRDAC(resistance);
	uint8_t RDAC[2];

	hspi1.Init.CLKPolarity = SPI_POLARITY_LOW;  // Change SPI config

	//RDAC_Value = (float)((RDAC_val * MAX_RESISTANCE) / 1024.0); // inverse operation to get actual resistance in the RDAC

	RDAC[1] = RDAC_val & 0xff;
	RDAC[0] = ((RDAC_val >> 8) | WRITE_RDAC);// 0x04);

	//setValue = AD5270_ReadReg(READ_CTRL_REG, poti);
	//Float_to_uint(RDAC_Value,setValue, 2);

	if(strcmp(poti, 'A') ==1){			// Select Poti A or B
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIA_Pin, GPIO_PIN_RESET);
		HAL_SPI_Transmit(&hspi1, (uint8_t *)RDAC, 2, HAL_MAX_DELAY);
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIA_Pin, GPIO_PIN_SET);}
	else{
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIB_Pin, GPIO_PIN_RESET);
		HAL_SPI_Transmit(&hspi1, (uint8_t *)RDAC, 2, HAL_MAX_DELAY);
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIB_Pin, GPIO_PIN_SET);}

	HAL_Delay(5);

	hspi1.Init.CLKPolarity = SPI_POLARITY_HIGH;  // Change SPI config

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

	if(strcmp(poti, 'A') ==1)			// Select Poti A or B

		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIA_Pin, GPIO_PIN_RESET);
	else
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIB_Pin, GPIO_PIN_RESET);

	for(count = 0;count < bytesNumber;count++)// write instruction
	{
		HAL_UART_Transmit(&huart1, data[count],strlen(data[count]),20);
		//SPI.transfer(data[count]);
	}

	if(strcmp(poti, 'A') ==1)			// Select Poti A or B
		//digitalWrite(AD5270_CS_PIN, HIGH);
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIA_Pin, GPIO_PIN_SET);
	else
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIB_Pin, GPIO_PIN_SET);
	//}

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

	for(count = 0;count <= bytesNumber;count++)
	{
		if(count == 0)
			writeData[count] = data[count];
		else
			writeData[count] = 0xAA;    /* dummy value */
	}

	if(strcmp(poti, 'A') ==1)			// Select Poti A or B
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIA_Pin, GPIO_PIN_RESET);
	else
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIB_Pin, GPIO_PIN_RESET);

	HAL_UART_Transmit(&huart1, writeData[0], strlen(writeData[0]),20);

	for(count = 1; count < bytesNumber + 1;count++)
	{
		//data[count - 1] = SPI.transfer(writeData[count]);
		data[count - 1] = HAL_UART_Transmit(&huart1, writeData[count],strlen(writeData[count]),20);
	}

	//if(convFlag == 0){
	//digitalWrite(AD5270_CS_PIN, HIGH);
	if(strcmp(poti, 'A') ==1)			// Select Poti A or B
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIA_Pin, GPIO_PIN_SET);
	else
		HAL_GPIO_WritePin(GPIOB, SPI1_CS_POTIB_Pin, GPIO_PIN_SET);
	//}
}

////////////////////////////////// END Digital Potentiometer /////////////////////////////////

//////////////////////////////////////////// ADC /////////////////////////////////
void config_ADC(uint8_t ADC_reg, uint8_t command){
	cmd_ADC[0] = (ADC_ADDRESS << 6) | (ADC_reg << 2) | ADC_WRITE;
	cmd_ADC[1] = command;

	HAL_GPIO_WritePin(GPIOA, SPI1_CS_ADC_Pin, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOA, SPI1_CS_Pin, GPIO_PIN_RESET);
	HAL_SPI_Transmit(&hspi1, (uint8_t *)cmd_ADC, 2, HAL_MAX_DELAY);
	HAL_GPIO_WritePin(GPIOA, SPI1_CS_ADC_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOA, SPI1_CS_Pin, GPIO_PIN_SET);
}

uint8_t read_ADC(uint8_t ADC_reg){
	uint8_t ADC_RX_buffer[3];
	uint8_t Read_ADC[1];

	Read_ADC[0] = (ADC_ADDRESS << 6) | (ADC_reg << 2) | ADC_READ;

	HAL_GPIO_WritePin(GPIOA, SPI1_CS_Pin, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(GPIOA, SPI1_CS_ADC_Pin, GPIO_PIN_RESET);
	HAL_SPI_Transmit(&hspi1, (uint8_t *)Read_ADC, 1, HAL_MAX_DELAY);
	HAL_SPI_Receive(&hspi1, (uint8_t *)ADC_RX_buffer, 3, HAL_MAX_DELAY);
	HAL_GPIO_WritePin(GPIOA, SPI1_CS_ADC_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(GPIOA, SPI1_CS_Pin, GPIO_PIN_SET);
	return ADC_RX_buffer;
}

/////////////////////////////////////////// End ADC /////////////////////////////////
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
