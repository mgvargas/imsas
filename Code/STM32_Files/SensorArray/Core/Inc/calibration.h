/*
 * Calibration.h
 *
 *  Created on: 31 Jan 2021
 *      Author: mvargas
 */

#ifndef INC_CALIBRATION_H_
#define INC_CALIBRATION_H_

void calibrate_potis(SPI_HandleTypeDef *hspi1);
int balance_one_channel(unsigned char channel, SPI_HandleTypeDef *hspi1);

#endif /* INC_CALIBRATION_H_ */
