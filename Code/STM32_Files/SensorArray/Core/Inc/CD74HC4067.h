/*
  Multiplexer.h - Library for using the CD74HC4067 multiplexer.
  April 18, 2016.
  LGPL 3.0
*/

#ifndef CD74HC4067_h
#define CD74HC4067_h

extern int _g_channel_truth_table[16][4];

void mux_channel(int channel);

#endif