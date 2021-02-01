/*
 * command.h
 *
 *  Created on: 22 Jan 2021
 *      Author: Robert
 */

#ifndef SRC_COMMAND_H_
#define SRC_COMMAND_H_



#include "stm32f4xx_hal.h"

#define MAX_COMMAND_BUFFER_LENGTH 		63
#define MAX_COMMAND_LENGTH 				15
#define MAX_COMMAND_PARAM 				6

uint32_t command_param_list[MAX_COMMAND_PARAM];

/**
 * Format of all commands
 * \param id: A unique number for each command
 * \param command: the unique name of the command
 * \param nr_param: The number of input parameters a function needs to work
 * \param *cmd: A pointer to a function which is called by the command
 */
struct command_format{
	uint8_t id;
	uint8_t command[MAX_COMMAND_LENGTH];
	uint8_t nr_param;
	uint8_t (*cmd)(uint8_t id, uint8_t *buffer);
};

/**
 *	This function decodes the command send to the microcontroller
 *	\param *buffer is a pointer to the buffer where the data is saved which was send to the microcontroller
 */
uint8_t decode_command(uint8_t *buffer);


/**
 * This function detects upper letters and cast them to small letters
 * \param input is the input send over usb
 */
uint8_t cast_upper_char(uint8_t input);

/**
 * This function gets the id of a command by comparing the input with elements of a list
 * If the inputs matches with one element of the list it returns the id
 * \param start: start point of the input command after #
 * \param end: end point of the input before :
 * \param *buffer: pointer to the stored data input
 */
uint8_t get_command_id(uint8_t start, uint8_t end, uint8_t *buffer);

/**
 * This function extracts the parameter of a command and stores the values in command_param_list in the uint32_t format
 * The command_param_list can be accessed outside the function
 * \param *buffer: pointer to input data where the parameter starts; : or 1 element after :
 */
uint32_t get_number(uint8_t *buffer);

/**
 * This function counts the number of parameter
 * It can be used to detect a mismatch in the input parameter compared to the expected parameters
 * \param *buffer: pointer to input data where the parameter starts; : or 1 element after :
 */
uint8_t get_command_parameter(uint8_t *buffer);

#endif /* SRC_COMMAND_H_ */


