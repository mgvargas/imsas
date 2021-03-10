/**						IMSAS, Minerva Vargas
 *
 ******************************************************************************
 * @file           : Multiplexer.h
 * @brief          : Library for using the CD74HC4067 multiplexer.
 ******************************************************************************
 */

#ifndef CD74HC4067_h
#define CD74HC4067_h

extern int _g_channel_truth_table[16][4];

void mux_channel(int channel);

#endif
