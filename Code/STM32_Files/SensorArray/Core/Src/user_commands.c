/*
 * user_commands.c
 *
 *  Created on: 30 Jan 2021
 *      Author: Robert
 */

#include "command.h"
#include "user_commands.h"
#include "usb_device.h"
#include "usbd_cdc_if.h"

extern struct command_format command_table[];
uint8_t msg_err_empty[26] = "Error: Parameter mismatch\n";

//----------------------------------------------------------------------------------------------------
uint8_t cmd_test(uint8_t id, uint8_t *buffer)
{
	char *usb_msg = malloc(30);
	strcpy(usb_msg, "Function cmd_test called \n");
	CDC_Transmit_FS((uint8_t *)usb_msg, 30);
	HAL_Delay(10);
	if(command_table[id].nr_param != get_command_parameter(buffer))
	{
		CDC_Transmit_FS(msg_err_empty, strlen((char *)msg_err_empty));
		return 0;
	}
	return 1;

}

//----------------------------------------------------------------------------------------------------
uint8_t cmd_get_poti(uint8_t id, uint8_t *buffer)
{
	uint32_t sensorAB;
	uint32_t position;


	if(command_table[id].nr_param != get_command_parameter(buffer))
	{
		CDC_Transmit_FS(msg_err_empty, strlen((char *)msg_err_empty));
		return 0;
	}

	get_number(buffer);

	sensorAB = command_param_list[0];
	position = command_param_list[1];

	//do something with parameter sensorAB an position
	return 1;
}

//----------------------------------------------------------------------------------------------------
uint8_t cmd_test2(uint8_t id, uint8_t *buffer)
{
	char *usb_msg = malloc(30);
	strcpy(usb_msg, "Function cmd_test3 called \n");
	CDC_Transmit_FS((uint8_t *)usb_msg, 30);
	HAL_Delay(10);
	if(command_table[id].nr_param != get_command_parameter(buffer))
	{
		CDC_Transmit_FS(msg_err_empty, strlen((char *)msg_err_empty));
		return 0;
	}
	return 1;
}

//----------------------------------------------------------------------------------------------------
uint8_t cmd_test3(uint8_t id, uint8_t *buffer)
{
	char *usb_msg = malloc(30);
	strcpy(usb_msg, "Function cmd_test3 called \n");
	CDC_Transmit_FS((uint8_t *)usb_msg, 30);
	HAL_Delay(10);
	if(command_table[id].nr_param != get_command_parameter(buffer))
	{
		CDC_Transmit_FS(msg_err_empty, strlen((char *)msg_err_empty));
		return 0;
	}
	return 1;
}

//----------------------------------------------------------------------------------------------------
uint8_t cmd_test4(uint8_t id, uint8_t *buffer)
{
	CDC_Transmit_FS(command_table[id].command, strlen((char *)command_table[id].command));
	if(command_table[id].nr_param != get_command_parameter(buffer))
	{
		CDC_Transmit_FS(msg_err_empty, strlen((char *)msg_err_empty));
		return 0;
	}
	return 1;
}

