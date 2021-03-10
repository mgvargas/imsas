/*
 * ADC.h
 *
 *  Created on: 31 Jan 2021
 *      Author: mvargas
 */

#ifndef INC_ADC_H_
#define INC_ADC_H_

#include "main.h"
#include "stdint.h"

////////////////////////////////// ADC /////////////////////////////////
void config_ADC(uint8_t ADC_reg, uint8_t command);
void config_ADC2(uint8_t ADC_reg);
uint8_t * read_ADC(uint8_t ADC_reg);
float voltage_ADC(uint8_t *ADC_RX_buffer_pointer);
////////////////////////////////// End ADC /////////////////////////////////


#endif /* INC_ADC_H_ */
