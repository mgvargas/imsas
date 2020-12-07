EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Hair_sensor:HairSensorArray U1
U 1 1 5F8A48E2
P 4650 2550
F 0 "U1" H 4500 2950 50  0000 C CNN
F 1 "HairSensorArray" H 5000 2950 50  0000 C CNN
F 2 "PCB_Sensor_Array:Hair_Sensor_QFP-20_10x10_Pitch0.5mm" H 4600 2350 50  0001 C CNN
F 3 "" H 4600 2350 50  0001 C CNN
	1    4650 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x22 J1
U 1 1 5F8A5163
P 6850 2550
F 0 "J1" H 6930 2542 50  0000 L CNN
F 1 "Conn_01x22" H 6930 2451 50  0000 L CNN
F 2 "Connector_FFC-FPC:Molex_200528-0220_1x22-1MP_P1.00mm_Horizontal" H 6850 2550 50  0001 C CNN
F 3 "~" H 6850 2550 50  0001 C CNN
	1    6850 2550
	1    0    0    -1  
$EndComp
Text GLabel 4300 2300 0    50   Input ~ 0
Sensor_A1
Text GLabel 4300 2400 0    50   Input ~ 0
Sensor_A2
Text GLabel 4300 2500 0    50   Input ~ 0
Sensor_A3
Text GLabel 4300 2600 0    50   Input ~ 0
Sensor_A4
Text GLabel 4300 2700 0    50   Input ~ 0
Sensor_A5
Text GLabel 4300 2800 0    50   Input ~ 0
Sensor_A6
Text GLabel 4300 2900 0    50   Input ~ 0
Sensor_A7
Text GLabel 4300 3000 0    50   Input ~ 0
Sensor_A8
Text GLabel 4300 3100 0    50   Input ~ 0
Sensor_A9
Text GLabel 5000 3100 2    50   Input ~ 0
Sensor_B9
Text GLabel 5000 3000 2    50   Input ~ 0
Sensor_B8
Text GLabel 5000 2900 2    50   Input ~ 0
Sensor_B7
Text GLabel 5000 2800 2    50   Input ~ 0
Sensor_B6
Text GLabel 5000 2700 2    50   Input ~ 0
Sensor_B5
Text GLabel 5000 2600 2    50   Input ~ 0
Sensor_B4
Text GLabel 5000 2500 2    50   Input ~ 0
Sensor_B3
Text GLabel 5000 2400 2    50   Input ~ 0
Sensor_B2
Text GLabel 5000 2300 2    50   Input ~ 0
Sensor_B1
Text GLabel 6650 1750 0    50   Input ~ 0
Sensor_B9
Text GLabel 6650 1850 0    50   Input ~ 0
Sensor_B8
Text GLabel 6650 1950 0    50   Input ~ 0
Sensor_B7
Text GLabel 6650 2050 0    50   Input ~ 0
Sensor_B6
Text GLabel 6650 2150 0    50   Input ~ 0
Sensor_B5
Text GLabel 6650 2250 0    50   Input ~ 0
Sensor_B4
Text GLabel 6650 2350 0    50   Input ~ 0
Sensor_B3
Text GLabel 6650 2450 0    50   Input ~ 0
Sensor_B2
Text GLabel 6650 2550 0    50   Input ~ 0
Sensor_B1
Text GLabel 6650 3450 0    50   Input ~ 0
Sensor_A1
Text GLabel 6650 3350 0    50   Input ~ 0
Sensor_A2
Text GLabel 6650 3250 0    50   Input ~ 0
Sensor_A3
Text GLabel 6650 3150 0    50   Input ~ 0
Sensor_A4
Text GLabel 6650 3050 0    50   Input ~ 0
Sensor_A5
Text GLabel 6650 2950 0    50   Input ~ 0
Sensor_A6
Text GLabel 6650 2850 0    50   Input ~ 0
Sensor_A7
Text GLabel 6650 2750 0    50   Input ~ 0
Sensor_A8
Text GLabel 6650 2650 0    50   Input ~ 0
Sensor_A9
NoConn ~ 6650 1550
$Comp
L power:+1V0 #PWR04
U 1 1 5F8B944D
P 6000 3450
F 0 "#PWR04" H 6000 3300 50  0001 C CNN
F 1 "+1V0" H 6015 3623 50  0000 C CNN
F 2 "" H 6000 3450 50  0001 C CNN
F 3 "" H 6000 3450 50  0001 C CNN
	1    6000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3550 6000 3550
Wire Wire Line
	6000 3550 6000 3450
$Comp
L power:GND #PWR05
U 1 1 5F8BA345
P 6650 3650
F 0 "#PWR05" H 6650 3400 50  0001 C CNN
F 1 "GND" H 6655 3477 50  0000 C CNN
F 2 "" H 6650 3650 50  0001 C CNN
F 3 "" H 6650 3650 50  0001 C CNN
	1    6650 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5F8BAD15
P 6100 1650
F 0 "#PWR01" H 6100 1400 50  0001 C CNN
F 1 "GND" H 6105 1477 50  0000 C CNN
F 2 "" H 6100 1650 50  0001 C CNN
F 3 "" H 6100 1650 50  0001 C CNN
	1    6100 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1650 6100 1650
$Comp
L power:GND #PWR03
U 1 1 5F8BB434
P 4650 3300
F 0 "#PWR03" H 4650 3050 50  0001 C CNN
F 1 "GND" H 4655 3127 50  0000 C CNN
F 2 "" H 4650 3300 50  0001 C CNN
F 3 "" H 4650 3300 50  0001 C CNN
	1    4650 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+1V0 #PWR02
U 1 1 5F8B84D9
P 4650 2100
F 0 "#PWR02" H 4650 1950 50  0001 C CNN
F 1 "+1V0" H 4650 2250 50  0000 C CNN
F 2 "" H 4650 2100 50  0001 C CNN
F 3 "" H 4650 2100 50  0001 C CNN
	1    4650 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5F8C5FEE
P 2900 2550
F 0 "C1" H 2992 2596 50  0000 L CNN
F 1 "10uF" H 2992 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2900 2550 50  0001 C CNN
F 3 "~" H 2900 2550 50  0001 C CNN
	1    2900 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5F8C7988
P 3250 2550
F 0 "C2" H 3342 2596 50  0000 L CNN
F 1 "100nF" H 3342 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3250 2550 50  0001 C CNN
F 3 "~" H 3250 2550 50  0001 C CNN
	1    3250 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+1V0 #PWR0101
U 1 1 5F8C9E9B
P 3100 2250
F 0 "#PWR0101" H 3100 2100 50  0001 C CNN
F 1 "+1V0" H 3100 2400 50  0000 C CNN
F 2 "" H 3100 2250 50  0001 C CNN
F 3 "" H 3100 2250 50  0001 C CNN
	1    3100 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F8CB251
P 3050 2850
F 0 "#PWR0102" H 3050 2600 50  0001 C CNN
F 1 "GND" H 3055 2677 50  0000 C CNN
F 2 "" H 3050 2850 50  0001 C CNN
F 3 "" H 3050 2850 50  0001 C CNN
	1    3050 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2450 2900 2350
Wire Wire Line
	2900 2350 3100 2350
Wire Wire Line
	3250 2350 3250 2450
Wire Wire Line
	3100 2250 3100 2350
Connection ~ 3100 2350
Wire Wire Line
	3100 2350 3250 2350
Wire Wire Line
	2900 2650 2900 2800
Wire Wire Line
	2900 2800 3050 2800
Wire Wire Line
	3250 2800 3250 2650
Wire Wire Line
	3050 2850 3050 2800
Connection ~ 3050 2800
Wire Wire Line
	3050 2800 3250 2800
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5F8CEB33
P 4400 4150
F 0 "H2" V 4354 4300 50  0000 L CNN
F 1 "MountingHole_Pad" V 4445 4300 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 4400 4150 50  0001 C CNN
F 3 "~" H 4400 4150 50  0001 C CNN
	1    4400 4150
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5F8CFA0A
P 4400 3850
F 0 "H1" V 4354 4000 50  0000 L CNN
F 1 "MountingHole_Pad" V 4445 4000 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 4400 3850 50  0001 C CNN
F 3 "~" H 4400 3850 50  0001 C CNN
	1    4400 3850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5F8D9505
P 4300 3850
F 0 "#PWR0103" H 4300 3600 50  0001 C CNN
F 1 "GND" H 4305 3677 50  0000 C CNN
F 2 "" H 4300 3850 50  0001 C CNN
F 3 "" H 4300 3850 50  0001 C CNN
	1    4300 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F8D9891
P 4300 4150
F 0 "#PWR0104" H 4300 3900 50  0001 C CNN
F 1 "GND" H 4305 3977 50  0000 C CNN
F 2 "" H 4300 4150 50  0001 C CNN
F 3 "" H 4300 4150 50  0001 C CNN
	1    4300 4150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
