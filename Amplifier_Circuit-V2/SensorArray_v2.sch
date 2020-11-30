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
P 2200 4100
F 0 "U1" H 2633 2211 50  0000 C CNN
F 1 "STM32F405RGTx" H 2751 2278 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 1600 2400 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00037051.pdf" H 2200 4100 50  0001 C CNN
	1    2200 4100
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:+3.3V-power #PWR05
U 1 1 5EC96A56
P 2000 2150
F 0 "#PWR05" H 2000 2000 50  0001 C CNN
F 1 "+3.3V" H 2015 2323 50  0000 C CNN
F 2 "" H 2000 2150 50  0001 C CNN
F 3 "" H 2000 2150 50  0001 C CNN
	1    2000 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2150 2000 2250
Wire Wire Line
	2100 2300 2100 2250
Wire Wire Line
	2100 2250 2000 2250
Connection ~ 2000 2250
Wire Wire Line
	2000 2250 2000 2300
Wire Wire Line
	2100 2250 2200 2250
Connection ~ 2100 2250
Wire Wire Line
	2400 2300 2400 2250
Wire Wire Line
	2300 2300 2300 2250
Connection ~ 2300 2250
Wire Wire Line
	2300 2250 2400 2250
Wire Wire Line
	2200 2300 2200 2250
Connection ~ 2200 2250
Wire Wire Line
	2200 2250 2300 2250
$Comp
L SensorArray-rescue:+3.3VA-power #PWR06
U 1 1 5ECAF547
P 2500 2150
F 0 "#PWR06" H 2500 2000 50  0001 C CNN
F 1 "+3.3VA" H 2515 2323 50  0000 C CNN
F 2 "" H 2500 2150 50  0001 C CNN
F 3 "" H 2500 2150 50  0001 C CNN
	1    2500 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2150 2500 2300
$Comp
L SensorArray-rescue:GND-power #PWR020
U 1 1 5ECB0571
P 2100 6000
F 0 "#PWR020" H 2100 5750 50  0001 C CNN
F 1 "GND" H 2105 5827 50  0000 C CNN
F 2 "" H 2100 6000 50  0001 C CNN
F 3 "" H 2100 6000 50  0001 C CNN
	1    2100 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 5950 2100 5900
Wire Wire Line
	2200 5900 2200 5950
Wire Wire Line
	2200 5950 2100 5950
Wire Wire Line
	2100 5950 2100 6000
$Comp
L SensorArray-rescue:C_Small-Device C1
U 1 1 5ECB6D45
P 750 1200
F 0 "C1" H 842 1246 50  0000 L CNN
F 1 "10u" H 842 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 750 1200 50  0001 C CNN
F 3 "~" H 750 1200 50  0001 C CNN
	1    750  1200
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C2
U 1 1 5ECB75A9
P 1150 1200
F 0 "C2" H 1242 1246 50  0000 L CNN
F 1 "100n" H 1242 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1150 1200 50  0001 C CNN
F 3 "~" H 1150 1200 50  0001 C CNN
	1    1150 1200
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C3
U 1 1 5ECB8026
P 1550 1200
F 0 "C3" H 1642 1246 50  0000 L CNN
F 1 "100n" H 1642 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1550 1200 50  0001 C CNN
F 3 "~" H 1550 1200 50  0001 C CNN
	1    1550 1200
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C4
U 1 1 5ECB8B6F
P 2000 1200
F 0 "C4" H 2092 1246 50  0000 L CNN
F 1 "100n" H 2092 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2000 1200 50  0001 C CNN
F 3 "~" H 2000 1200 50  0001 C CNN
	1    2000 1200
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C5
U 1 1 5ECB95FB
P 2450 1200
F 0 "C5" H 2542 1246 50  0000 L CNN
F 1 "100n" H 2542 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2450 1200 50  0001 C CNN
F 3 "~" H 2450 1200 50  0001 C CNN
	1    2450 1200
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C6
U 1 1 5ECBA05D
P 2850 1200
F 0 "C6" H 2942 1246 50  0000 L CNN
F 1 "100n" H 2942 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2850 1200 50  0001 C CNN
F 3 "~" H 2850 1200 50  0001 C CNN
	1    2850 1200
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C7
U 1 1 5ECBB0E2
P 3250 1200
F 0 "C7" H 3342 1246 50  0000 L CNN
F 1 "100n" H 3342 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3250 1200 50  0001 C CNN
F 3 "~" H 3250 1200 50  0001 C CNN
	1    3250 1200
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C8
U 1 1 5ECBBC8B
P 3650 1200
F 0 "C8" H 3742 1246 50  0000 L CNN
F 1 "100n" H 3742 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3650 1200 50  0001 C CNN
F 3 "~" H 3650 1200 50  0001 C CNN
	1    3650 1200
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C9
U 1 1 5ECBCA29
P 4050 1200
F 0 "C9" H 4142 1246 50  0000 L CNN
F 1 "100n" H 4142 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4050 1200 50  0001 C CNN
F 3 "~" H 4050 1200 50  0001 C CNN
	1    4050 1200
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C10
U 1 1 5ECBD81B
P 4450 1200
F 0 "C10" H 4542 1246 50  0000 L CNN
F 1 "100n" H 4542 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4450 1200 50  0001 C CNN
F 3 "~" H 4450 1200 50  0001 C CNN
	1    4450 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  1450 1150 1450
Wire Wire Line
	750  1300 750  1450
Wire Wire Line
	4450 1300 4450 1450
Wire Wire Line
	4450 1100 4450 1050
Wire Wire Line
	4450 1050 4050 1050
Wire Wire Line
	750  1050 750  1100
Wire Wire Line
	1150 1300 1150 1450
Connection ~ 1150 1450
Wire Wire Line
	1150 1450 1550 1450
Wire Wire Line
	1150 1100 1150 1050
Connection ~ 1150 1050
Wire Wire Line
	1150 1050 750  1050
Wire Wire Line
	1550 1100 1550 1050
Connection ~ 1550 1050
Wire Wire Line
	1550 1050 1150 1050
Wire Wire Line
	1550 1300 1550 1450
Connection ~ 1550 1450
Wire Wire Line
	1550 1450 2000 1450
Wire Wire Line
	2000 1300 2000 1450
Connection ~ 2000 1450
Wire Wire Line
	2000 1450 2450 1450
Wire Wire Line
	2000 1100 2000 1050
Connection ~ 2000 1050
Wire Wire Line
	2000 1050 1550 1050
Wire Wire Line
	2450 1300 2450 1450
Connection ~ 2450 1450
Wire Wire Line
	2450 1100 2450 1050
Connection ~ 2450 1050
Wire Wire Line
	2450 1050 2000 1050
Wire Wire Line
	2850 1100 2850 1050
Connection ~ 2850 1050
Wire Wire Line
	2850 1300 2850 1450
Connection ~ 2850 1450
Wire Wire Line
	2850 1450 3250 1450
Wire Wire Line
	3250 1300 3250 1450
Connection ~ 3250 1450
Wire Wire Line
	3250 1450 3650 1450
Wire Wire Line
	3250 1100 3250 1050
Connection ~ 3250 1050
Wire Wire Line
	3250 1050 2850 1050
Wire Wire Line
	3650 1100 3650 1050
Connection ~ 3650 1050
Wire Wire Line
	3650 1050 3250 1050
Wire Wire Line
	3650 1300 3650 1450
Connection ~ 3650 1450
Wire Wire Line
	3650 1450 4050 1450
Wire Wire Line
	4050 1100 4050 1050
Connection ~ 4050 1050
Wire Wire Line
	4050 1050 3650 1050
Wire Wire Line
	4050 1300 4050 1450
Connection ~ 4050 1450
Wire Wire Line
	4050 1450 4450 1450
Wire Wire Line
	2650 950  2650 1050
Wire Wire Line
	2450 1050 2650 1050
Connection ~ 2650 1050
Wire Wire Line
	2650 1050 2850 1050
$Comp
L SensorArray-rescue:GND-power #PWR02
U 1 1 5ECD97E6
P 2650 1500
F 0 "#PWR02" H 2650 1250 50  0001 C CNN
F 1 "GND" H 2655 1327 50  0000 C CNN
F 2 "" H 2650 1500 50  0001 C CNN
F 3 "" H 2650 1500 50  0001 C CNN
	1    2650 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1500 2650 1450
Wire Wire Line
	2450 1450 2650 1450
Connection ~ 2650 1450
Wire Wire Line
	2650 1450 2850 1450
$Comp
L SensorArray-rescue:C_Small-Device C12
U 1 1 5ECDCA0A
P 1250 3150
F 0 "C12" H 1342 3196 50  0000 L CNN
F 1 "2.2u" H 1342 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1250 3150 50  0001 C CNN
F 3 "~" H 1250 3150 50  0001 C CNN
	1    1250 3150
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C11
U 1 1 5ECDE1B1
P 900 3150
F 0 "C11" H 992 3196 50  0000 L CNN
F 1 "2.2u" H 992 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 900 3150 50  0001 C CNN
F 3 "~" H 900 3150 50  0001 C CNN
	1    900  3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3000 1250 3000
Wire Wire Line
	1250 3000 1250 3050
Wire Wire Line
	1500 2900 900  2900
Wire Wire Line
	900  2900 900  3050
$Comp
L SensorArray-rescue:GND-power #PWR013
U 1 1 5ECE3EE0
P 900 3350
F 0 "#PWR013" H 900 3100 50  0001 C CNN
F 1 "GND" H 905 3177 50  0000 C CNN
F 2 "" H 900 3350 50  0001 C CNN
F 3 "" H 900 3350 50  0001 C CNN
	1    900  3350
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR014
U 1 1 5ECE5CEE
P 1250 3350
F 0 "#PWR014" H 1250 3100 50  0001 C CNN
F 1 "GND" H 1255 3177 50  0000 C CNN
F 2 "" H 1250 3350 50  0001 C CNN
F 3 "" H 1250 3350 50  0001 C CNN
	1    1250 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3250 900  3350
Wire Wire Line
	1250 3250 1250 3350
Text GLabel 1500 2500 0    50   Input ~ 0
NRST
Text GLabel 1500 2700 0    50   Input ~ 0
BOOT0
Text GLabel 2900 4400 2    50   Input ~ 0
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
Text GLabel 2900 3800 2    50   Input ~ 0
SWDIO
Text GLabel 2900 3900 2    50   Input ~ 0
SWCLK
Text GLabel 2900 4500 2    50   Input ~ 0
SWO
Text GLabel 1500 3700 0    50   Input ~ 0
HSE_IN
Text GLabel 1500 3800 0    50   Input ~ 0
HSE_OUT
$Comp
L SensorArray-rescue:Crystal_GND24_Small-Device HSE1
U 1 1 5ED1B15A
P 1300 6850
F 0 "HSE1" H 1250 7250 50  0000 L CNN
F 1 "16MHz" H 1250 7150 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 1300 6850 50  0001 C CNN
F 3 "~" H 1300 6850 50  0001 C CNN
	1    1300 6850
	1    0    0    -1  
$EndComp
Text GLabel 1050 6850 0    50   Input ~ 0
HSE_IN
Text GLabel 1850 6850 2    50   Input ~ 0
HSE_OUT
$Comp
L SensorArray-rescue:R_Small-Device R5
U 1 1 5ED33700
P 1650 6850
F 0 "R5" V 1454 6850 50  0000 C CNN
F 1 "220" V 1545 6850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1650 6850 50  0001 C CNN
F 3 "~" H 1650 6850 50  0001 C CNN
	1    1650 6850
	0    1    1    0   
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C13
U 1 1 5ED34C92
P 1100 7050
F 0 "C13" H 850 7100 50  0000 L CNN
F 1 "12p" H 900 7000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1100 7050 50  0001 C CNN
F 3 "~" H 1100 7050 50  0001 C CNN
	1    1100 7050
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C14
U 1 1 5ED36778
P 1550 7050
F 0 "C14" H 1642 7096 50  0000 L CNN
F 1 "12p" H 1642 7005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1550 7050 50  0001 C CNN
F 3 "~" H 1550 7050 50  0001 C CNN
	1    1550 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 6850 1100 6850
Wire Wire Line
	1100 6950 1100 6850
Connection ~ 1100 6850
Wire Wire Line
	1100 6850 1200 6850
Wire Wire Line
	1100 7150 1100 7250
Wire Wire Line
	1100 7250 1300 7250
Wire Wire Line
	1550 7250 1550 7150
Wire Wire Line
	1550 6950 1550 6850
Wire Wire Line
	1750 6850 1850 6850
$Comp
L SensorArray-rescue:GND-power #PWR018
U 1 1 5ED4C258
P 1300 7250
F 0 "#PWR018" H 1300 7000 50  0001 C CNN
F 1 "GND" H 1305 7077 50  0000 C CNN
F 2 "" H 1300 7250 50  0001 C CNN
F 3 "" H 1300 7250 50  0001 C CNN
	1    1300 7250
	1    0    0    -1  
$EndComp
Connection ~ 1300 7250
Text Notes 750  7650 0    50   ~ 0
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
Text GLabel 2900 4900 2    50   Input ~ 0
I2C1_SDA
Text GLabel 2900 4800 2    50   Input ~ 0
I2C1_SCL
$Sheet
S 8850 6050 500  150 
U 5EDF6668
F0 "Powersupply" 50
F1 "Powersupply_V2.sch" 50
$EndSheet
$Sheet
S 10150 5600 850  700 
U 5EE29113
F0 "Measurement" 50
F1 "Measurement_V2.sch" 50
$EndSheet
Text GLabel 2900 2900 2    50   Input ~ 0
SPI1_CS
Text GLabel 2900 3000 2    50   Input ~ 0
SPI1_SCK
Text GLabel 2900 3100 2    50   Input ~ 0
SPI1_MISO
Text GLabel 2900 3200 2    50   Input ~ 0
SPI1_MOSI
Text GLabel 2900 3400 2    50   Input ~ 0
USART1_TX
Text GLabel 2900 3500 2    50   Input ~ 0
USART1_RX
$Comp
L SensorArray-rescue:R_Small-Device R6
U 1 1 5ECD9CEB
P 3650 5550
F 0 "R6" H 3591 5504 50  0000 R CNN
F 1 "2k2" H 3591 5595 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3650 5550 50  0001 C CNN
F 3 "~" H 3650 5550 50  0001 C CNN
	1    3650 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 5400 3650 5450
$Comp
L SensorArray-rescue:GND-power #PWR019
U 1 1 5ECDEFB0
P 3650 5750
F 0 "#PWR019" H 3650 5500 50  0001 C CNN
F 1 "GND" H 3655 5577 50  0000 C CNN
F 2 "" H 3650 5750 50  0001 C CNN
F 3 "" H 3650 5750 50  0001 C CNN
	1    3650 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5750 3650 5650
NoConn ~ 1500 5500
NoConn ~ 1500 5400
NoConn ~ 1500 5300
NoConn ~ 1500 5200
NoConn ~ 1500 4000
NoConn ~ 2900 5500
NoConn ~ 2900 5300
NoConn ~ 2900 5100
NoConn ~ 2900 5000
NoConn ~ 2900 4700
NoConn ~ 2900 4600
NoConn ~ 2900 4000
NoConn ~ 2900 3300
NoConn ~ 2900 2500
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
Text GLabel 5350 4350 3    50   Input ~ 0
I2C1_SCL
Text GLabel 5650 4350 3    50   Input ~ 0
I2C1_SDA
$Comp
L SensorArray-rescue:R_Small-Device R1
U 1 1 5ED508E4
P 5350 4150
F 0 "R1" H 5291 4104 50  0000 R CNN
F 1 "2k2" H 5291 4195 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5350 4150 50  0001 C CNN
F 3 "~" H 5350 4150 50  0001 C CNN
	1    5350 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 4350 5350 4250
$Comp
L SensorArray-rescue:R_Small-Device R2
U 1 1 5ED52C0C
P 5650 4150
F 0 "R2" H 5591 4104 50  0000 R CNN
F 1 "2k2" H 5591 4195 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5650 4150 50  0001 C CNN
F 3 "~" H 5650 4150 50  0001 C CNN
	1    5650 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5650 4350 5650 4250
$Comp
L SensorArray-rescue:+3.3V-power #PWR010
U 1 1 5ED57B50
P 5350 3950
F 0 "#PWR010" H 5350 3800 50  0001 C CNN
F 1 "+3.3V" H 5365 4123 50  0000 C CNN
F 2 "" H 5350 3950 50  0001 C CNN
F 3 "" H 5350 3950 50  0001 C CNN
	1    5350 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3950 5350 4050
$Comp
L SensorArray-rescue:+3.3V-power #PWR011
U 1 1 5ED5A5FB
P 5650 3950
F 0 "#PWR011" H 5650 3800 50  0001 C CNN
F 1 "+3.3V" H 5665 4123 50  0000 C CNN
F 2 "" H 5650 3950 50  0001 C CNN
F 3 "" H 5650 3950 50  0001 C CNN
	1    5650 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3950 5650 4050
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
F 1 "SPI1_Connector" H 8530 3301 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8450 3400 50  0001 C CNN
F 3 "~" H 8450 3400 50  0001 C CNN
	1    8450 3400
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:Conn_01x02-Connector_Generic J4
U 1 1 5ED7203A
P 10350 3200
F 0 "J4" H 10430 3192 50  0000 L CNN
F 1 "VCC_Connector" H 10430 3101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10350 3200 50  0001 C CNN
F 3 "~" H 10350 3200 50  0001 C CNN
	1    10350 3200
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:VCC-power #PWR07
U 1 1 5ED74F6D
P 9950 3100
AR Path="/5ED74F6D" Ref="#PWR07"  Part="1" 
AR Path="/5EDF6668/5ED74F6D" Ref="#PWR?"  Part="1" 
F 0 "#PWR07" H 9950 2950 50  0001 C CNN
F 1 "VCC" H 9965 3273 50  0000 C CNN
F 2 "" H 9950 3100 50  0001 C CNN
F 3 "" H 9950 3100 50  0001 C CNN
	1    9950 3100
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR08
U 1 1 5ED7C879
P 9950 3450
F 0 "#PWR08" H 9950 3200 50  0001 C CNN
F 1 "GND" H 9955 3277 50  0000 C CNN
F 2 "" H 9950 3450 50  0001 C CNN
F 3 "" H 9950 3450 50  0001 C CNN
	1    9950 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 3300 9950 3300
Wire Wire Line
	9950 3300 9950 3450
Wire Wire Line
	10150 3200 9950 3200
Wire Wire Line
	9950 3200 9950 3100
$Comp
L SensorArray-rescue:Conn_01x02-Connector_Generic J6
U 1 1 5ED85155
P 10350 4000
F 0 "J6" H 10430 3992 50  0000 L CNN
F 1 "3V3_Connector" H 10430 3901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10350 4000 50  0001 C CNN
F 3 "~" H 10350 4000 50  0001 C CNN
	1    10350 4000
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR012
U 1 1 5ED87C2F
P 9900 4150
F 0 "#PWR012" H 9900 3900 50  0001 C CNN
F 1 "GND" H 9905 3977 50  0000 C CNN
F 2 "" H 9900 4150 50  0001 C CNN
F 3 "" H 9900 4150 50  0001 C CNN
	1    9900 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 4100 9900 4100
Wire Wire Line
	9900 4100 9900 4150
$Comp
L SensorArray-rescue:+3.3V-power #PWR09
U 1 1 5ED8D23E
P 9900 3900
F 0 "#PWR09" H 9900 3750 50  0001 C CNN
F 1 "+3.3V" H 9915 4073 50  0000 C CNN
F 2 "" H 9900 3900 50  0001 C CNN
F 3 "" H 9900 3900 50  0001 C CNN
	1    9900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 3900 9900 4000
Wire Wire Line
	10150 4000 9900 4000
$Comp
L SensorArray-rescue:MountingHole_Pad-Mechanical H1
U 1 1 5ED92FBE
P 8150 4600
F 0 "H1" V 8104 4750 50  0000 L CNN
F 1 "MountingHole_Pad" V 8195 4750 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 8150 4600 50  0001 C CNN
F 3 "~" H 8150 4600 50  0001 C CNN
	1    8150 4600
	0    1    1    0   
$EndComp
$Comp
L SensorArray-rescue:MountingHole_Pad-Mechanical H2
U 1 1 5ED93C74
P 8150 4900
F 0 "H2" V 8104 5050 50  0000 L CNN
F 1 "MountingHole_Pad" V 8195 5050 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 8150 4900 50  0001 C CNN
F 3 "~" H 8150 4900 50  0001 C CNN
	1    8150 4900
	0    1    1    0   
$EndComp
$Comp
L SensorArray-rescue:MountingHole_Pad-Mechanical H3
U 1 1 5ED96943
P 8150 5250
F 0 "H3" V 8104 5400 50  0000 L CNN
F 1 "MountingHole_Pad" V 8195 5400 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 8150 5250 50  0001 C CNN
F 3 "~" H 8150 5250 50  0001 C CNN
	1    8150 5250
	0    1    1    0   
$EndComp
$Comp
L SensorArray-rescue:MountingHole_Pad-Mechanical H4
U 1 1 5ED995B9
P 8150 5550
F 0 "H4" V 8104 5700 50  0000 L CNN
F 1 "MountingHole_Pad" V 8195 5700 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 8150 5550 50  0001 C CNN
F 3 "~" H 8150 5550 50  0001 C CNN
	1    8150 5550
	0    1    1    0   
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR017
U 1 1 5ED9CAA3
P 7850 5700
F 0 "#PWR017" H 7850 5450 50  0001 C CNN
F 1 "GND" H 7855 5527 50  0000 C CNN
F 2 "" H 7850 5700 50  0001 C CNN
F 3 "" H 7850 5700 50  0001 C CNN
	1    7850 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4600 7850 4600
Wire Wire Line
	7850 4600 7850 4900
Wire Wire Line
	8050 5550 7850 5550
Connection ~ 7850 5550
Wire Wire Line
	7850 5550 7850 5700
Wire Wire Line
	8050 5250 7850 5250
Connection ~ 7850 5250
Wire Wire Line
	7850 5250 7850 5550
Wire Wire Line
	8050 4900 7850 4900
Connection ~ 7850 4900
Wire Wire Line
	7850 4900 7850 5250
Text GLabel 2900 2800 2    50   Input ~ 0
ADC_SPI2_CS
Wire Wire Line
	1300 7250 1450 7250
Wire Wire Line
	1300 6750 1300 6650
Wire Wire Line
	1300 6650 1450 6650
Wire Wire Line
	1450 6650 1450 7250
Connection ~ 1550 6850
Wire Wire Line
	1400 6850 1550 6850
Wire Wire Line
	1450 7250 1550 7250
Connection ~ 1450 7250
Wire Wire Line
	1300 7250 1300 6950
Text GLabel 1500 4600 0    50   Input ~ 0
MUXB_S0
Text GLabel 1500 4700 0    50   Input ~ 0
MUXB_S1
Text GLabel 1500 4800 0    50   Input ~ 0
MUXB_S2
Text GLabel 1500 4900 0    50   Input ~ 0
MUXB_S3
Text GLabel 1500 4500 0    50   Input ~ 0
MUXA_S3
Text GLabel 1500 4400 0    50   Input ~ 0
MUXA_S2
Text GLabel 1500 4300 0    50   Input ~ 0
MUXA_S1
Text GLabel 1500 4200 0    50   Input ~ 0
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
Text GLabel 1500 5000 0    50   Input ~ 0
PushButton_Calibration
Text GLabel 1500 5100 0    50   Input ~ 0
Switch_Mode
Text GLabel 10350 1400 2    50   Input ~ 0
Switch_Mode
Text GLabel 2900 2700 2    50   Input ~ 0
AMP_OUT_B
Text GLabel 2900 2600 2    50   Input ~ 0
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
$Comp
L SensorArray-rescue:+3.3V-power #PWR0118
U 1 1 5EE7C967
P 2650 950
F 0 "#PWR0118" H 2650 800 50  0001 C CNN
F 1 "+3.3V" H 2665 1123 50  0000 C CNN
F 2 "" H 2650 950 50  0001 C CNN
F 3 "" H 2650 950 50  0001 C CNN
	1    2650 950 
	1    0    0    -1  
$EndComp
Text GLabel 2900 4200 2    50   Input ~ 0
SPI1_CS_POTIA
Text GLabel 2900 4300 2    50   Input ~ 0
SPI1_CS_POTIB
Connection ~ 2100 5950
$Comp
L SensorArray-rescue:GNDA-power #PWR0122
U 1 1 5EECD787
P 2300 5900
F 0 "#PWR0122" H 2300 5650 50  0001 C CNN
F 1 "GNDA" H 2305 5727 50  0000 C CNN
F 2 "" H 2300 5900 50  0001 C CNN
F 3 "" H 2300 5900 50  0001 C CNN
	1    2300 5900
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
Text GLabel 2900 5200 2    50   Input ~ 0
SPI2_SCK
Text GLabel 2900 5600 2    50   Input ~ 0
SPI2_MISO
Text GLabel 2900 5700 2    50   Input ~ 0
SPI2_MOSI
$Comp
L SensorArray-rescue:LED_Small-Device D1
U 1 1 5ECD8054
P 3500 5400
F 0 "D1" H 3500 5193 50  0000 C CNN
F 1 "LED" H 3500 5284 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 3500 5400 50  0001 C CNN
F 3 "~" V 3500 5400 50  0001 C CNN
	1    3500 5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 5400 3600 5400
Wire Wire Line
	2900 5400 3400 5400
Text GLabel 8250 3850 0    50   Input ~ 0
ADC_SPI2_CS
Text GLabel 8250 3950 0    50   Input ~ 0
SPI2_SCK
Text GLabel 8250 4050 0    50   Input ~ 0
SPI2_MISO
Text GLabel 8250 4150 0    50   Input ~ 0
SPI2_MOSI
$Comp
L SensorArray-rescue:Conn_01x04-Connector_Generic J10
U 1 1 5FAA5422
P 8450 3950
F 0 "J10" H 8530 3942 50  0000 L CNN
F 1 "SPI2_Connector" H 8530 3851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8450 3950 50  0001 C CNN
F 3 "~" H 8450 3950 50  0001 C CNN
	1    8450 3950
	1    0    0    -1  
$EndComp
Text Notes 5150 3600 0    50   ~ 0
I2C Pull resistors
Text GLabel 2900 3600 2    50   Input ~ 0
USB_D-
Text GLabel 2900 3700 2    50   Input ~ 0
USB_D+
Wire Notes Line
	2450 6400 2450 7750
Wire Notes Line
	2450 7750 550  7750
Wire Notes Line
	550  7750 550  6400
Wire Notes Line
	550  6400 2450 6400
Text Notes 550  6400 0    50   ~ 0
Crystal
$Comp
L Connector:USB_B_Micro J11
U 1 1 5FC0CF0B
P 3300 6900
F 0 "J11" H 3357 7367 50  0000 C CNN
F 1 "USB_B_Micro" H 3357 7276 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105133-0001" H 3450 6850 50  0001 C CNN
F 3 "~" H 3450 6850 50  0001 C CNN
	1    3300 6900
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR047
U 1 1 5FC19757
P 3300 7300
F 0 "#PWR047" H 3300 7050 50  0001 C CNN
F 1 "GND" H 3305 7127 50  0000 C CNN
F 2 "" H 3300 7300 50  0001 C CNN
F 3 "" H 3300 7300 50  0001 C CNN
	1    3300 7300
	1    0    0    -1  
$EndComp
NoConn ~ 3200 7300
$Comp
L Power_Protection:USBLC6-2SC6 U11
U 1 1 5FC223F1
P 5400 6950
F 0 "U11" H 5500 7400 50  0000 C CNN
F 1 "USBLC6-2SC6" H 5700 7300 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 5400 6450 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/usblc6-2.pdf" H 5600 7300 50  0001 C CNN
	1    5400 6950
	1    0    0    -1  
$EndComp
Text GLabel 3600 6900 2    50   Input ~ 0
USB_CONN_D+
Text GLabel 3600 7000 2    50   Input ~ 0
USB_CONN_D-
$Comp
L SensorArray-rescue:GND-power #PWR049
U 1 1 5FC35C14
P 5400 7350
F 0 "#PWR049" H 5400 7100 50  0001 C CNN
F 1 "GND" H 5405 7177 50  0000 C CNN
F 2 "" H 5400 7350 50  0001 C CNN
F 3 "" H 5400 7350 50  0001 C CNN
	1    5400 7350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR044
U 1 1 5FC3A52D
P 3750 6600
F 0 "#PWR044" H 3750 6450 50  0001 C CNN
F 1 "+5V" H 3765 6773 50  0000 C CNN
F 2 "" H 3750 6600 50  0001 C CNN
F 3 "" H 3750 6600 50  0001 C CNN
	1    3750 6600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR038
U 1 1 5FC3AD18
P 5400 6550
F 0 "#PWR038" H 5400 6400 50  0001 C CNN
F 1 "+5V" H 5415 6723 50  0000 C CNN
F 2 "" H 5400 6550 50  0001 C CNN
F 3 "" H 5400 6550 50  0001 C CNN
	1    5400 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6700 3750 6700
Wire Wire Line
	3750 6700 3750 6600
Text GLabel 5800 7050 2    50   Input ~ 0
USB_CONN_D+
Text GLabel 5000 7050 0    50   Input ~ 0
USB_CONN_D-
Text GLabel 5000 6850 0    50   Input ~ 0
USB_D-
Text GLabel 5800 6850 2    50   Input ~ 0
USB_D+
Wire Notes Line
	2850 6250 2850 7650
Wire Notes Line
	2850 7650 6550 7650
Wire Notes Line
	6550 7650 6550 6250
Wire Notes Line
	6550 6250 2850 6250
Text Notes 2900 6250 0    50   ~ 0
USB with ESD protection
NoConn ~ 3600 7100
Wire Notes Line
	5150 3600 5900 3600
Wire Notes Line
	5150 4800 5900 4800
Wire Notes Line
	5150 3600 5150 4800
Wire Notes Line
	5900 4800 5900 3600
NoConn ~ 1500 5600
NoConn ~ 1500 5700
$EndSCHEMATC
