/*
 * command_definition.h
 *
 *  Created on: 30 Jan 2021
 *      Author: Robert
 */

#ifndef SRC_COMMAND_DEFINITION_H_
#define SRC_COMMAND_DEFINITION_H_

#include "command.h"
#include "user_commands.h"

#define MAX_COMMANDS		5

struct command_format command_table[MAX_COMMANDS] =
{
	{1,"test1",0,cmd_test},
	{2,"get_poti",2,cmd_get_poti},
	{3,"test2",3,cmd_test2},
	{4,"test3",3,cmd_test3},
	{5,"test4",0,cmd_test4},
};

#endif /* SRC_COMMAND_DEFINITION_H_ */
