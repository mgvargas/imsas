/*
 * command.c
 *
 *  Created on: 22 Jan 2021
 *      Author: Robert
 */


#include "command.h"
#include "command_definition.h"
#include "usb_device.h"
#include "usbd_cdc_if.h"

//----------------------------------------------------------------------------------------------------
uint8_t cast_upper_char(uint8_t input)
{
	if((input >= 'A') & (input <= 'Z'))
	{
		return (input + 32);
	}
	return input;
}

//----------------------------------------------------------------------------------------------------
uint8_t decode_command(uint8_t *buffer)
{
	uint8_t start,end = 0;
	uint8_t id = 0;
	uint8_t cmd_pointer= 0;

	for(cmd_pointer=0; cmd_pointer < MAX_COMMAND_BUFFER_LENGTH; cmd_pointer++)
	{
		if(*(buffer+cmd_pointer) == '#')
		{
			cmd_pointer ++;
			start = cmd_pointer;
			end = start;

			while (end == start)
			{
				if(*(buffer+cmd_pointer) == ':')
				{
					end = cmd_pointer;
					break;
				}
				cmd_pointer++;
				if(cmd_pointer == MAX_COMMAND_BUFFER_LENGTH)
				{
					end = MAX_COMMAND_BUFFER_LENGTH;
					break;
				}
			}
			break;
		}else if(cmd_pointer == (MAX_COMMAND_BUFFER_LENGTH-1))
		{
			return 0;
		}


		cmd_pointer++;
	}

	id = get_command_id(start, end, buffer);

	if(id == 0)
	{
		return 0;
	}

	return (command_table[id-1].cmd(id-1,buffer + end));
}

//----------------------------------------------------------------------------------------------------
uint8_t get_command_id(uint8_t start, uint8_t end, uint8_t *buffer)
{
	uint8_t i,j = 0;
	uint8_t *buffer_ptr;

	for(i=0;i< MAX_COMMANDS; i++)
	{
		j = 0;
		buffer_ptr = buffer + start;

		while (j <= end)
		{
			*buffer_ptr = cast_upper_char(*buffer_ptr);

			if(*buffer_ptr != command_table[i].command[j])
			{
				break;
			}

			buffer_ptr++;
			j++;

			if((command_table[i].command[j] == '\0') && (j == (end - start)))
			{
				return(command_table[i].id);
			}
		}
	}
	return 0;
}

//----------------------------------------------------------------------------------------------------
uint8_t get_command_parameter(uint8_t *buffer)
{
	uint8_t count_param = 0;
	uint8_t *buffer_pointer = buffer;

	if(*buffer_pointer == '\0')
	{
		return 0;
	}
	if((*buffer_pointer == ':') && (*(buffer_pointer+1) == '\0'))
	{
		return 0;
	}
	count_param = 1;
	while(*buffer_pointer != '\0')
	{
		if(*buffer_pointer == ',')
		{
			count_param++;
		}
		buffer_pointer += 1;
	}
	return count_param;
}

uint32_t get_number(uint8_t *buffer)
{
	uint8_t i;
	char ch = 0;
	uint32_t value = 0;
	for (i = 0; i<MAX_COMMAND_PARAM; i++)
	{
		value = 0;
		if(*buffer == '\0')
		{
			return 0;
		}

		if((*buffer == ':') && (*(buffer+1) == '\0'))
		{
			return 0;
		}

		if( (*buffer == ',') | (*buffer == ':') )
		{
			buffer++;
		}

		while((ch=*(buffer++)) != 0)
		{
			if((ch >= '0') & (ch <= '9'))
			{
				value *= 10;
				value += ch - '0';
			}
			else
			{
				break;
			}
		}
		command_param_list[i] = value;
	}
	return 1;

}
