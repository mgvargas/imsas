EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "Calibration_Board"
Date "24.05.2020"
Rev "0"
Comp "IMSAS_UNI-BREMEN"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SensorArray-rescue:STM32F405RGTx-MCU_ST_STM32F4 U1
U 1 1 5EC7CBB8
P 2750 5000
F 0 "U1" H 3183 3111 50  0000 C CNN
F 1 "STM32F405RGTx" H 3301 3178 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 2150 3300 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00037051.pdf" H 2750 5000 50  0001 C CNN
	1    2750 5000
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:+3.3V-power #PWR05
U 1 1 5EC96A56
P 2550 3050
F 0 "#PWR05" H 2550 2900 50  0001 C CNN
F 1 "+3.3V" H 2565 3223 50  0000 C CNN
F 2 "" H 2550 3050 50  0001 C CNN
F 3 "" H 2550 3050 50  0001 C CNN
	1    2550 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3050 2550 3150
Wire Wire Line
	2650 3200 2650 3150
Wire Wire Line
	2650 3150 2550 3150
Connection ~ 2550 3150
Wire Wire Line
	2550 3150 2550 3200
Wire Wire Line
	2650 3150 2750 3150
Connection ~ 2650 3150
Wire Wire Line
	2950 3200 2950 3150
Wire Wire Line
	2850 3200 2850 3150
Connection ~ 2850 3150
Wire Wire Line
	2850 3150 2950 3150
Wire Wire Line
	2750 3200 2750 3150
Connection ~ 2750 3150
Wire Wire Line
	2750 3150 2850 3150
$Comp
L SensorArray-rescue:+3.3VA-power #PWR06
U 1 1 5ECAF547
P 3050 3050
F 0 "#PWR06" H 3050 2900 50  0001 C CNN
F 1 "+3.3VA" H 3065 3223 50  0000 C CNN
F 2 "" H 3050 3050 50  0001 C CNN
F 3 "" H 3050 3050 50  0001 C CNN
	1    3050 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3050 3050 3200
$Comp
L SensorArray-rescue:GND-power #PWR020
U 1 1 5ECB0571
P 2650 6900
F 0 "#PWR020" H 2650 6650 50  0001 C CNN
F 1 "GND" H 2655 6727 50  0000 C CNN
F 2 "" H 2650 6900 50  0001 C CNN
F 3 "" H 2650 6900 50  0001 C CNN
	1    2650 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 6850 2650 6800
Wire Wire Line
	2750 6800 2750 6850
Wire Wire Line
	2750 6850 2650 6850
Wire Wire Line
	2650 6850 2650 6900
$Comp
L SensorArray-rescue:C_Small-Device C1
U 1 1 5ECB6D45
P 1100 2000
F 0 "C1" H 1192 2046 50  0000 L CNN
F 1 "10u" H 1192 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1100 2000 50  0001 C CNN
F 3 "~" H 1100 2000 50  0001 C CNN
	1    1100 2000
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C2
U 1 1 5ECB75A9
P 1500 2000
F 0 "C2" H 1592 2046 50  0000 L CNN
F 1 "100n" H 1592 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1500 2000 50  0001 C CNN
F 3 "~" H 1500 2000 50  0001 C CNN
	1    1500 2000
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C3
U 1 1 5ECB8026
P 1900 2000
F 0 "C3" H 1992 2046 50  0000 L CNN
F 1 "100n" H 1992 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1900 2000 50  0001 C CNN
F 3 "~" H 1900 2000 50  0001 C CNN
	1    1900 2000
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C4
U 1 1 5ECB8B6F
P 2350 2000
F 0 "C4" H 2442 2046 50  0000 L CNN
F 1 "100n" H 2442 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2350 2000 50  0001 C CNN
F 3 "~" H 2350 2000 50  0001 C CNN
	1    2350 2000
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C5
U 1 1 5ECB95FB
P 2800 2000
F 0 "C5" H 2892 2046 50  0000 L CNN
F 1 "100n" H 2892 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2800 2000 50  0001 C CNN
F 3 "~" H 2800 2000 50  0001 C CNN
	1    2800 2000
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C6
U 1 1 5ECBA05D
P 3200 2000
F 0 "C6" H 3292 2046 50  0000 L CNN
F 1 "100n" H 3292 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3200 2000 50  0001 C CNN
F 3 "~" H 3200 2000 50  0001 C CNN
	1    3200 2000
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C7
U 1 1 5ECBB0E2
P 3600 2000
F 0 "C7" H 3692 2046 50  0000 L CNN
F 1 "100n" H 3692 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3600 2000 50  0001 C CNN
F 3 "~" H 3600 2000 50  0001 C CNN
	1    3600 2000
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C8
U 1 1 5ECBBC8B
P 4000 2000
F 0 "C8" H 4092 2046 50  0000 L CNN
F 1 "100n" H 4092 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4000 2000 50  0001 C CNN
F 3 "~" H 4000 2000 50  0001 C CNN
	1    4000 2000
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C9
U 1 1 5ECBCA29
P 4400 2000
F 0 "C9" H 4492 2046 50  0000 L CNN
F 1 "100n" H 4492 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4400 2000 50  0001 C CNN
F 3 "~" H 4400 2000 50  0001 C CNN
	1    4400 2000
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C10
U 1 1 5ECBD81B
P 4800 2000
F 0 "C10" H 4892 2046 50  0000 L CNN
F 1 "100n" H 4892 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4800 2000 50  0001 C CNN
F 3 "~" H 4800 2000 50  0001 C CNN
	1    4800 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2250 1500 2250
Wire Wire Line
	1100 2100 1100 2250
Wire Wire Line
	4800 2100 4800 2250
Wire Wire Line
	4800 1900 4800 1850
Wire Wire Line
	4800 1850 4400 1850
Wire Wire Line
	1100 1850 1100 1900
Wire Wire Line
	1500 2100 1500 2250
Connection ~ 1500 2250
Wire Wire Line
	1500 2250 1900 2250
Wire Wire Line
	1500 1900 1500 1850
Connection ~ 1500 1850
Wire Wire Line
	1500 1850 1100 1850
Wire Wire Line
	1900 1900 1900 1850
Connection ~ 1900 1850
Wire Wire Line
	1900 1850 1500 1850
Wire Wire Line
	1900 2100 1900 2250
Connection ~ 1900 2250
Wire Wire Line
	1900 2250 2350 2250
Wire Wire Line
	2350 2100 2350 2250
Connection ~ 2350 2250
Wire Wire Line
	2350 2250 2800 2250
Wire Wire Line
	2350 1900 2350 1850
Connection ~ 2350 1850
Wire Wire Line
	2350 1850 1900 1850
Wire Wire Line
	2800 2100 2800 2250
Connection ~ 2800 2250
Wire Wire Line
	2800 1900 2800 1850
Connection ~ 2800 1850
Wire Wire Line
	2800 1850 2350 1850
Wire Wire Line
	3200 1900 3200 1850
Connection ~ 3200 1850
Wire Wire Line
	3200 2100 3200 2250
Connection ~ 3200 2250
Wire Wire Line
	3200 2250 3600 2250
Wire Wire Line
	3600 2100 3600 2250
Connection ~ 3600 2250
Wire Wire Line
	3600 2250 4000 2250
Wire Wire Line
	3600 1900 3600 1850
Connection ~ 3600 1850
Wire Wire Line
	3600 1850 3200 1850
Wire Wire Line
	4000 1900 4000 1850
Connection ~ 4000 1850
Wire Wire Line
	4000 1850 3600 1850
Wire Wire Line
	4000 2100 4000 2250
Connection ~ 4000 2250
Wire Wire Line
	4000 2250 4400 2250
Wire Wire Line
	4400 1900 4400 1850
Connection ~ 4400 1850
Wire Wire Line
	4400 1850 4000 1850
Wire Wire Line
	4400 2100 4400 2250
Connection ~ 4400 2250
Wire Wire Line
	4400 2250 4800 2250
Wire Wire Line
	3000 1750 3000 1850
Wire Wire Line
	2800 1850 3000 1850
Connection ~ 3000 1850
Wire Wire Line
	3000 1850 3200 1850
$Comp
L SensorArray-rescue:GND-power #PWR02
U 1 1 5ECD97E6
P 3000 2300
F 0 "#PWR02" H 3000 2050 50  0001 C CNN
F 1 "GND" H 3005 2127 50  0000 C CNN
F 2 "" H 3000 2300 50  0001 C CNN
F 3 "" H 3000 2300 50  0001 C CNN
	1    3000 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2300 3000 2250
Wire Wire Line
	2800 2250 3000 2250
Connection ~ 3000 2250
Wire Wire Line
	3000 2250 3200 2250
$Comp
L SensorArray-rescue:C_Small-Device C12
U 1 1 5ECDCA0A
P 1800 4050
F 0 "C12" H 1892 4096 50  0000 L CNN
F 1 "2.2u" H 1892 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1800 4050 50  0001 C CNN
F 3 "~" H 1800 4050 50  0001 C CNN
	1    1800 4050
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C11
U 1 1 5ECDE1B1
P 1450 4050
F 0 "C11" H 1542 4096 50  0000 L CNN
F 1 "2.2u" H 1542 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1450 4050 50  0001 C CNN
F 3 "~" H 1450 4050 50  0001 C CNN
	1    1450 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3900 1800 3900
Wire Wire Line
	1800 3900 1800 3950
Wire Wire Line
	2050 3800 1450 3800
Wire Wire Line
	1450 3800 1450 3950
$Comp
L SensorArray-rescue:GND-power #PWR013
U 1 1 5ECE3EE0
P 1450 4250
F 0 "#PWR013" H 1450 4000 50  0001 C CNN
F 1 "GND" H 1455 4077 50  0000 C CNN
F 2 "" H 1450 4250 50  0001 C CNN
F 3 "" H 1450 4250 50  0001 C CNN
	1    1450 4250
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR014
U 1 1 5ECE5CEE
P 1800 4250
F 0 "#PWR014" H 1800 4000 50  0001 C CNN
F 1 "GND" H 1805 4077 50  0000 C CNN
F 2 "" H 1800 4250 50  0001 C CNN
F 3 "" H 1800 4250 50  0001 C CNN
	1    1800 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 4150 1450 4250
Wire Wire Line
	1800 4150 1800 4250
Text GLabel 2050 3400 0    50   Input ~ 0
NRST
Text GLabel 2050 3600 0    50   Input ~ 0
BOOT0
Text GLabel 3450 5300 2    50   Input ~ 0
BOOT1
Text GLabel 4550 4050 1    50   Input ~ 0
BOOT0
Text GLabel 4850 4050 1    50   Input ~ 0
BOOT1
$Comp
L SensorArray-rescue:GND-power #PWR015
U 1 1 5ECF56C6
P 4550 4450
F 0 "#PWR015" H 4550 4200 50  0001 C CNN
F 1 "GND" H 4555 4277 50  0000 C CNN
F 2 "" H 4550 4450 50  0001 C CNN
F 3 "" H 4550 4450 50  0001 C CNN
	1    4550 4450
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR016
U 1 1 5ECF7524
P 4850 4450
F 0 "#PWR016" H 4850 4200 50  0001 C CNN
F 1 "GND" H 4855 4277 50  0000 C CNN
F 2 "" H 4850 4450 50  0001 C CNN
F 3 "" H 4850 4450 50  0001 C CNN
	1    4850 4450
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:R_Small-Device R3
U 1 1 5ECFC960
P 4550 4250
F 0 "R3" H 4609 4296 50  0000 L CNN
F 1 "10k" H 4609 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4550 4250 50  0001 C CNN
F 3 "~" H 4550 4250 50  0001 C CNN
	1    4550 4250
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:R_Small-Device R4
U 1 1 5ECFD755
P 4850 4250
F 0 "R4" H 4909 4296 50  0000 L CNN
F 1 "10k" H 4909 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4850 4250 50  0001 C CNN
F 3 "~" H 4850 4250 50  0001 C CNN
	1    4850 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4450 4550 4350
Wire Wire Line
	4550 4150 4550 4050
Wire Wire Line
	4850 4050 4850 4150
Wire Wire Line
	4850 4350 4850 4450
Text GLabel 3450 4700 2    50   Input ~ 0
SWDIO
Text GLabel 3450 4800 2    50   Input ~ 0
SWCLK
Text GLabel 3450 5400 2    50   Input ~ 0
SWO
Text GLabel 2050 4600 0    50   Input ~ 0
HSE_IN
Text GLabel 2050 4700 0    50   Input ~ 0
HSE_OUT
$Comp
L SensorArray-rescue:Crystal_GND24_Small-Device HSE1
U 1 1 5ED1B15A
P 4800 5700
F 0 "HSE1" H 4750 6100 50  0000 L CNN
F 1 "16MHz" H 4750 6000 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 4800 5700 50  0001 C CNN
F 3 "~" H 4800 5700 50  0001 C CNN
	1    4800 5700
	1    0    0    -1  
$EndComp
Text GLabel 4550 5700 0    50   Input ~ 0
HSE_IN
Text GLabel 5350 5700 2    50   Input ~ 0
HSE_OUT
$Comp
L SensorArray-rescue:R_Small-Device R5
U 1 1 5ED33700
P 5150 5700
F 0 "R5" V 4954 5700 50  0000 C CNN
F 1 "220" V 5045 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5150 5700 50  0001 C CNN
F 3 "~" H 5150 5700 50  0001 C CNN
	1    5150 5700
	0    1    1    0   
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C13
U 1 1 5ED34C92
P 4600 5900
F 0 "C13" H 4350 5950 50  0000 L CNN
F 1 "12p" H 4400 5850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4600 5900 50  0001 C CNN
F 3 "~" H 4600 5900 50  0001 C CNN
	1    4600 5900
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C14
U 1 1 5ED36778
P 5050 5900
F 0 "C14" H 5142 5946 50  0000 L CNN
F 1 "12p" H 5142 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5050 5900 50  0001 C CNN
F 3 "~" H 5050 5900 50  0001 C CNN
	1    5050 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5700 4600 5700
Wire Wire Line
	4600 5800 4600 5700
Connection ~ 4600 5700
Wire Wire Line
	4600 5700 4700 5700
Wire Wire Line
	4600 6000 4600 6100
Wire Wire Line
	4600 6100 4800 6100
Wire Wire Line
	5050 6100 5050 6000
Wire Wire Line
	5050 5800 5050 5700
Wire Wire Line
	5250 5700 5350 5700
$Comp
L SensorArray-rescue:GND-power #PWR018
U 1 1 5ED4C258
P 4800 6100
F 0 "#PWR018" H 4800 5850 50  0001 C CNN
F 1 "GND" H 4805 5927 50  0000 C CNN
F 2 "" H 4800 6100 50  0001 C CNN
F 3 "" H 4800 6100 50  0001 C CNN
	1    4800 6100
	1    0    0    -1  
$EndComp
Connection ~ 4800 6100
Text Notes 4250 6500 0    50   ~ 0
Cl = 2x (CLoad_CRYSTAL  - CPARASITIC)\nCl = 2 x (9p - 3p)
$Comp
L SensorArray-rescue:Conn_02x05_Odd_Even-Connector_Generic J2
U 1 1 5ED6EE1A
P 8200 2500
F 0 "J2" H 8250 2917 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 8250 2826 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" H 8200 2500 50  0001 C CNN
F 3 "~" H 8200 2500 50  0001 C CNN
	1    8200 2500
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:+3.3V-power #PWR03
U 1 1 5ED710DC
P 8000 2300
F 0 "#PWR03" H 8000 2150 50  0001 C CNN
F 1 "+3.3V" V 8000 2550 50  0000 C CNN
F 2 "" H 8000 2300 50  0001 C CNN
F 3 "" H 8000 2300 50  0001 C CNN
	1    8000 2300
	0    -1   -1   0   
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR04
U 1 1 5ED77C37
P 7900 2800
F 0 "#PWR04" H 7900 2550 50  0001 C CNN
F 1 "GND" H 7905 2627 50  0000 C CNN
F 2 "" H 7900 2800 50  0001 C CNN
F 3 "" H 7900 2800 50  0001 C CNN
	1    7900 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2800 7900 2700
Wire Wire Line
	7900 2400 8000 2400
Wire Wire Line
	8000 2500 7900 2500
Connection ~ 7900 2500
Wire Wire Line
	7900 2500 7900 2400
Wire Wire Line
	8000 2700 7900 2700
Connection ~ 7900 2700
Wire Wire Line
	7900 2700 7900 2500
NoConn ~ 8000 2600
Text GLabel 8500 2300 2    50   Input ~ 0
SWDIO
Text GLabel 8500 2400 2    50   Input ~ 0
SWCLK
Text GLabel 8500 2700 2    50   Input ~ 0
NRST
Text GLabel 8500 2500 2    50   Input ~ 0
SWO
NoConn ~ 8500 2600
Text GLabel 3450 5800 2    50   Input ~ 0
I2C1_SDA
Text GLabel 3450 5700 2    50   Input ~ 0
I2C1_SCL
$Sheet
S 8700 5650 500  150 
U 5EDF6668
F0 "Powersupply" 50
F1 "Powersupply.sch" 50
$EndSheet
$Sheet
S 10100 5650 850  700 
U 5EE29113
F0 "Measurement" 50
F1 "Measurement.sch" 50
$EndSheet
Text GLabel 3450 3800 2    50   Input ~ 0
SPI1_CS
Text GLabel 3450 3900 2    50   Input ~ 0
SPI1_SCK
Text GLabel 3450 4000 2    50   Input ~ 0
SPI1_MISO
Text GLabel 3450 4100 2    50   Input ~ 0
SPI1_MOSI
Text GLabel 3450 4300 2    50   Input ~ 0
USART1_TX
Text GLabel 3450 4400 2    50   Input ~ 0
USART1_RX
$Comp
L SensorArray-rescue:LED_Small-Device D1
U 1 1 5ECD8054
P 3750 6300
F 0 "D1" H 3750 6093 50  0000 C CNN
F 1 "LED" H 3750 6184 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 3750 6300 50  0001 C CNN
F 3 "~" V 3750 6300 50  0001 C CNN
	1    3750 6300
	-1   0    0    1   
$EndComp
$Comp
L SensorArray-rescue:R_Small-Device R6
U 1 1 5ECD9CEB
P 3950 6450
F 0 "R6" H 3891 6404 50  0000 R CNN
F 1 "2k2" H 3891 6495 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3950 6450 50  0001 C CNN
F 3 "~" H 3950 6450 50  0001 C CNN
	1    3950 6450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3450 6300 3650 6300
Wire Wire Line
	3850 6300 3950 6300
Wire Wire Line
	3950 6300 3950 6350
$Comp
L SensorArray-rescue:GND-power #PWR019
U 1 1 5ECDEFB0
P 3950 6650
F 0 "#PWR019" H 3950 6400 50  0001 C CNN
F 1 "GND" H 3955 6477 50  0000 C CNN
F 2 "" H 3950 6650 50  0001 C CNN
F 3 "" H 3950 6650 50  0001 C CNN
	1    3950 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 6650 3950 6550
NoConn ~ 2050 6600
NoConn ~ 2050 6500
NoConn ~ 2050 6400
NoConn ~ 2050 6300
NoConn ~ 2050 6200
NoConn ~ 2050 6100
NoConn ~ 2050 4900
NoConn ~ 3450 6600
NoConn ~ 3450 6500
NoConn ~ 3450 6400
NoConn ~ 3450 6200
NoConn ~ 3450 6100
NoConn ~ 3450 6000
NoConn ~ 3450 5900
NoConn ~ 3450 5600
NoConn ~ 3450 5500
NoConn ~ 3450 4900
NoConn ~ 3450 4600
NoConn ~ 3450 4500
NoConn ~ 3450 4200
NoConn ~ 3450 3400
$Comp
L SensorArray-rescue:Conn_01x02-Connector_Generic J1
U 1 1 5ED37109
P 10350 2200
F 0 "J1" H 10430 2192 50  0000 L CNN
F 1 "UART_Connector" H 10430 2101 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 10350 2200 50  0001 C CNN
F 3 "~" H 10350 2200 50  0001 C CNN
	1    10350 2200
	1    0    0    -1  
$EndComp
Text GLabel 10150 2200 0    50   Input ~ 0
USART1_TX
Text GLabel 10150 2300 0    50   Input ~ 0
USART1_RX
$Comp
L SensorArray-rescue:Conn_01x02-Connector_Generic J3
U 1 1 5ED3E414
P 10350 2650
F 0 "J3" H 10430 2642 50  0000 L CNN
F 1 "I2C_Connector" H 10430 2551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10350 2650 50  0001 C CNN
F 3 "~" H 10350 2650 50  0001 C CNN
	1    10350 2650
	1    0    0    -1  
$EndComp
Text GLabel 10150 2650 0    50   Input ~ 0
I2C1_SDA
Text GLabel 10150 2750 0    50   Input ~ 0
I2C1_SCL
Text GLabel 5400 4350 3    50   Input ~ 0
I2C1_SCL
Text GLabel 5700 4350 3    50   Input ~ 0
I2C1_SDA
$Comp
L SensorArray-rescue:R_Small-Device R1
U 1 1 5ED508E4
P 5400 4150
F 0 "R1" H 5341 4104 50  0000 R CNN
F 1 "2k2" H 5341 4195 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5400 4150 50  0001 C CNN
F 3 "~" H 5400 4150 50  0001 C CNN
	1    5400 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 4350 5400 4250
$Comp
L SensorArray-rescue:R_Small-Device R2
U 1 1 5ED52C0C
P 5700 4150
F 0 "R2" H 5641 4104 50  0000 R CNN
F 1 "2k2" H 5641 4195 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5700 4150 50  0001 C CNN
F 3 "~" H 5700 4150 50  0001 C CNN
	1    5700 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 4350 5700 4250
$Comp
L SensorArray-rescue:+3.3V-power #PWR010
U 1 1 5ED57B50
P 5400 3950
F 0 "#PWR010" H 5400 3800 50  0001 C CNN
F 1 "+3.3V" H 5415 4123 50  0000 C CNN
F 2 "" H 5400 3950 50  0001 C CNN
F 3 "" H 5400 3950 50  0001 C CNN
	1    5400 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3950 5400 4050
$Comp
L SensorArray-rescue:+3.3V-power #PWR011
U 1 1 5ED5A5FB
P 5700 3950
F 0 "#PWR011" H 5700 3800 50  0001 C CNN
F 1 "+3.3V" H 5715 4123 50  0000 C CNN
F 2 "" H 5700 3950 50  0001 C CNN
F 3 "" H 5700 3950 50  0001 C CNN
	1    5700 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3950 5700 4050
Text GLabel 8250 3300 0    50   Input ~ 0
SPI1_CS
Text GLabel 8250 3400 0    50   Input ~ 0
SPI1_SCK
Text GLabel 8250 3500 0    50   Input ~ 0
SPI1_MISO
Text GLabel 8250 3600 0    50   Input ~ 0
SPI1_MOSI
$Comp
L SensorArray-rescue:Conn_01x04-Connector_Generic J5
U 1 1 5ED64F67
P 8450 3400
F 0 "J5" H 8530 3392 50  0000 L CNN
F 1 "SPI_Connector" H 8530 3301 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8450 3400 50  0001 C CNN
F 3 "~" H 8450 3400 50  0001 C CNN
	1    8450 3400
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:Conn_01x02-Connector_Generic J4
U 1 1 5ED7203A
P 10400 3200
F 0 "J4" H 10480 3192 50  0000 L CNN
F 1 "VCC_Connector" H 10480 3101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10400 3200 50  0001 C CNN
F 3 "~" H 10400 3200 50  0001 C CNN
	1    10400 3200
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:VCC-power #PWR07
U 1 1 5ED74F6D
P 10000 3100
AR Path="/5ED74F6D" Ref="#PWR07"  Part="1" 
AR Path="/5EDF6668/5ED74F6D" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 10000 2950 50  0001 C CNN
F 1 "VCC" H 10015 3273 50  0000 C CNN
F 2 "" H 10000 3100 50  0001 C CNN
F 3 "" H 10000 3100 50  0001 C CNN
	1    10000 3100
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR08
U 1 1 5ED7C879
P 10000 3450
F 0 "#PWR08" H 10000 3200 50  0001 C CNN
F 1 "GND" H 10005 3277 50  0000 C CNN
F 2 "" H 10000 3450 50  0001 C CNN
F 3 "" H 10000 3450 50  0001 C CNN
	1    10000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 3300 10000 3300
Wire Wire Line
	10000 3300 10000 3450
Wire Wire Line
	10200 3200 10000 3200
Wire Wire Line
	10000 3200 10000 3100
$Comp
L SensorArray-rescue:Conn_01x02-Connector_Generic J6
U 1 1 5ED85155
P 10450 4000
F 0 "J6" H 10530 3992 50  0000 L CNN
F 1 "3V3_Connector" H 10530 3901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10450 4000 50  0001 C CNN
F 3 "~" H 10450 4000 50  0001 C CNN
	1    10450 4000
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR012
U 1 1 5ED87C2F
P 10000 4150
F 0 "#PWR012" H 10000 3900 50  0001 C CNN
F 1 "GND" H 10005 3977 50  0000 C CNN
F 2 "" H 10000 4150 50  0001 C CNN
F 3 "" H 10000 4150 50  0001 C CNN
	1    10000 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 4100 10000 4100
Wire Wire Line
	10000 4100 10000 4150
$Comp
L SensorArray-rescue:+3.3V-power #PWR09
U 1 1 5ED8D23E
P 10000 3900
F 0 "#PWR09" H 10000 3750 50  0001 C CNN
F 1 "+3.3V" H 10015 4073 50  0000 C CNN
F 2 "" H 10000 3900 50  0001 C CNN
F 3 "" H 10000 3900 50  0001 C CNN
	1    10000 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 3900 10000 4000
Wire Wire Line
	10250 4000 10000 4000
$Comp
L SensorArray-rescue:MountingHole_Pad-Mechanical H1
U 1 1 5ED92FBE
P 8000 4200
F 0 "H1" V 7954 4350 50  0000 L CNN
F 1 "MountingHole_Pad" V 8045 4350 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 8000 4200 50  0001 C CNN
F 3 "~" H 8000 4200 50  0001 C CNN
	1    8000 4200
	0    1    1    0   
$EndComp
$Comp
L SensorArray-rescue:MountingHole_Pad-Mechanical H2
U 1 1 5ED93C74
P 8000 4500
F 0 "H2" V 7954 4650 50  0000 L CNN
F 1 "MountingHole_Pad" V 8045 4650 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 8000 4500 50  0001 C CNN
F 3 "~" H 8000 4500 50  0001 C CNN
	1    8000 4500
	0    1    1    0   
$EndComp
$Comp
L SensorArray-rescue:MountingHole_Pad-Mechanical H3
U 1 1 5ED96943
P 8000 4850
F 0 "H3" V 7954 5000 50  0000 L CNN
F 1 "MountingHole_Pad" V 8045 5000 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 8000 4850 50  0001 C CNN
F 3 "~" H 8000 4850 50  0001 C CNN
	1    8000 4850
	0    1    1    0   
$EndComp
$Comp
L SensorArray-rescue:MountingHole_Pad-Mechanical H4
U 1 1 5ED995B9
P 8000 5150
F 0 "H4" V 7954 5300 50  0000 L CNN
F 1 "MountingHole_Pad" V 8045 5300 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 8000 5150 50  0001 C CNN
F 3 "~" H 8000 5150 50  0001 C CNN
	1    8000 5150
	0    1    1    0   
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR017
U 1 1 5ED9CAA3
P 7700 5300
F 0 "#PWR017" H 7700 5050 50  0001 C CNN
F 1 "GND" H 7705 5127 50  0000 C CNN
F 2 "" H 7700 5300 50  0001 C CNN
F 3 "" H 7700 5300 50  0001 C CNN
	1    7700 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 4200 7700 4200
Wire Wire Line
	7700 4200 7700 4500
Wire Wire Line
	7900 5150 7700 5150
Connection ~ 7700 5150
Wire Wire Line
	7700 5150 7700 5300
Wire Wire Line
	7900 4850 7700 4850
Connection ~ 7700 4850
Wire Wire Line
	7700 4850 7700 5150
Wire Wire Line
	7900 4500 7700 4500
Connection ~ 7700 4500
Wire Wire Line
	7700 4500 7700 4850
Text GLabel 3450 3700 2    50   Input ~ 0
ADC_SPI1_CS
Wire Wire Line
	4800 6100 4950 6100
Wire Wire Line
	4800 5600 4800 5500
Wire Wire Line
	4800 5500 4950 5500
Wire Wire Line
	4950 5500 4950 6100
Connection ~ 5050 5700
Wire Wire Line
	4900 5700 5050 5700
Wire Wire Line
	4950 6100 5050 6100
Connection ~ 4950 6100
Wire Wire Line
	4800 6100 4800 5800
Text GLabel 2050 5500 0    50   Input ~ 0
MUXB_S0
Text GLabel 2050 5600 0    50   Input ~ 0
MUXB_S1
Text GLabel 2050 5700 0    50   Input ~ 0
MUXB_S2
Text GLabel 2050 5800 0    50   Input ~ 0
MUXB_S3
Text GLabel 2050 5400 0    50   Input ~ 0
MUXA_S3
Text GLabel 2050 5300 0    50   Input ~ 0
MUXA_S2
Text GLabel 2050 5200 0    50   Input ~ 0
MUXA_S1
Text GLabel 2050 5100 0    50   Input ~ 0
MUXA_S0
$Comp
L SensorArray-rescue:1825910-6-dk_Tactile-Switches S1
U 1 1 5EE2B541
P 7150 1500
F 0 "S1" H 7150 1847 60  0000 C CNN
F 1 "1825910-6" H 7150 1741 60  0000 C CNN
F 2 "digikey-footprints:SMD-4_5x4.4mm_P4mm" H 7350 1700 60  0001 L CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825910&DocType=Customer+Drawing&DocLang=English" H 7350 1800 60  0001 L CNN
F 4 "450-1650-ND" H 7350 1900 60  0001 L CNN "Digi-Key_PN"
F 5 "1825910-6" H 7350 2000 60  0001 L CNN "MPN"
F 6 "Switches" H 7350 2100 60  0001 L CNN "Category"
F 7 "Tactile Switches" H 7350 2200 60  0001 L CNN "Family"
F 8 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825910&DocType=Customer+Drawing&DocLang=English" H 7350 2300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/te-connectivity-alcoswitch-switches/1825910-6/450-1650-ND/1632536" H 7350 2400 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TACTILE SPST-NO 0.05A 24V" H 7350 2500 60  0001 L CNN "Description"
F 11 "TE Connectivity ALCOSWITCH Switches" H 7350 2600 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7350 2700 60  0001 L CNN "Status"
	1    7150 1500
	1    0    0    -1  
$EndComp
NoConn ~ 6950 1600
NoConn ~ 7350 1600
Text GLabel 6150 4350 3    50   Input ~ 0
PushButton_VDD
$Comp
L SensorArray-rescue:R_Small-Device R19
U 1 1 5EE39EE1
P 6150 4150
F 0 "R19" H 6091 4104 50  0000 R CNN
F 1 "2k2" H 6091 4195 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6150 4150 50  0001 C CNN
F 3 "~" H 6150 4150 50  0001 C CNN
	1    6150 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 4350 6150 4250
$Comp
L SensorArray-rescue:+3.3V-power #PWR039
U 1 1 5EE39EE8
P 6150 3950
F 0 "#PWR039" H 6150 3800 50  0001 C CNN
F 1 "+3.3V" H 6165 4123 50  0000 C CNN
F 2 "" H 6150 3950 50  0001 C CNN
F 3 "" H 6150 3950 50  0001 C CNN
	1    6150 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 3950 6150 4050
Text GLabel 7350 1400 2    50   Input ~ 0
PushButton_Calibration
Text GLabel 6950 1400 0    50   Input ~ 0
PushButton_VDD
Text GLabel 6500 4800 3    50   Input ~ 0
Switch_VDD
Text GLabel 2050 5900 0    50   Input ~ 0
PushButton_Calibration
Text GLabel 2050 6000 0    50   Input ~ 0
Switch_Mode
Text GLabel 10350 1400 2    50   Input ~ 0
Switch_Mode
Text GLabel 3450 3600 2    50   Input ~ 0
AMP_OUT_B
Text GLabel 3450 3500 2    50   Input ~ 0
AMP_OUT_A
$Comp
L SensorArray-rescue:SW_DIP_x01-Switch SW1
U 1 1 5EE95C5E
P 9750 1400
F 0 "SW1" H 9750 1667 50  0000 C CNN
F 1 "SW_DIP_x01" H 9750 1576 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 9750 1400 50  0001 C CNN
F 3 "~" H 9750 1400 50  0001 C CNN
	1    9750 1400
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:R_Small-Device R?
U 1 1 5EEA38C4
P 6500 4150
AR Path="/5EDF6668/5EEA38C4" Ref="R?"  Part="1" 
AR Path="/5EEA38C4" Ref="R20"  Part="1" 
F 0 "R20" H 6559 4196 50  0000 L CNN
F 1 "1.5k" H 6559 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6500 4150 50  0001 C CNN
F 3 "~" H 6500 4150 50  0001 C CNN
	1    6500 4150
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:LED_Small-Device D?
U 1 1 5EEA38CA
P 6500 4550
AR Path="/5EDF6668/5EEA38CA" Ref="D?"  Part="1" 
AR Path="/5EEA38CA" Ref="D6"  Part="1" 
F 0 "D6" V 6546 4480 50  0000 R CNN
F 1 "LED" V 6455 4480 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 6500 4550 50  0001 C CNN
F 3 "~" V 6500 4550 50  0001 C CNN
	1    6500 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 4650 6500 4800
Wire Wire Line
	6500 4450 6500 4250
$Comp
L SensorArray-rescue:+3.3V-power #PWR042
U 1 1 5EEC5D0E
P 6500 3950
F 0 "#PWR042" H 6500 3800 50  0001 C CNN
F 1 "+3.3V" H 6515 4123 50  0000 C CNN
F 2 "" H 6500 3950 50  0001 C CNN
F 3 "" H 6500 3950 50  0001 C CNN
	1    6500 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3950 6500 4050
$Comp
L SensorArray-rescue:GND-power #PWR037
U 1 1 5EEF033A
P 9350 1500
F 0 "#PWR037" H 9350 1250 50  0001 C CNN
F 1 "GND" H 9355 1327 50  0000 C CNN
F 2 "" H 9350 1500 50  0001 C CNN
F 3 "" H 9350 1500 50  0001 C CNN
	1    9350 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1500 9350 1400
Wire Wire Line
	9350 1400 9450 1400
Wire Notes Line
	10500 6000 10450 6000
$Comp
L SensorArray-rescue:+3.3V-power #PWR0118
U 1 1 5EE7C967
P 3000 1750
F 0 "#PWR0118" H 3000 1600 50  0001 C CNN
F 1 "+3.3V" H 3015 1923 50  0000 C CNN
F 2 "" H 3000 1750 50  0001 C CNN
F 3 "" H 3000 1750 50  0001 C CNN
	1    3000 1750
	1    0    0    -1  
$EndComp
Text GLabel 3450 5100 2    50   Input ~ 0
SPI1_CS_POTIA
Text GLabel 3450 5200 2    50   Input ~ 0
SPI1_CS_POTIB
Connection ~ 2650 6850
$Comp
L SensorArray-rescue:GNDA-power #PWR0122
U 1 1 5EECD787
P 2850 6800
F 0 "#PWR0122" H 2850 6550 50  0001 C CNN
F 1 "GNDA" H 2855 6627 50  0000 C CNN
F 2 "" H 2850 6800 50  0001 C CNN
F 3 "" H 2850 6800 50  0001 C CNN
	1    2850 6800
	1    0    0    -1  
$EndComp
Connection ~ 10200 1400
Wire Wire Line
	10200 1400 10050 1400
Wire Wire Line
	10350 1400 10200 1400
Wire Wire Line
	10200 1250 10200 1400
Text GLabel 10200 1250 1    50   Input ~ 0
Switch_VDD
$EndSCHEMATC
