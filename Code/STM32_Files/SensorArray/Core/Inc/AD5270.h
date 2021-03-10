/**
*   @file     AD5270.h
*   @brief    Header file for AD5270 rheostat
*   @author   Analog Devices Inc. & Minerva Vargas
*
********************************************************************************/

#ifndef AD5270_H
#define AD5270_H

#include "stdint.h"
#include "stm32f4xx_hal.h"

#define MAX_RESISTANCE                    20000
#define WRITE_OPERATION_50TP_TIMEOUT      350
#define MEMORY_OPERATION_TIMEOUT          6
#define REG_OPERATION_TIMEOUT             2

#define SHIFT_REG  // 16 bits

    /// AD5270 commands
    typedef enum {
        WRITE_RDAC          =  0x04,    ///< Write to the RDAC Register
        READ_RDAC           =  0x08,    ///< Read from the RDAC Register
		MASK_RDAC			=  0x03,	///< Masks first 2 bites of data
    } AD5270Commands_t;

    typedef enum {
        NORMAL_MODE = 0,
        SHUTDOWN_MODE = 1
    } AD5270Modes_t;

    uint16_t AD5270_CalcRDAC(uint16_t resistance);

    void Poti_SPI_Init(SPI_HandleTypeDef *hspi1);
    void Poti_SPI_Write(unsigned char* data, unsigned char bytesNumber, unsigned char poti);
    void Poti_SPI_Read(unsigned char* data, unsigned char bytesNumber, unsigned char poti);
    uint16_t Poti_Set_RDAC(uint16_t resistance, unsigned char poti, SPI_HandleTypeDef *hspi1);


#endif
