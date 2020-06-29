EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "Measurement"
Date "24.05.2020"
Rev "0"
Comp "IMSAS_UNI_BREMEN"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:CD74HC4067M U?
U 1 1 5EE2F3A8
P 1750 6250
AR Path="/5EE2F3A8" Ref="U?"  Part="1" 
AR Path="/5EE29113/5EE2F3A8" Ref="U?"  Part="1" 
F 0 "U?" H 1900 7300 50  0000 C CNN
F 1 "CD74HC4067M" H 2100 7200 50  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 2650 5250 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4067.pdf" H 1400 7100 50  0001 C CNN
	1    1750 6250
	1    0    0    -1  
$EndComp
$Comp
L Potentiometer_Digital:AD5272BRM U?
U 1 1 5EE3A122
P 8950 1750
AR Path="/5EE3A122" Ref="U?"  Part="1" 
AR Path="/5EE29113/5EE3A122" Ref="U?"  Part="1" 
F 0 "U?" H 9150 2300 50  0000 C CNN
F 1 "AD5272BRM" H 9300 2200 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 9700 1300 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD5272_5274.pdf" H 8950 1750 50  0001 C CNN
	1    8950 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5EE3A128
P 8850 2400
AR Path="/5EE3A128" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE3A128" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8850 2150 50  0001 C CNN
F 1 "GNDA" H 8855 2227 50  0000 C CNN
F 2 "" H 8850 2400 50  0001 C CNN
F 3 "" H 8850 2400 50  0001 C CNN
	1    8850 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2250 8850 2300
Wire Wire Line
	8950 2250 8950 2300
Wire Wire Line
	8950 2300 8850 2300
Connection ~ 8850 2300
Wire Wire Line
	8850 2300 8850 2400
$Comp
L Device:C_Small C?
U 1 1 5EE3A133
P 9550 2100
AR Path="/5EE3A133" Ref="C?"  Part="1" 
AR Path="/5EE29113/5EE3A133" Ref="C?"  Part="1" 
F 0 "C?" H 9642 2146 50  0000 L CNN
F 1 "1u" H 9642 2055 50  0000 L CNN
F 2 "" H 9550 2100 50  0001 C CNN
F 3 "~" H 9550 2100 50  0001 C CNN
	1    9550 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1950 9550 1950
Wire Wire Line
	9550 2300 8950 2300
Connection ~ 8950 2300
Wire Wire Line
	9550 2200 9550 2300
Wire Wire Line
	9550 2000 9550 1950
$Comp
L Device:C_Small C?
U 1 1 5EE3A13E
P 10000 1800
AR Path="/5EE3A13E" Ref="C?"  Part="1" 
AR Path="/5EE29113/5EE3A13E" Ref="C?"  Part="1" 
F 0 "C?" H 10092 1846 50  0000 L CNN
F 1 "10u" H 10092 1755 50  0000 L CNN
F 2 "" H 10000 1800 50  0001 C CNN
F 3 "~" H 10000 1800 50  0001 C CNN
	1    10000 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5EE3A144
P 10300 1800
AR Path="/5EE3A144" Ref="C?"  Part="1" 
AR Path="/5EE29113/5EE3A144" Ref="C?"  Part="1" 
F 0 "C?" H 10392 1846 50  0000 L CNN
F 1 "100n" H 10392 1755 50  0000 L CNN
F 2 "" H 10300 1800 50  0001 C CNN
F 3 "~" H 10300 1800 50  0001 C CNN
	1    10300 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 1900 10000 2000
Wire Wire Line
	10000 2000 10150 2000
Wire Wire Line
	10300 2000 10300 1900
Wire Wire Line
	10300 1700 10300 1600
Wire Wire Line
	10300 1600 10150 1600
Wire Wire Line
	10000 1600 10000 1700
Wire Wire Line
	10150 1600 10150 1500
Connection ~ 10150 1600
Wire Wire Line
	10150 1600 10000 1600
Wire Wire Line
	10150 2000 10150 2100
Connection ~ 10150 2000
Wire Wire Line
	10150 2000 10300 2000
$Comp
L power:GNDA #PWR?
U 1 1 5EE3A156
P 10150 2100
AR Path="/5EE3A156" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE3A156" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10150 1850 50  0001 C CNN
F 1 "GNDA" H 10155 1927 50  0000 C CNN
F 2 "" H 10150 2100 50  0001 C CNN
F 3 "" H 10150 2100 50  0001 C CNN
	1    10150 2100
	1    0    0    -1  
$EndComp
Text GLabel 9450 1550 2    50   Input ~ 0
POTI_HIGH
Text GLabel 9450 1650 2    50   Input ~ 0
POTI_LOW
Text GLabel 8450 1950 0    50   Input ~ 0
SDO
Text GLabel 8450 1550 0    50   Input ~ 0
SCLK
Text GLabel 8450 1850 0    50   Input ~ 0
SS
Text GLabel 8450 1650 0    50   Input ~ 0
DIN
$Comp
L power:+3.3V #PWR?
U 1 1 5EE3A162
P 8950 1150
AR Path="/5EE3A162" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE3A162" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8950 1000 50  0001 C CNN
F 1 "+3.3V" H 8965 1323 50  0000 C CNN
F 2 "" H 8950 1150 50  0001 C CNN
F 3 "" H 8950 1150 50  0001 C CNN
	1    8950 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 1250 8950 1150
$Comp
L power:+3.3V #PWR?
U 1 1 5EE3A169
P 10150 1500
AR Path="/5EE3A169" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE3A169" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10150 1350 50  0001 C CNN
F 1 "+3.3V" H 10165 1673 50  0000 C CNN
F 2 "" H 10150 1500 50  0001 C CNN
F 3 "" H 10150 1500 50  0001 C CNN
	1    10150 1500
	1    0    0    -1  
$EndComp
Wire Notes Line
	8150 2650 8150 900 
Wire Notes Line
	8150 900  10800 900 
Wire Notes Line
	10800 900  10800 2650
Wire Notes Line
	10800 2650 8150 2650
Text Notes 8150 850  0    50   ~ 0
Digital Potentiometer
$Comp
L Device:R_Small R?
U 1 1 5EE4276D
P 9350 3300
AR Path="/5EE4276D" Ref="R?"  Part="1" 
AR Path="/5EE29113/5EE4276D" Ref="R?"  Part="1" 
F 0 "R?" H 9409 3346 50  0000 L CNN
F 1 "10k" H 9409 3255 50  0000 L CNN
F 2 "" H 9350 3300 50  0001 C CNN
F 3 "~" H 9350 3300 50  0001 C CNN
	1    9350 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5EE42773
P 9100 3950
AR Path="/5EE42773" Ref="R?"  Part="1" 
AR Path="/5EE29113/5EE42773" Ref="R?"  Part="1" 
F 0 "R?" H 9159 3996 50  0000 L CNN
F 1 "16k" H 9159 3905 50  0000 L CNN
F 2 "" H 9100 3950 50  0001 C CNN
F 3 "~" H 9100 3950 50  0001 C CNN
	1    9100 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5EE42779
P 9600 4150
AR Path="/5EE42779" Ref="R?"  Part="1" 
AR Path="/5EE29113/5EE42779" Ref="R?"  Part="1" 
F 0 "R?" H 9659 4196 50  0000 L CNN
F 1 "20k" H 9659 4105 50  0000 L CNN
F 2 "" H 9600 4150 50  0001 C CNN
F 3 "~" H 9600 4150 50  0001 C CNN
	1    9600 4150
	1    0    0    -1  
$EndComp
Text GLabel 9600 3750 2    50   Input ~ 0
POTI_HIGH
Text GLabel 9600 3900 2    50   Input ~ 0
POTI_LOW
Wire Wire Line
	9350 3400 9350 3500
Wire Wire Line
	9600 3750 9600 3500
Wire Wire Line
	9600 3500 9350 3500
Wire Wire Line
	9600 3900 9600 4050
Wire Wire Line
	9600 4250 9600 4400
Wire Wire Line
	9600 4400 9350 4400
$Comp
L power:GNDA #PWR?
U 1 1 5EE42788
P 9350 4500
AR Path="/5EE42788" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE42788" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9350 4250 50  0001 C CNN
F 1 "GNDA" H 9355 4327 50  0000 C CNN
F 2 "" H 9350 4500 50  0001 C CNN
F 3 "" H 9350 4500 50  0001 C CNN
	1    9350 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 4400 9350 4500
Wire Wire Line
	9100 4050 9100 4400
Wire Wire Line
	9100 3500 9100 3850
$Comp
L power:+1V5 #PWR?
U 1 1 5EE42C9C
P 9350 3050
F 0 "#PWR?" H 9350 2900 50  0001 C CNN
F 1 "+1V5" H 9365 3223 50  0000 C CNN
F 2 "" H 9350 3050 50  0001 C CNN
F 3 "" H 9350 3050 50  0001 C CNN
	1    9350 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 3200 9350 3050
Connection ~ 9350 3500
Wire Wire Line
	9350 3500 9100 3500
Connection ~ 9350 4400
Wire Wire Line
	9350 4400 9100 4400
Text GLabel 9800 3500 2    50   Input ~ 0
SIGNAL_REF
Wire Wire Line
	9800 3500 9600 3500
Connection ~ 9600 3500
$Comp
L Connector_Generic:Conn_02x10_Top_Bottom J?
U 1 1 5EE4E7FF
P 1600 1300
F 0 "J?" H 1600 1950 50  0000 C CNN
F 1 "Conn_02x10_Top_Bottom" H 2000 1850 50  0000 C CNN
F 2 "" H 1600 1300 50  0001 C CNN
F 3 "~" H 1600 1300 50  0001 C CNN
	1    1600 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+1V5 #PWR?
U 1 1 5EE54F89
P 1300 850
F 0 "#PWR?" H 1300 700 50  0001 C CNN
F 1 "+1V5" H 1315 1023 50  0000 C CNN
F 2 "" H 1300 850 50  0001 C CNN
F 3 "" H 1300 850 50  0001 C CNN
	1    1300 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 900  1300 900 
Wire Wire Line
	1300 900  1300 850 
Text GLabel 1400 1000 0    50   Input ~ 0
Sensor_A1
Text GLabel 1400 1100 0    50   Input ~ 0
Sensor_A2
Text GLabel 1400 1200 0    50   Input ~ 0
Sensor_A3
Text GLabel 1400 1300 0    50   Input ~ 0
Sensor_A4
Text GLabel 1400 1400 0    50   Input ~ 0
Sensor_A5
Text GLabel 1400 1500 0    50   Input ~ 0
Sensor_A6
Text GLabel 1400 1600 0    50   Input ~ 0
Sensor_A7
Text GLabel 1400 1700 0    50   Input ~ 0
Sensor_A8
Text GLabel 1400 1800 0    50   Input ~ 0
Sensor_A9
Text GLabel 1900 1700 2    50   Input ~ 0
Sensor_B9
Text GLabel 1900 1600 2    50   Input ~ 0
Sensor_B8
Text GLabel 1900 1500 2    50   Input ~ 0
Sensor_B7
Text GLabel 1900 1400 2    50   Input ~ 0
Sensor_B6
Text GLabel 1900 1300 2    50   Input ~ 0
Sensor_B5
Text GLabel 1900 1200 2    50   Input ~ 0
Sensor_B4
Text GLabel 1900 1100 2    50   Input ~ 0
Sensor_B3
Text GLabel 1900 1000 2    50   Input ~ 0
Sensor_B2
Text GLabel 1900 900  2    50   Input ~ 0
Sensor_B1
$Comp
L power:GNDA #PWR?
U 1 1 5EE5B81D
P 2000 1850
AR Path="/5EE5B81D" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE5B81D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 1600 50  0001 C CNN
F 1 "GNDA" H 2005 1677 50  0000 C CNN
F 2 "" H 2000 1850 50  0001 C CNN
F 3 "" H 2000 1850 50  0001 C CNN
	1    2000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1850 2000 1800
Wire Wire Line
	2000 1800 1900 1800
Text GLabel 2250 2850 2    50   Input ~ 0
Sensor_A1
NoConn ~ 2250 2750
$Comp
L power:GNDA #PWR?
U 1 1 5EE6C354
P 1750 4650
AR Path="/5EE6C354" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE6C354" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1750 4400 50  0001 C CNN
F 1 "GNDA" H 1755 4477 50  0000 C CNN
F 2 "" H 1750 4650 50  0001 C CNN
F 3 "" H 1750 4650 50  0001 C CNN
	1    1750 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4650 1750 4550
NoConn ~ 2250 4250
NoConn ~ 2250 4150
NoConn ~ 2250 4050
NoConn ~ 2250 3950
NoConn ~ 2250 3850
NoConn ~ 2250 3750
Text GLabel 2250 3650 2    50   Input ~ 0
Sensor_A9
Text GLabel 2250 3550 2    50   Input ~ 0
Sensor_A8
Text GLabel 2250 3450 2    50   Input ~ 0
Sensor_A7
Text GLabel 2250 3350 2    50   Input ~ 0
Sensor_A6
Text GLabel 2250 3250 2    50   Input ~ 0
Sensor_A5
Text GLabel 2250 3150 2    50   Input ~ 0
Sensor_A4
Text GLabel 2250 3050 2    50   Input ~ 0
Sensor_A3
Text GLabel 2250 2950 2    50   Input ~ 0
Sensor_A2
$Comp
L 74xx:CD74HC4067M U?
U 1 1 5EE2DEF1
P 1750 3450
AR Path="/5EE2DEF1" Ref="U?"  Part="1" 
AR Path="/5EE29113/5EE2DEF1" Ref="U?"  Part="1" 
F 0 "U?" H 2000 4550 50  0000 C CNN
F 1 "CD74HC4067M" H 2100 4400 50  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 2650 2450 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4067.pdf" H 1400 4300 50  0001 C CNN
	1    1750 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5EE75CEE
P 1750 2350
AR Path="/5EE75CEE" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE75CEE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1750 2200 50  0001 C CNN
F 1 "+3.3V" H 1765 2523 50  0000 C CNN
F 2 "" H 1750 2350 50  0001 C CNN
F 3 "" H 1750 2350 50  0001 C CNN
	1    1750 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2450 1750 2350
Text GLabel 1250 2950 0    50   Input ~ 0
Sensor_AOUT
$Comp
L power:GNDA #PWR?
U 1 1 5EE779F9
P 1150 4200
AR Path="/5EE779F9" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE779F9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1150 3950 50  0001 C CNN
F 1 "GNDA" H 1155 4027 50  0000 C CNN
F 2 "" H 1150 4200 50  0001 C CNN
F 3 "" H 1150 4200 50  0001 C CNN
	1    1150 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4050 1150 4050
Wire Wire Line
	1150 4050 1150 4200
Text GLabel 2250 6450 2    50   Input ~ 0
Sensor_B9
Text GLabel 2250 6350 2    50   Input ~ 0
Sensor_B8
Text GLabel 2250 6250 2    50   Input ~ 0
Sensor_B7
Text GLabel 2250 6150 2    50   Input ~ 0
Sensor_B6
Text GLabel 2250 6050 2    50   Input ~ 0
Sensor_B5
Text GLabel 2250 5950 2    50   Input ~ 0
Sensor_B4
Text GLabel 2250 5850 2    50   Input ~ 0
Sensor_B3
Text GLabel 2250 5750 2    50   Input ~ 0
Sensor_B2
Text GLabel 2250 5650 2    50   Input ~ 0
Sensor_B1
$Comp
L power:GNDA #PWR?
U 1 1 5EE7AF53
P 1750 7450
AR Path="/5EE7AF53" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE7AF53" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1750 7200 50  0001 C CNN
F 1 "GNDA" H 1755 7277 50  0000 C CNN
F 2 "" H 1750 7450 50  0001 C CNN
F 3 "" H 1750 7450 50  0001 C CNN
	1    1750 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 7450 1750 7350
$Comp
L power:+3.3V #PWR?
U 1 1 5EE7C57F
P 1750 5150
AR Path="/5EE7C57F" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE7C57F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1750 5000 50  0001 C CNN
F 1 "+3.3V" H 1765 5323 50  0000 C CNN
F 2 "" H 1750 5150 50  0001 C CNN
F 3 "" H 1750 5150 50  0001 C CNN
	1    1750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5250 1750 5150
Text GLabel 1250 5750 0    50   Input ~ 0
Sensor_BOUT
$Comp
L power:GNDA #PWR?
U 1 1 5EE7EB94
P 1150 7000
AR Path="/5EE7EB94" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE7EB94" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1150 6750 50  0001 C CNN
F 1 "GNDA" H 1155 6827 50  0000 C CNN
F 2 "" H 1150 7000 50  0001 C CNN
F 3 "" H 1150 7000 50  0001 C CNN
	1    1150 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 6850 1150 6850
Wire Wire Line
	1150 6850 1150 7000
$Comp
L ADC:MCP3562 U?
U 1 1 5ECC559E
P 6050 1200
AR Path="/5ECC559E" Ref="U?"  Part="1" 
AR Path="/5EE29113/5ECC559E" Ref="U?"  Part="1" 
F 0 "U?" H 6650 1300 50  0000 C CNN
F 1 "MCP3562" H 6650 1200 50  0000 C CNN
F 2 "" H 6750 1350 50  0001 C CNN
F 3 "" H 6750 1350 50  0001 C CNN
	1    6050 1200
	1    0    0    -1  
$EndComp
NoConn ~ 5650 2650
NoConn ~ 5650 2550
NoConn ~ 6900 2550
NoConn ~ 6900 2650
$Comp
L power:GNDA #PWR?
U 1 1 5ECC55A8
P 6150 3000
AR Path="/5ECC55A8" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ECC55A8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6150 2750 50  0001 C CNN
F 1 "GNDA" H 6155 2827 50  0000 C CNN
F 2 "" H 6150 3000 50  0001 C CNN
F 3 "" H 6150 3000 50  0001 C CNN
	1    6150 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ECC55AE
P 6400 3000
AR Path="/5ECC55AE" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ECC55AE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6400 2750 50  0001 C CNN
F 1 "GND" H 6405 2827 50  0000 C CNN
F 2 "" H 6400 3000 50  0001 C CNN
F 3 "" H 6400 3000 50  0001 C CNN
	1    6400 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3000 6150 2850
Wire Wire Line
	6400 3000 6400 2850
Text GLabel 6900 2150 2    50   Input ~ 0
SPI1_CS
Text GLabel 6900 2050 2    50   Input ~ 0
SPI1_SCK
Text GLabel 6900 1950 2    50   Input ~ 0
SPI1_MISO
Text GLabel 6900 1850 2    50   Input ~ 0
SPI1_MOSI
$Comp
L Device:R_Small R?
U 1 1 5ECCD249
P 7450 1400
F 0 "R?" H 7509 1446 50  0000 L CNN
F 1 "100k" H 7509 1355 50  0000 L CNN
F 2 "" H 7450 1400 50  0001 C CNN
F 3 "~" H 7450 1400 50  0001 C CNN
	1    7450 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1650 7450 1650
$Comp
L Device:C_Small C?
U 1 1 5ECD73E5
P 4150 1300
AR Path="/5ECD73E5" Ref="C?"  Part="1" 
AR Path="/5EE29113/5ECD73E5" Ref="C?"  Part="1" 
F 0 "C?" H 4242 1346 50  0000 L CNN
F 1 "10u" H 4242 1255 50  0000 L CNN
F 2 "" H 4150 1300 50  0001 C CNN
F 3 "~" H 4150 1300 50  0001 C CNN
	1    4150 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5ECD73EB
P 4450 1300
AR Path="/5ECD73EB" Ref="C?"  Part="1" 
AR Path="/5EE29113/5ECD73EB" Ref="C?"  Part="1" 
F 0 "C?" H 4542 1346 50  0000 L CNN
F 1 "100n" H 4542 1255 50  0000 L CNN
F 2 "" H 4450 1300 50  0001 C CNN
F 3 "~" H 4450 1300 50  0001 C CNN
	1    4450 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1400 4150 1500
Wire Wire Line
	4450 1500 4450 1400
Wire Wire Line
	4450 1200 4450 1100
Wire Wire Line
	4450 1100 4300 1100
Wire Wire Line
	4150 1100 4150 1200
Wire Wire Line
	4300 1100 4300 1000
Connection ~ 4300 1100
Wire Wire Line
	4300 1100 4150 1100
$Comp
L power:+3.3V #PWR?
U 1 1 5ECD7404
P 4300 1000
AR Path="/5ECD7404" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ECD7404" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4300 850 50  0001 C CNN
F 1 "+3.3V" H 4315 1173 50  0000 C CNN
F 2 "" H 4300 1000 50  0001 C CNN
F 3 "" H 4300 1000 50  0001 C CNN
	1    4300 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5ECE2C46
P 6150 3750
AR Path="/5ECE2C46" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ECE2C46" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6150 3500 50  0001 C CNN
F 1 "GNDA" H 6155 3577 50  0000 C CNN
F 2 "" H 6150 3750 50  0001 C CNN
F 3 "" H 6150 3750 50  0001 C CNN
	1    6150 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ECE2C4C
P 6450 3750
AR Path="/5ECE2C4C" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ECE2C4C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6450 3500 50  0001 C CNN
F 1 "GND" H 6455 3577 50  0000 C CNN
F 2 "" H 6450 3750 50  0001 C CNN
F 3 "" H 6450 3750 50  0001 C CNN
	1    6450 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3750 6150 3600
Wire Wire Line
	6450 3750 6450 3600
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 5ECE5E7E
P 6250 3400
F 0 "J?" V 6214 3212 50  0000 R CNN
F 1 "Conn_01x02" V 6123 3212 50  0000 R CNN
F 2 "" H 6250 3400 50  0001 C CNN
F 3 "~" H 6250 3400 50  0001 C CNN
	1    6250 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 3600 6150 3600
Wire Wire Line
	6350 3600 6450 3600
$Comp
L power:+3.3V #PWR?
U 1 1 5ECFEC24
P 6400 1100
AR Path="/5ECFEC24" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ECFEC24" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6400 950 50  0001 C CNN
F 1 "+3.3V" H 6415 1273 50  0000 C CNN
F 2 "" H 6400 1100 50  0001 C CNN
F 3 "" H 6400 1100 50  0001 C CNN
	1    6400 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1200 6400 1100
$Comp
L power:+3.3VA #PWR?
U 1 1 5ED03669
P 6150 1100
AR Path="/5ED03669" Ref="#PWR?"  Part="1" 
AR Path="/5EDF6668/5ED03669" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ED03669" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6150 950 50  0001 C CNN
F 1 "+3.3VA" H 6165 1273 50  0000 C CNN
F 2 "" H 6150 1100 50  0001 C CNN
F 3 "" H 6150 1100 50  0001 C CNN
	1    6150 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1200 6150 1100
$Comp
L power:+3.3V #PWR?
U 1 1 5ED0C6BE
P 7450 1100
AR Path="/5ED0C6BE" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ED0C6BE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7450 950 50  0001 C CNN
F 1 "+3.3V" H 7465 1273 50  0000 C CNN
F 2 "" H 7450 1100 50  0001 C CNN
F 3 "" H 7450 1100 50  0001 C CNN
	1    7450 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 1100 7450 1300
Wire Wire Line
	7450 1650 7450 1500
NoConn ~ 6900 1550
Connection ~ 4300 1500
Wire Wire Line
	4150 1500 4300 1500
Wire Wire Line
	4300 1500 4450 1500
Wire Wire Line
	4300 1650 4300 1500
$Comp
L power:GND #PWR?
U 1 1 5ECD276C
P 4300 1650
AR Path="/5ECD276C" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ECD276C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4300 1400 50  0001 C CNN
F 1 "GND" H 4305 1477 50  0000 C CNN
F 2 "" H 4300 1650 50  0001 C CNN
F 3 "" H 4300 1650 50  0001 C CNN
	1    4300 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5ED2AFD8
P 4800 1300
AR Path="/5ED2AFD8" Ref="C?"  Part="1" 
AR Path="/5EE29113/5ED2AFD8" Ref="C?"  Part="1" 
F 0 "C?" H 4892 1346 50  0000 L CNN
F 1 "10u" H 4892 1255 50  0000 L CNN
F 2 "" H 4800 1300 50  0001 C CNN
F 3 "~" H 4800 1300 50  0001 C CNN
	1    4800 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5ED2AFDE
P 5100 1300
AR Path="/5ED2AFDE" Ref="C?"  Part="1" 
AR Path="/5EE29113/5ED2AFDE" Ref="C?"  Part="1" 
F 0 "C?" H 5192 1346 50  0000 L CNN
F 1 "100n" H 5192 1255 50  0000 L CNN
F 2 "" H 5100 1300 50  0001 C CNN
F 3 "~" H 5100 1300 50  0001 C CNN
	1    5100 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1400 4800 1500
Wire Wire Line
	5100 1500 5100 1400
Wire Wire Line
	5100 1200 5100 1100
Wire Wire Line
	4800 1100 4800 1200
Connection ~ 4950 1500
Wire Wire Line
	4800 1500 4950 1500
Wire Wire Line
	4950 1500 5100 1500
Wire Wire Line
	4950 1650 4950 1500
Wire Wire Line
	4800 1100 4950 1100
$Comp
L power:+3.3VA #PWR?
U 1 1 5ED2EDF4
P 4950 1000
AR Path="/5ED2EDF4" Ref="#PWR?"  Part="1" 
AR Path="/5EDF6668/5ED2EDF4" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ED2EDF4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4950 850 50  0001 C CNN
F 1 "+3.3VA" H 4965 1173 50  0000 C CNN
F 2 "" H 4950 1000 50  0001 C CNN
F 3 "" H 4950 1000 50  0001 C CNN
	1    4950 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1100 4950 1000
$Comp
L power:GNDA #PWR?
U 1 1 5ED330F4
P 4950 1650
AR Path="/5ED330F4" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ED330F4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4950 1400 50  0001 C CNN
F 1 "GNDA" H 4955 1477 50  0000 C CNN
F 2 "" H 4950 1650 50  0001 C CNN
F 3 "" H 4950 1650 50  0001 C CNN
	1    4950 1650
	1    0    0    -1  
$EndComp
Connection ~ 4950 1100
Wire Wire Line
	4950 1100 5100 1100
$Comp
L power:+3.3VA #PWR?
U 1 1 5ED3C41E
P 5550 1400
AR Path="/5ED3C41E" Ref="#PWR?"  Part="1" 
AR Path="/5EDF6668/5ED3C41E" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ED3C41E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5550 1250 50  0001 C CNN
F 1 "+3.3VA" H 5565 1573 50  0000 C CNN
F 2 "" H 5550 1400 50  0001 C CNN
F 3 "" H 5550 1400 50  0001 C CNN
	1    5550 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1550 5550 1550
Wire Wire Line
	5550 1400 5550 1550
$Comp
L power:GNDA #PWR?
U 1 1 5ED40E10
P 5300 1650
AR Path="/5ED40E10" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ED40E10" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5300 1400 50  0001 C CNN
F 1 "GNDA" H 5305 1477 50  0000 C CNN
F 2 "" H 5300 1650 50  0001 C CNN
F 3 "" H 5300 1650 50  0001 C CNN
	1    5300 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1650 5300 1650
$EndSCHEMATC
