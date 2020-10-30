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
L SensorArray-rescue:CD74HC4067M-74xx U?
U 1 1 5EE2F3A8
P 3700 6200
AR Path="/5EE2F3A8" Ref="U?"  Part="1" 
AR Path="/5EE29113/5EE2F3A8" Ref="U10"  Part="1" 
F 0 "U10" H 3850 7250 50  0000 C CNN
F 1 "CD74HC4067M" H 4050 7150 50  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 4600 5200 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4067.pdf" H 3350 7050 50  0001 C CNN
	1    3700 6200
	1    0    0    -1  
$EndComp
Wire Notes Line
	3500 2450 3500 700 
Wire Notes Line
	6300 700  6300 2450
Text Notes 3500 650  0    50   ~ 0
Digital Potentiometer
$Comp
L SensorArray-rescue:R_Small-Device R?
U 1 1 5EE4276D
P 6650 950
AR Path="/5EE4276D" Ref="R?"  Part="1" 
AR Path="/5EE29113/5EE4276D" Ref="R10"  Part="1" 
F 0 "R10" H 6709 996 50  0000 L CNN
F 1 "10k" H 6709 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6650 950 50  0001 C CNN
F 3 "~" H 6650 950 50  0001 C CNN
	1    6650 950 
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:R_Small-Device R?
U 1 1 5EE42773
P 6400 1600
AR Path="/5EE42773" Ref="R?"  Part="1" 
AR Path="/5EE29113/5EE42773" Ref="R12"  Part="1" 
F 0 "R12" H 6459 1646 50  0000 L CNN
F 1 "16k" H 6459 1555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6400 1600 50  0001 C CNN
F 3 "~" H 6400 1600 50  0001 C CNN
	1    6400 1600
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:R_Small-Device R?
U 1 1 5EE42779
P 6900 1800
AR Path="/5EE42779" Ref="R?"  Part="1" 
AR Path="/5EE29113/5EE42779" Ref="R13"  Part="1" 
F 0 "R13" H 6959 1846 50  0000 L CNN
F 1 "20k" H 6959 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6900 1800 50  0001 C CNN
F 3 "~" H 6900 1800 50  0001 C CNN
	1    6900 1800
	1    0    0    -1  
$EndComp
Text GLabel 6900 1400 2    50   Input ~ 0
POTI_HIGH_A
Text GLabel 6900 1550 2    50   Input ~ 0
POTI_LOW_A
Wire Wire Line
	6650 1050 6650 1150
Wire Wire Line
	6900 1400 6900 1150
Wire Wire Line
	6900 1150 6650 1150
Wire Wire Line
	6900 1550 6900 1700
Wire Wire Line
	6900 1900 6900 2050
Wire Wire Line
	6900 2050 6650 2050
$Comp
L SensorArray-rescue:GNDA-power #PWR?
U 1 1 5EE42788
P 6650 2150
AR Path="/5EE42788" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE42788" Ref="#PWR048"  Part="1" 
F 0 "#PWR048" H 6650 1900 50  0001 C CNN
F 1 "GNDA" H 6655 1977 50  0000 C CNN
F 2 "" H 6650 2150 50  0001 C CNN
F 3 "" H 6650 2150 50  0001 C CNN
	1    6650 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2050 6650 2150
Wire Wire Line
	6400 1700 6400 2050
Wire Wire Line
	6400 1150 6400 1500
Connection ~ 6650 1150
Wire Wire Line
	6650 1150 6400 1150
Connection ~ 6650 2050
Wire Wire Line
	6650 2050 6400 2050
Text GLabel 7100 1150 2    50   Input ~ 0
SIGNAL_REF_A
Wire Wire Line
	7100 1150 6900 1150
Connection ~ 6900 1150
Text GLabel 4200 6400 2    50   Input ~ 0
Sensor_B9
Text GLabel 4200 6300 2    50   Input ~ 0
Sensor_B8
Text GLabel 4200 6200 2    50   Input ~ 0
Sensor_B7
Text GLabel 4200 6100 2    50   Input ~ 0
Sensor_B6
Text GLabel 4200 6000 2    50   Input ~ 0
Sensor_B5
Text GLabel 4200 5900 2    50   Input ~ 0
Sensor_B4
Text GLabel 4200 5800 2    50   Input ~ 0
Sensor_B3
Text GLabel 4200 5700 2    50   Input ~ 0
Sensor_B2
Text GLabel 4200 5600 2    50   Input ~ 0
Sensor_B1
$Comp
L SensorArray-rescue:+3.3V-power #PWR?
U 1 1 5EE7C57F
P 3700 5100
AR Path="/5EE7C57F" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE7C57F" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 3700 4950 50  0001 C CNN
F 1 "+3.3V" H 3715 5273 50  0000 C CNN
F 2 "" H 3700 5100 50  0001 C CNN
F 3 "" H 3700 5100 50  0001 C CNN
	1    3700 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 5200 3700 5100
Text GLabel 3200 5700 0    50   Input ~ 0
Sensor_BOUT
Wire Wire Line
	3200 6800 3100 6800
Wire Wire Line
	3100 6800 3100 6950
NoConn ~ 5500 6600
NoConn ~ 5500 6500
NoConn ~ 6750 6500
NoConn ~ 6750 6600
$Comp
L SensorArray-rescue:GNDA-power #PWR?
U 1 1 5ECC55A8
P 6000 6950
AR Path="/5ECC55A8" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ECC55A8" Ref="#PWR079"  Part="1" 
F 0 "#PWR079" H 6000 6700 50  0001 C CNN
F 1 "GNDA" H 6005 6777 50  0000 C CNN
F 2 "" H 6000 6950 50  0001 C CNN
F 3 "" H 6000 6950 50  0001 C CNN
	1    6000 6950
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR?
U 1 1 5ECC55AE
P 6250 6950
AR Path="/5ECC55AE" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ECC55AE" Ref="#PWR080"  Part="1" 
F 0 "#PWR080" H 6250 6700 50  0001 C CNN
F 1 "GND" H 6255 6777 50  0000 C CNN
F 2 "" H 6250 6950 50  0001 C CNN
F 3 "" H 6250 6950 50  0001 C CNN
	1    6250 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 6950 6000 6800
Wire Wire Line
	6250 6950 6250 6800
Text GLabel 6750 6100 2    50   Input ~ 0
ADC_SPI1_CS
Text GLabel 6750 6000 2    50   Input ~ 0
SPI1_SCK
Text GLabel 6750 5800 2    50   Input ~ 0
SPI1_MISO
Text GLabel 6750 5900 2    50   Input ~ 0
SPI1_MOSI
$Comp
L SensorArray-rescue:GND-power #PWR?
U 1 1 5ECD276C
P 8550 6000
AR Path="/5ECD276C" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ECD276C" Ref="#PWR075"  Part="1" 
F 0 "#PWR075" H 8550 5750 50  0001 C CNN
F 1 "GND" H 8555 5827 50  0000 C CNN
F 2 "" H 8550 6000 50  0001 C CNN
F 3 "" H 8550 6000 50  0001 C CNN
	1    8550 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 6000 8550 5850
$Comp
L SensorArray-rescue:C_Small-Device C?
U 1 1 5ECD73E5
P 8400 5650
AR Path="/5ECD73E5" Ref="C?"  Part="1" 
AR Path="/5EE29113/5ECD73E5" Ref="C33"  Part="1" 
F 0 "C33" H 8492 5696 50  0000 L CNN
F 1 "10u" H 8492 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8400 5650 50  0001 C CNN
F 3 "~" H 8400 5650 50  0001 C CNN
	1    8400 5650
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C?
U 1 1 5ECD73EB
P 8700 5650
AR Path="/5ECD73EB" Ref="C?"  Part="1" 
AR Path="/5EE29113/5ECD73EB" Ref="C34"  Part="1" 
F 0 "C34" H 8792 5696 50  0000 L CNN
F 1 "100n" H 8792 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8700 5650 50  0001 C CNN
F 3 "~" H 8700 5650 50  0001 C CNN
	1    8700 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 5750 8400 5850
Wire Wire Line
	8700 5850 8700 5750
Wire Wire Line
	8700 5550 8700 5450
Wire Wire Line
	8700 5450 8550 5450
Wire Wire Line
	8400 5450 8400 5550
Wire Wire Line
	8550 5450 8550 5350
Connection ~ 8550 5450
Wire Wire Line
	8550 5450 8400 5450
$Comp
L SensorArray-rescue:+3.3V-power #PWR?
U 1 1 5ECD7404
P 8550 5350
AR Path="/5ECD7404" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ECD7404" Ref="#PWR071"  Part="1" 
F 0 "#PWR071" H 8550 5200 50  0001 C CNN
F 1 "+3.3V" H 8565 5523 50  0000 C CNN
F 2 "" H 8550 5350 50  0001 C CNN
F 3 "" H 8550 5350 50  0001 C CNN
	1    8550 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 5850 8550 5850
Connection ~ 8550 5850
Wire Wire Line
	8550 5850 8700 5850
$Comp
L SensorArray-rescue:AD5272BRM-Potentiometer_Digital U?
U 1 1 5ECF37C2
P 4650 3550
AR Path="/5ECF37C2" Ref="U?"  Part="1" 
AR Path="/5EE29113/5ECF37C2" Ref="U7"  Part="1" 
F 0 "U7" H 4850 4100 50  0000 C CNN
F 1 "AD5272BRM" H 5000 4000 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 5400 3100 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD5272_5274.pdf" H 4650 3550 50  0001 C CNN
	1    4650 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4050 4550 4100
Wire Wire Line
	4650 4050 4650 4100
Wire Wire Line
	4650 4100 4550 4100
Connection ~ 4550 4100
Wire Wire Line
	4550 4100 4550 4200
$Comp
L SensorArray-rescue:C_Small-Device C?
U 1 1 5ECF37D3
P 5250 3900
AR Path="/5ECF37D3" Ref="C?"  Part="1" 
AR Path="/5EE29113/5ECF37D3" Ref="C31"  Part="1" 
F 0 "C31" H 5342 3946 50  0000 L CNN
F 1 "1u" H 5342 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5250 3900 50  0001 C CNN
F 3 "~" H 5250 3900 50  0001 C CNN
	1    5250 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3750 5250 3750
Wire Wire Line
	5250 4100 4650 4100
Connection ~ 4650 4100
Wire Wire Line
	5250 4000 5250 4100
Wire Wire Line
	5250 3800 5250 3750
$Comp
L SensorArray-rescue:C_Small-Device C?
U 1 1 5ECF37DE
P 5700 3600
AR Path="/5ECF37DE" Ref="C?"  Part="1" 
AR Path="/5EE29113/5ECF37DE" Ref="C28"  Part="1" 
F 0 "C28" H 5792 3646 50  0000 L CNN
F 1 "10u" H 5792 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5700 3600 50  0001 C CNN
F 3 "~" H 5700 3600 50  0001 C CNN
	1    5700 3600
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C?
U 1 1 5ECF37E4
P 6000 3600
AR Path="/5ECF37E4" Ref="C?"  Part="1" 
AR Path="/5EE29113/5ECF37E4" Ref="C29"  Part="1" 
F 0 "C29" H 6092 3646 50  0000 L CNN
F 1 "100n" H 6092 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6000 3600 50  0001 C CNN
F 3 "~" H 6000 3600 50  0001 C CNN
	1    6000 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3700 5700 3800
Wire Wire Line
	5700 3800 5850 3800
Wire Wire Line
	6000 3800 6000 3700
Wire Wire Line
	6000 3500 6000 3400
Wire Wire Line
	6000 3400 5850 3400
Wire Wire Line
	5700 3400 5700 3500
Wire Wire Line
	5850 3400 5850 3300
Connection ~ 5850 3400
Wire Wire Line
	5850 3400 5700 3400
Wire Wire Line
	5850 3800 5850 3900
Connection ~ 5850 3800
Wire Wire Line
	5850 3800 6000 3800
Text GLabel 5150 3350 2    50   Input ~ 0
POTI_HIGH_B
Text GLabel 5150 3450 2    50   Input ~ 0
POTI_LOW_B
Text GLabel 4150 3750 0    50   Input ~ 0
SPI1_MISO
Text GLabel 4150 3350 0    50   Input ~ 0
SPI1_SCK
Text GLabel 4150 3450 0    50   Input ~ 0
SPI1_MOSI
$Comp
L SensorArray-rescue:+3.3V-power #PWR?
U 1 1 5ECF3802
P 4650 2950
AR Path="/5ECF3802" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ECF3802" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 4650 2800 50  0001 C CNN
F 1 "+3.3V" H 4665 3123 50  0000 C CNN
F 2 "" H 4650 2950 50  0001 C CNN
F 3 "" H 4650 2950 50  0001 C CNN
	1    4650 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3050 4650 2950
$Comp
L SensorArray-rescue:+3.3V-power #PWR?
U 1 1 5ECF3809
P 5850 3300
AR Path="/5ECF3809" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ECF3809" Ref="#PWR055"  Part="1" 
F 0 "#PWR055" H 5850 3150 50  0001 C CNN
F 1 "+3.3V" H 5865 3473 50  0000 C CNN
F 2 "" H 5850 3300 50  0001 C CNN
F 3 "" H 5850 3300 50  0001 C CNN
	1    5850 3300
	1    0    0    -1  
$EndComp
Wire Notes Line
	3500 4500 3500 2750
Wire Notes Line
	6300 2750 6300 4500
Text Notes 3500 2700 0    50   ~ 0
Digital Potentiometer
$Comp
L SensorArray-rescue:R_Small-Device R?
U 1 1 5ED02641
P 6400 3500
AR Path="/5ED02641" Ref="R?"  Part="1" 
AR Path="/5EE29113/5ED02641" Ref="R15"  Part="1" 
F 0 "R15" H 6459 3546 50  0000 L CNN
F 1 "16k" H 6459 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6400 3500 50  0001 C CNN
F 3 "~" H 6400 3500 50  0001 C CNN
	1    6400 3500
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:R_Small-Device R?
U 1 1 5ED02647
P 6900 3700
AR Path="/5ED02647" Ref="R?"  Part="1" 
AR Path="/5EE29113/5ED02647" Ref="R16"  Part="1" 
F 0 "R16" H 6959 3746 50  0000 L CNN
F 1 "20k" H 6959 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6900 3700 50  0001 C CNN
F 3 "~" H 6900 3700 50  0001 C CNN
	1    6900 3700
	1    0    0    -1  
$EndComp
Text GLabel 6900 3300 2    50   Input ~ 0
POTI_HIGH_B
Text GLabel 6900 3450 2    50   Input ~ 0
POTI_LOW_B
Wire Wire Line
	6650 2950 6650 3050
Wire Wire Line
	6900 3300 6900 3050
Wire Wire Line
	6900 3050 6650 3050
Wire Wire Line
	6900 3450 6900 3600
Wire Wire Line
	6900 3800 6900 3950
Wire Wire Line
	6900 3950 6650 3950
$Comp
L SensorArray-rescue:GNDA-power #PWR?
U 1 1 5ED02655
P 6650 4050
AR Path="/5ED02655" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ED02655" Ref="#PWR061"  Part="1" 
F 0 "#PWR061" H 6650 3800 50  0001 C CNN
F 1 "GNDA" H 6655 3877 50  0000 C CNN
F 2 "" H 6650 4050 50  0001 C CNN
F 3 "" H 6650 4050 50  0001 C CNN
	1    6650 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3950 6650 4050
Wire Wire Line
	6400 3600 6400 3950
Wire Wire Line
	6400 3050 6400 3400
Connection ~ 6650 3050
Wire Wire Line
	6650 3050 6400 3050
Connection ~ 6650 3950
Wire Wire Line
	6650 3950 6400 3950
Text GLabel 7100 3050 2    50   Input ~ 0
SIGNAL_REF_B
Wire Wire Line
	7100 3050 6900 3050
Connection ~ 6900 3050
Text GLabel 8800 1300 0    50   Input ~ 0
SIGNAL_REF_A
$Comp
L SensorArray-rescue:R_Small-Device RgainA1
U 1 1 5ED07748
P 8700 1500
F 0 "RgainA1" H 8759 1546 50  0000 L CNN
F 1 "2k2" H 8759 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8700 1500 50  0001 C CNN
F 3 "~" H 8700 1500 50  0001 C CNN
	1    8700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1400 8700 1400
Wire Wire Line
	9150 1600 8700 1600
$Comp
L SensorArray-rescue:C_Small-Device C?
U 1 1 5ED153DF
P 8050 1000
AR Path="/5ED153DF" Ref="C?"  Part="1" 
AR Path="/5EE29113/5ED153DF" Ref="C21"  Part="1" 
F 0 "C21" H 8142 1046 50  0000 L CNN
F 1 "1u" H 8142 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8050 1000 50  0001 C CNN
F 3 "~" H 8050 1000 50  0001 C CNN
	1    8050 1000
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR?
U 1 1 5ED18151
P 8050 1100
AR Path="/5ED18151" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ED18151" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 8050 850 50  0001 C CNN
F 1 "GND" H 8055 927 50  0000 C CNN
F 2 "" H 8050 1100 50  0001 C CNN
F 3 "" H 8050 1100 50  0001 C CNN
	1    8050 1100
	1    0    0    -1  
$EndComp
Text GLabel 9000 1700 0    50   Input ~ 0
Sensor_AOUT
$Comp
L SensorArray-rescue:GND-power #PWR?
U 1 1 5ED1DF34
P 9450 1800
AR Path="/5ED1DF34" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ED1DF34" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 9450 1550 50  0001 C CNN
F 1 "GND" H 9455 1627 50  0000 C CNN
F 2 "" H 9450 1800 50  0001 C CNN
F 3 "" H 9450 1800 50  0001 C CNN
	1    9450 1800
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:R_Small-Device Ref1
U 1 1 5ED2137F
P 8050 1800
F 0 "Ref1" H 8109 1846 50  0000 L CNN
F 1 "2k2" H 8109 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8050 1800 50  0001 C CNN
F 3 "~" H 8050 1800 50  0001 C CNN
	1    8050 1800
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:R_Small-Device Ref2
U 1 1 5ED23EC7
P 8050 2250
F 0 "Ref2" H 8109 2296 50  0000 L CNN
F 1 "2k2" H 8109 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8050 2250 50  0001 C CNN
F 3 "~" H 8050 2250 50  0001 C CNN
	1    8050 2250
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C?
U 1 1 5ED2951A
P 8450 2250
AR Path="/5ED2951A" Ref="C?"  Part="1" 
AR Path="/5EE29113/5ED2951A" Ref="C26"  Part="1" 
F 0 "C26" H 8542 2296 50  0000 L CNN
F 1 "1n" H 8542 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8450 2250 50  0001 C CNN
F 3 "~" H 8450 2250 50  0001 C CNN
	1    8450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1900 8050 2050
Wire Wire Line
	8050 2350 8050 2400
Connection ~ 8050 2050
Wire Wire Line
	8050 2050 8050 2150
Wire Wire Line
	8050 2050 8450 2050
Wire Wire Line
	9550 2050 9550 1800
Wire Wire Line
	8050 1700 8050 1650
Text GLabel 10500 1500 2    50   Input ~ 0
AMP_OUT_A
Wire Wire Line
	8450 2150 8450 2050
Wire Wire Line
	8450 2350 8450 2400
Wire Wire Line
	8450 2400 8050 2400
Wire Notes Line
	7900 600  7900 2700
Wire Notes Line
	11000 2700 11000 600 
Text GLabel 8800 3550 0    50   Input ~ 0
SIGNAL_REF_B
$Comp
L SensorArray-rescue:R_Small-Device RgainB1
U 1 1 5ED97E67
P 8700 3750
F 0 "RgainB1" H 8759 3796 50  0000 L CNN
F 1 "2k2" H 8759 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8700 3750 50  0001 C CNN
F 3 "~" H 8700 3750 50  0001 C CNN
	1    8700 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3650 8700 3650
Wire Wire Line
	9150 3850 8700 3850
$Comp
L SensorArray-rescue:C_Small-Device C?
U 1 1 5ED97E7B
P 8050 3250
AR Path="/5ED97E7B" Ref="C?"  Part="1" 
AR Path="/5EE29113/5ED97E7B" Ref="C27"  Part="1" 
F 0 "C27" H 8142 3296 50  0000 L CNN
F 1 "1u" H 8142 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8050 3250 50  0001 C CNN
F 3 "~" H 8050 3250 50  0001 C CNN
	1    8050 3250
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR?
U 1 1 5ED97E81
P 8050 3350
AR Path="/5ED97E81" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ED97E81" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 8050 3100 50  0001 C CNN
F 1 "GND" H 8055 3177 50  0000 C CNN
F 2 "" H 8050 3350 50  0001 C CNN
F 3 "" H 8050 3350 50  0001 C CNN
	1    8050 3350
	1    0    0    -1  
$EndComp
Text GLabel 8900 3950 0    50   Input ~ 0
Sensor_BOUT
$Comp
L SensorArray-rescue:GND-power #PWR?
U 1 1 5ED97E88
P 9450 4050
AR Path="/5ED97E88" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5ED97E88" Ref="#PWR062"  Part="1" 
F 0 "#PWR062" H 9450 3800 50  0001 C CNN
F 1 "GND" H 9455 3877 50  0000 C CNN
F 2 "" H 9450 4050 50  0001 C CNN
F 3 "" H 9450 4050 50  0001 C CNN
	1    9450 4050
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:R_Small-Device Ref3
U 1 1 5ED97E8E
P 8050 4050
F 0 "Ref3" H 8109 4096 50  0000 L CNN
F 1 "2k2" H 8109 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8050 4050 50  0001 C CNN
F 3 "~" H 8050 4050 50  0001 C CNN
	1    8050 4050
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:R_Small-Device Ref4
U 1 1 5ED97E94
P 8050 4500
F 0 "Ref4" H 8109 4546 50  0000 L CNN
F 1 "2k2" H 8109 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8050 4500 50  0001 C CNN
F 3 "~" H 8050 4500 50  0001 C CNN
	1    8050 4500
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C?
U 1 1 5ED97E9A
P 8450 4500
AR Path="/5ED97E9A" Ref="C?"  Part="1" 
AR Path="/5EE29113/5ED97E9A" Ref="C32"  Part="1" 
F 0 "C32" H 8542 4546 50  0000 L CNN
F 1 "1n" H 8542 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8450 4500 50  0001 C CNN
F 3 "~" H 8450 4500 50  0001 C CNN
	1    8450 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4150 8050 4300
Wire Wire Line
	8050 4600 8050 4650
Connection ~ 8050 4300
Wire Wire Line
	8050 4300 8050 4400
Wire Wire Line
	8050 4300 8450 4300
Wire Wire Line
	9550 4300 9550 4050
Wire Wire Line
	8050 3950 8050 3900
Text GLabel 10500 3750 2    50   Input ~ 0
AMP_OUT_B
Wire Wire Line
	8450 4400 8450 4300
Connection ~ 8450 4300
Wire Wire Line
	8450 4600 8450 4650
Wire Wire Line
	8450 4650 8050 4650
Connection ~ 8050 4650
Wire Wire Line
	8050 4650 8050 4700
Wire Notes Line
	7900 2850 7900 4950
Wire Notes Line
	11000 4950 11000 2850
$Comp
L SensorArray-rescue:R_Small-Device R?
U 1 1 5ED0263B
P 6650 2850
AR Path="/5ED0263B" Ref="R?"  Part="1" 
AR Path="/5EE29113/5ED0263B" Ref="R14"  Part="1" 
F 0 "R14" H 6709 2896 50  0000 L CNN
F 1 "10k" H 6709 2805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6650 2850 50  0001 C CNN
F 3 "~" H 6650 2850 50  0001 C CNN
	1    6650 2850
	1    0    0    -1  
$EndComp
Text GLabel 5500 5800 0    50   Input ~ 0
AMP_OUT_A
Text GLabel 5500 6000 0    50   Input ~ 0
AMP_OUT_B
$Comp
L SensorArray-rescue:GNDA-power #PWR?
U 1 1 5EE552E6
P 4850 6200
AR Path="/5EE552E6" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE552E6" Ref="#PWR077"  Part="1" 
F 0 "#PWR077" H 4850 5950 50  0001 C CNN
F 1 "GNDA" H 4855 6027 50  0000 C CNN
F 2 "" H 4850 6200 50  0001 C CNN
F 3 "" H 4850 6200 50  0001 C CNN
	1    4850 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5900 4850 5900
Wire Wire Line
	4850 5900 4850 6100
Wire Wire Line
	5500 6100 4850 6100
Connection ~ 4850 6100
Wire Wire Line
	4850 6100 4850 6200
$Comp
L SensorArray-rescue:R_Small-Device R11
U 1 1 5EE8B645
P 10050 1500
F 0 "R11" V 10250 1450 50  0000 L CNN
F 1 "100" V 10150 1400 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10050 1500 50  0001 C CNN
F 3 "~" H 10050 1500 50  0001 C CNN
	1    10050 1500
	0    -1   -1   0   
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C?
U 1 1 5EE92C8B
P 10250 1600
AR Path="/5EE92C8B" Ref="C?"  Part="1" 
AR Path="/5EE29113/5EE92C8B" Ref="C24"  Part="1" 
F 0 "C24" H 10342 1646 50  0000 L CNN
F 1 "1u" H 10342 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10250 1600 50  0001 C CNN
F 3 "~" H 10250 1600 50  0001 C CNN
	1    10250 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1500 9950 1500
Wire Wire Line
	10150 1500 10250 1500
Wire Wire Line
	10250 1500 10500 1500
Connection ~ 10250 1500
$Comp
L SensorArray-rescue:GNDA-power #PWR?
U 1 1 5EEA9470
P 10250 1700
AR Path="/5EEA9470" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EEA9470" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 10250 1450 50  0001 C CNN
F 1 "GNDA" H 10255 1527 50  0000 C CNN
F 2 "" H 10250 1700 50  0001 C CNN
F 3 "" H 10250 1700 50  0001 C CNN
	1    10250 1700
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:R_Small-Device R17
U 1 1 5EEADC32
P 10050 3750
F 0 "R17" V 10250 3700 50  0000 L CNN
F 1 "100" V 10150 3650 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10050 3750 50  0001 C CNN
F 3 "~" H 10050 3750 50  0001 C CNN
	1    10050 3750
	0    -1   -1   0   
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C?
U 1 1 5EEADC38
P 10250 3850
AR Path="/5EEADC38" Ref="C?"  Part="1" 
AR Path="/5EE29113/5EEADC38" Ref="C30"  Part="1" 
F 0 "C30" H 10342 3896 50  0000 L CNN
F 1 "1u" H 10342 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10250 3850 50  0001 C CNN
F 3 "~" H 10250 3850 50  0001 C CNN
	1    10250 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 3750 9950 3750
Wire Wire Line
	10150 3750 10250 3750
Wire Wire Line
	10250 3750 10500 3750
Connection ~ 10250 3750
$Comp
L SensorArray-rescue:GNDA-power #PWR?
U 1 1 5EEADC42
P 10250 3950
AR Path="/5EEADC42" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EEADC42" Ref="#PWR060"  Part="1" 
F 0 "#PWR060" H 10250 3700 50  0001 C CNN
F 1 "GNDA" H 10255 3777 50  0000 C CNN
F 2 "" H 10250 3950 50  0001 C CNN
F 3 "" H 10250 3950 50  0001 C CNN
	1    10250 3950
	1    0    0    -1  
$EndComp
Wire Notes Line
	7900 2850 11000 2850
Wire Notes Line
	7900 2700 11000 2700
Wire Notes Line
	7900 4950 11000 4950
Wire Notes Line
	7900 600  11000 600 
Wire Wire Line
	6000 5150 6000 5050
Wire Wire Line
	6250 5150 6250 5050
$Comp
L SensorArray-rescue:+3.3V-power #PWR?
U 1 1 5EDD065A
P 6250 5050
AR Path="/5EDD065A" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EDD065A" Ref="#PWR069"  Part="1" 
F 0 "#PWR069" H 6250 4900 50  0001 C CNN
F 1 "+3.3V" H 6250 5200 50  0000 C CNN
F 2 "" H 6250 5050 50  0001 C CNN
F 3 "" H 6250 5050 50  0001 C CNN
	1    6250 5050
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:+3.3VA-power #PWR068
U 1 1 5EDDD912
P 6000 5050
F 0 "#PWR068" H 6000 4900 50  0001 C CNN
F 1 "+3.3VA" H 5950 5200 50  0000 C CNN
F 2 "" H 6000 5050 50  0001 C CNN
F 3 "" H 6000 5050 50  0001 C CNN
	1    6000 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 6000 9250 5850
$Comp
L SensorArray-rescue:C_Small-Device C?
U 1 1 5EDE0C80
P 9100 5650
AR Path="/5EDE0C80" Ref="C?"  Part="1" 
AR Path="/5EE29113/5EDE0C80" Ref="C35"  Part="1" 
F 0 "C35" H 9192 5696 50  0000 L CNN
F 1 "10u" H 9192 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9100 5650 50  0001 C CNN
F 3 "~" H 9100 5650 50  0001 C CNN
	1    9100 5650
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C?
U 1 1 5EDE0C86
P 9400 5650
AR Path="/5EDE0C86" Ref="C?"  Part="1" 
AR Path="/5EE29113/5EDE0C86" Ref="C36"  Part="1" 
F 0 "C36" H 9492 5696 50  0000 L CNN
F 1 "100n" H 9492 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9400 5650 50  0001 C CNN
F 3 "~" H 9400 5650 50  0001 C CNN
	1    9400 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5750 9100 5850
Wire Wire Line
	9400 5850 9400 5750
Wire Wire Line
	9400 5550 9400 5450
Wire Wire Line
	9100 5450 9100 5550
Wire Wire Line
	9100 5850 9250 5850
Connection ~ 9250 5850
Wire Wire Line
	9250 5850 9400 5850
Wire Wire Line
	9100 5450 9250 5450
$Comp
L SensorArray-rescue:+3.3VA-power #PWR072
U 1 1 5EDE9CA7
P 9250 5350
F 0 "#PWR072" H 9250 5200 50  0001 C CNN
F 1 "+3.3VA" H 9265 5523 50  0000 C CNN
F 2 "" H 9250 5350 50  0001 C CNN
F 3 "" H 9250 5350 50  0001 C CNN
	1    9250 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 5350 9250 5450
Connection ~ 9250 5450
Wire Wire Line
	9250 5450 9400 5450
$Comp
L SensorArray-rescue:R_Small-Device R_GND1
U 1 1 5EDF7440
P 10650 5650
F 0 "R_GND1" V 10800 5500 50  0000 L CNN
F 1 "0" V 10709 5605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10650 5650 50  0001 C CNN
F 3 "~" H 10650 5650 50  0001 C CNN
	1    10650 5650
	0    -1   -1   0   
$EndComp
$Comp
L SensorArray-rescue:GNDA-power #PWR?
U 1 1 5EDFBEDB
P 10450 5700
AR Path="/5EDFBEDB" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EDFBEDB" Ref="#PWR073"  Part="1" 
F 0 "#PWR073" H 10450 5450 50  0001 C CNN
F 1 "GNDA" H 10455 5527 50  0000 C CNN
F 2 "" H 10450 5700 50  0001 C CNN
F 3 "" H 10450 5700 50  0001 C CNN
	1    10450 5700
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR?
U 1 1 5EE00CE1
P 10850 5700
AR Path="/5EE00CE1" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE00CE1" Ref="#PWR074"  Part="1" 
F 0 "#PWR074" H 10850 5450 50  0001 C CNN
F 1 "GND" H 10855 5527 50  0000 C CNN
F 2 "" H 10850 5700 50  0001 C CNN
F 3 "" H 10850 5700 50  0001 C CNN
	1    10850 5700
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GNDA-power #PWR?
U 1 1 5EE09B55
P 9250 6000
AR Path="/5EE09B55" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE09B55" Ref="#PWR076"  Part="1" 
F 0 "#PWR076" H 9250 5750 50  0001 C CNN
F 1 "GNDA" H 9255 5827 50  0000 C CNN
F 2 "" H 9250 6000 50  0001 C CNN
F 3 "" H 9250 6000 50  0001 C CNN
	1    9250 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 5700 10450 5650
Wire Wire Line
	10450 5650 10550 5650
Wire Wire Line
	10750 5650 10850 5650
Wire Wire Line
	10850 5650 10850 5700
$Comp
L SensorArray-rescue:+1V0-power #PWR0105
U 1 1 5EE0FC03
P 6650 2750
F 0 "#PWR0105" H 6650 2600 50  0001 C CNN
F 1 "+1V0" H 6665 2923 50  0000 C CNN
F 2 "" H 6650 2750 50  0001 C CNN
F 3 "" H 6650 2750 50  0001 C CNN
	1    6650 2750
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:+1V0-power #PWR0106
U 1 1 5EE19F35
P 6650 850
F 0 "#PWR0106" H 6650 700 50  0001 C CNN
F 1 "+1V0" H 6665 1023 50  0000 C CNN
F 2 "" H 6650 850 50  0001 C CNN
F 3 "" H 6650 850 50  0001 C CNN
	1    6650 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5600 5000 5600
Wire Wire Line
	5000 5600 5000 5550
$Comp
L SensorArray-rescue:GNDA-power #PWR0107
U 1 1 5EE38FA8
P 5400 5500
F 0 "#PWR0107" H 5400 5250 50  0001 C CNN
F 1 "GNDA" V 5405 5373 50  0000 R CNN
F 2 "" H 5400 5500 50  0001 C CNN
F 3 "" H 5400 5500 50  0001 C CNN
	1    5400 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 5500 5400 5500
$Comp
L SensorArray-rescue:+3.3VA-power #PWR0108
U 1 1 5EE3EFAB
P 5000 5550
F 0 "#PWR0108" H 5000 5400 50  0001 C CNN
F 1 "+3.3VA" H 4950 5700 50  0000 C CNN
F 2 "" H 5000 5550 50  0001 C CNN
F 3 "" H 5000 5550 50  0001 C CNN
	1    5000 5550
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:+3.3V-power #PWR?
U 1 1 5EE8AA0E
P 9450 3450
AR Path="/5EE8AA0E" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE8AA0E" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 9450 3300 50  0001 C CNN
F 1 "+3.3V" H 9465 3623 50  0000 C CNN
F 2 "" H 9450 3450 50  0001 C CNN
F 3 "" H 9450 3450 50  0001 C CNN
	1    9450 3450
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:+3.3V-power #PWR?
U 1 1 5EE9ED6F
P 9450 1200
AR Path="/5EE9ED6F" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE9ED6F" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 9450 1050 50  0001 C CNN
F 1 "+3.3V" H 9465 1373 50  0000 C CNN
F 2 "" H 9450 1200 50  0001 C CNN
F 3 "" H 9450 1200 50  0001 C CNN
	1    9450 1200
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:+3.3VA-power #PWR0112
U 1 1 5EEB1909
P 8050 3900
F 0 "#PWR0112" H 8050 3750 50  0001 C CNN
F 1 "+3.3VA" H 8050 4050 50  0000 C CNN
F 2 "" H 8050 3900 50  0001 C CNN
F 3 "" H 8050 3900 50  0001 C CNN
	1    8050 3900
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:+3.3V-power #PWR?
U 1 1 5EEB6DE5
P 8050 3150
AR Path="/5EEB6DE5" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EEB6DE5" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 8050 3000 50  0001 C CNN
F 1 "+3.3V" H 8065 3323 50  0000 C CNN
F 2 "" H 8050 3150 50  0001 C CNN
F 3 "" H 8050 3150 50  0001 C CNN
	1    8050 3150
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:+3.3V-power #PWR?
U 1 1 5EEC162F
P 8050 900
AR Path="/5EEC162F" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EEC162F" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 8050 750 50  0001 C CNN
F 1 "+3.3V" H 8065 1073 50  0000 C CNN
F 2 "" H 8050 900 50  0001 C CNN
F 3 "" H 8050 900 50  0001 C CNN
	1    8050 900 
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:+3.3VA-power #PWR0115
U 1 1 5EECBA4B
P 8050 1650
F 0 "#PWR0115" H 8050 1500 50  0001 C CNN
F 1 "+3.3VA" H 8050 1800 50  0000 C CNN
F 2 "" H 8050 1650 50  0001 C CNN
F 3 "" H 8050 1650 50  0001 C CNN
	1    8050 1650
	1    0    0    -1  
$EndComp
$Comp
L ADC:MCP3562 U9
U 1 1 5EDC888B
P 5900 5150
F 0 "U9" H 6125 5331 50  0000 C CNN
F 1 "MCP3562" H 6500 5150 50  0000 C CNN
F 2 "digikey-footprints:TSSOP-20_W4.4mm" H 6600 5300 50  0001 C CNN
F 3 "" H 6600 5300 50  0001 C CNN
	1    5900 5150
	1    0    0    -1  
$EndComp
NoConn ~ 6750 5500
Text GLabel 3200 6100 0    50   Input ~ 0
MUXB_S0
Text GLabel 3200 6200 0    50   Input ~ 0
MUXB_S1
Text GLabel 3200 6300 0    50   Input ~ 0
MUXB_S2
Text GLabel 3200 6400 0    50   Input ~ 0
MUXB_S3
Text GLabel 4200 5500 2    50   Input ~ 0
Sensor_B0
NoConn ~ 4200 7000
NoConn ~ 4200 6900
NoConn ~ 4200 6800
NoConn ~ 4200 6700
NoConn ~ 4200 6600
NoConn ~ 4200 6500
$Comp
L SensorArray-rescue:Conn_02x02_Counter_Clockwise-Connector_Generic J8
U 1 1 5EF3A64C
P 2600 1350
F 0 "J8" H 2650 1650 50  0000 C CNN
F 1 "Sensor_Connector" H 2650 1550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 2600 1350 50  0001 C CNN
F 3 "~" H 2600 1350 50  0001 C CNN
	1    2600 1350
	1    0    0    -1  
$EndComp
Text GLabel 2400 1450 0    50   Input ~ 0
Sensor_A0
Text GLabel 2900 1450 2    50   Input ~ 0
Sensor_B0
$Comp
L SensorArray-rescue:GNDA-power #PWR?
U 1 1 5EF83A88
P 3150 1350
AR Path="/5EF83A88" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EF83A88" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 3150 1100 50  0001 C CNN
F 1 "GNDA" H 3200 1200 50  0000 C CNN
F 2 "" H 3150 1350 50  0001 C CNN
F 3 "" H 3150 1350 50  0001 C CNN
	1    3150 1350
	0    -1   -1   0   
$EndComp
$Comp
L SensorArray-rescue:+1V0-power #PWR034
U 1 1 5EF93F07
P 2200 1350
F 0 "#PWR034" H 2200 1200 50  0001 C CNN
F 1 "+1V0" H 2250 1500 50  0000 C CNN
F 2 "" H 2200 1350 50  0001 C CNN
F 3 "" H 2200 1350 50  0001 C CNN
	1    2200 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 1350 2200 1350
Wire Wire Line
	2900 1350 3150 1350
Wire Notes Line
	3400 500  500  500 
$Comp
L SensorArray-rescue:GND-power #PWR?
U 1 1 5EFC19F2
P 3700 7400
AR Path="/5EFC19F2" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EFC19F2" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 3700 7150 50  0001 C CNN
F 1 "GND" H 3705 7227 50  0000 C CNN
F 2 "" H 3700 7400 50  0001 C CNN
F 3 "" H 3700 7400 50  0001 C CNN
	1    3700 7400
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR?
U 1 1 5EFD1B34
P 3100 6950
AR Path="/5EFD1B34" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EFD1B34" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 3100 6700 50  0001 C CNN
F 1 "GND" H 3105 6777 50  0000 C CNN
F 2 "" H 3100 6950 50  0001 C CNN
F 3 "" H 3100 6950 50  0001 C CNN
	1    3100 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 7400 3700 7300
Text Notes 2600 600  0    50   ~ 0
Sensor Connectors
$Comp
L SensorArray-rescue:Conn_01x22-Connector_Generic J7
U 1 1 5EE53F37
P 1650 1850
F 0 "J7" H 1730 1842 50  0000 L CNN
F 1 "Sensor_Array_Connector" H 1730 1751 50  0000 L CNN
F 2 "Connector_FFC-FPC:Molex_200528-0220_1x22-1MP_P1.00mm_Horizontal" H 1650 1850 50  0001 C CNN
F 3 "~" H 1650 1850 50  0001 C CNN
	1    1650 1850
	1    0    0    -1  
$EndComp
Text GLabel 1450 2750 0    50   Input ~ 0
Sensor_A1
Text GLabel 1450 2650 0    50   Input ~ 0
Sensor_A2
Text GLabel 1450 2550 0    50   Input ~ 0
Sensor_A3
Text GLabel 1450 2450 0    50   Input ~ 0
Sensor_A4
Text GLabel 1450 2350 0    50   Input ~ 0
Sensor_A5
Text GLabel 1450 2250 0    50   Input ~ 0
Sensor_A6
Text GLabel 1450 2150 0    50   Input ~ 0
Sensor_A7
Text GLabel 1450 1250 0    50   Input ~ 0
Sensor_B7
Text GLabel 1450 1350 0    50   Input ~ 0
Sensor_B6
Text GLabel 1450 1450 0    50   Input ~ 0
Sensor_B5
Text GLabel 1450 1550 0    50   Input ~ 0
Sensor_B4
Text GLabel 1450 1650 0    50   Input ~ 0
Sensor_B3
Text GLabel 1450 1750 0    50   Input ~ 0
Sensor_B2
Text GLabel 1450 1850 0    50   Input ~ 0
Sensor_B1
$Comp
L SensorArray-rescue:GNDA-power #PWR?
U 1 1 5EE77F36
P 900 2950
AR Path="/5EE77F36" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE77F36" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 900 2700 50  0001 C CNN
F 1 "GNDA" H 905 2777 50  0000 C CNN
F 2 "" H 900 2950 50  0001 C CNN
F 3 "" H 900 2950 50  0001 C CNN
	1    900  2950
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:+1V0-power #PWR0117
U 1 1 5EE9CF08
P 900 2850
F 0 "#PWR0117" H 900 2700 50  0001 C CNN
F 1 "+1V0" H 915 3023 50  0000 C CNN
F 2 "" H 900 2850 50  0001 C CNN
F 3 "" H 900 2850 50  0001 C CNN
	1    900  2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1450 950  800  950 
Wire Wire Line
	1450 2850 900  2850
Wire Wire Line
	1450 2950 900  2950
$Comp
L SensorArray-rescue:GND-power #PWR?
U 1 1 5EFF6DDB
P 1050 6950
AR Path="/5EFF6DDB" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EFF6DDB" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 1050 6700 50  0001 C CNN
F 1 "GND" H 1055 6777 50  0000 C CNN
F 2 "" H 1050 6950 50  0001 C CNN
F 3 "" H 1050 6950 50  0001 C CNN
	1    1050 6950
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR?
U 1 1 5EFF18AC
P 1650 7400
AR Path="/5EFF18AC" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EFF18AC" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 1650 7150 50  0001 C CNN
F 1 "GND" H 1655 7227 50  0000 C CNN
F 2 "" H 1650 7400 50  0001 C CNN
F 3 "" H 1650 7400 50  0001 C CNN
	1    1650 7400
	1    0    0    -1  
$EndComp
Text GLabel 2150 5500 2    50   Input ~ 0
Sensor_A0
Text GLabel 1150 6400 0    50   Input ~ 0
MUXA_S3
Text GLabel 1150 6300 0    50   Input ~ 0
MUXA_S2
Text GLabel 1150 6200 0    50   Input ~ 0
MUXA_S1
Text GLabel 1150 6100 0    50   Input ~ 0
MUXA_S0
Wire Wire Line
	1050 6800 1050 6950
Wire Wire Line
	1150 6800 1050 6800
Text GLabel 1150 5700 0    50   Input ~ 0
Sensor_AOUT
Wire Wire Line
	1650 5200 1650 5100
$Comp
L SensorArray-rescue:+3.3V-power #PWR?
U 1 1 5EE75CEE
P 1650 5100
AR Path="/5EE75CEE" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE75CEE" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 1650 4950 50  0001 C CNN
F 1 "+3.3V" H 1665 5273 50  0000 C CNN
F 2 "" H 1650 5100 50  0001 C CNN
F 3 "" H 1650 5100 50  0001 C CNN
	1    1650 5100
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:CD74HC4067M-74xx U?
U 1 1 5EE2DEF1
P 1650 6200
AR Path="/5EE2DEF1" Ref="U?"  Part="1" 
AR Path="/5EE29113/5EE2DEF1" Ref="U6"  Part="1" 
F 0 "U6" H 1900 7300 50  0000 C CNN
F 1 "CD74HC4067M" H 2000 7150 50  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 2550 5200 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4067.pdf" H 1300 7050 50  0001 C CNN
	1    1650 6200
	1    0    0    -1  
$EndComp
Text GLabel 2150 5700 2    50   Input ~ 0
Sensor_A2
Text GLabel 2150 5800 2    50   Input ~ 0
Sensor_A3
Text GLabel 2150 5900 2    50   Input ~ 0
Sensor_A4
Text GLabel 2150 6000 2    50   Input ~ 0
Sensor_A5
Text GLabel 2150 6100 2    50   Input ~ 0
Sensor_A6
Text GLabel 2150 6200 2    50   Input ~ 0
Sensor_A7
Text GLabel 2150 6300 2    50   Input ~ 0
Sensor_A8
Text GLabel 2150 6400 2    50   Input ~ 0
Sensor_A9
NoConn ~ 2150 6500
NoConn ~ 2150 6600
NoConn ~ 2150 6700
NoConn ~ 2150 6800
NoConn ~ 2150 6900
NoConn ~ 2150 7000
Wire Wire Line
	1650 7400 1650 7300
Text GLabel 2150 5600 2    50   Input ~ 0
Sensor_A1
Wire Notes Line
	4750 4700 4750 7650
Wire Notes Line
	4750 7650 600  7650
Wire Notes Line
	600  7650 600  4700
Wire Notes Line
	600  4700 4750 4700
Text Notes 650  4800 0    50   ~ 0
Multiplexer
Wire Notes Line
	500  3300 3400 3300
Wire Notes Line
	500  500  500  3300
Wire Notes Line
	3400 500  3400 3300
$Comp
L SensorArray-rescue:GNDA-power #PWR?
U 1 1 5EFEB390
P 800 950
AR Path="/5EFEB390" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EFEB390" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 800 700 50  0001 C CNN
F 1 "GNDA" H 850 800 50  0000 C CNN
F 2 "" H 800 950 50  0001 C CNN
F 3 "" H 800 950 50  0001 C CNN
	1    800  950 
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:+3.3V-power #PWR?
U 1 1 5EE3A169
P 5850 1300
AR Path="/5EE3A169" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE3A169" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 5850 1150 50  0001 C CNN
F 1 "+3.3V" H 5865 1473 50  0000 C CNN
F 2 "" H 5850 1300 50  0001 C CNN
F 3 "" H 5850 1300 50  0001 C CNN
	1    5850 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1050 4650 950 
$Comp
L SensorArray-rescue:+3.3V-power #PWR?
U 1 1 5EE3A162
P 4650 950
AR Path="/5EE3A162" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EE3A162" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 4650 800 50  0001 C CNN
F 1 "+3.3V" H 4665 1123 50  0000 C CNN
F 2 "" H 4650 950 50  0001 C CNN
F 3 "" H 4650 950 50  0001 C CNN
	1    4650 950 
	1    0    0    -1  
$EndComp
Text GLabel 4150 1450 0    50   Input ~ 0
SPI1_MOSI
Text GLabel 4150 1350 0    50   Input ~ 0
SPI1_SCK
Text GLabel 4150 1750 0    50   Input ~ 0
SPI1_MISO
Text GLabel 5150 1450 2    50   Input ~ 0
POTI_LOW_A
Text GLabel 5150 1350 2    50   Input ~ 0
POTI_HIGH_A
Wire Wire Line
	5850 1800 6000 1800
Connection ~ 5850 1800
Wire Wire Line
	5850 1800 5850 1900
Wire Wire Line
	5850 1400 5700 1400
Connection ~ 5850 1400
Wire Wire Line
	5850 1400 5850 1300
Wire Wire Line
	5700 1400 5700 1500
Wire Wire Line
	6000 1400 5850 1400
Wire Wire Line
	6000 1500 6000 1400
Wire Wire Line
	6000 1800 6000 1700
Wire Wire Line
	5700 1800 5850 1800
Wire Wire Line
	5700 1700 5700 1800
$Comp
L SensorArray-rescue:C_Small-Device C?
U 1 1 5EE3A144
P 6000 1600
AR Path="/5EE3A144" Ref="C?"  Part="1" 
AR Path="/5EE29113/5EE3A144" Ref="C23"  Part="1" 
F 0 "C23" H 6092 1646 50  0000 L CNN
F 1 "100n" H 6092 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6000 1600 50  0001 C CNN
F 3 "~" H 6000 1600 50  0001 C CNN
	1    6000 1600
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C?
U 1 1 5EE3A13E
P 5700 1600
AR Path="/5EE3A13E" Ref="C?"  Part="1" 
AR Path="/5EE29113/5EE3A13E" Ref="C22"  Part="1" 
F 0 "C22" H 5792 1646 50  0000 L CNN
F 1 "10u" H 5792 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5700 1600 50  0001 C CNN
F 3 "~" H 5700 1600 50  0001 C CNN
	1    5700 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1800 5250 1750
Wire Wire Line
	5250 2000 5250 2100
Connection ~ 4650 2100
Wire Wire Line
	5250 2100 4650 2100
Wire Wire Line
	5150 1750 5250 1750
$Comp
L SensorArray-rescue:C_Small-Device C?
U 1 1 5EE3A133
P 5250 1900
AR Path="/5EE3A133" Ref="C?"  Part="1" 
AR Path="/5EE29113/5EE3A133" Ref="C25"  Part="1" 
F 0 "C25" H 5342 1946 50  0000 L CNN
F 1 "1u" H 5342 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5250 1900 50  0001 C CNN
F 3 "~" H 5250 1900 50  0001 C CNN
	1    5250 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2100 4550 2200
Connection ~ 4550 2100
Wire Wire Line
	4650 2100 4550 2100
Wire Wire Line
	4650 2050 4650 2100
Wire Wire Line
	4550 2050 4550 2100
$Comp
L SensorArray-rescue:AD5272BRM-Potentiometer_Digital U?
U 1 1 5EE3A122
P 4650 1550
AR Path="/5EE3A122" Ref="U?"  Part="1" 
AR Path="/5EE29113/5EE3A122" Ref="U5"  Part="1" 
F 0 "U5" H 4850 2100 50  0000 C CNN
F 1 "AD5272BRM" H 5000 2000 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 5400 1100 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD5272_5274.pdf" H 4650 1550 50  0001 C CNN
	1    4650 1550
	1    0    0    -1  
$EndComp
Text GLabel 4150 1650 0    50   Input ~ 0
SPI1_CS_POTIA
Text GLabel 4150 3650 0    50   Input ~ 0
SPI1_CS_POTIB
Wire Notes Line
	3500 2450 6300 2450
Wire Notes Line
	3500 700  6300 700 
Wire Notes Line
	3500 2750 6300 2750
Wire Notes Line
	3500 4500 6300 4500
$Comp
L SensorArray-rescue:GNDA-power #PWR?
U 1 1 5F03C907
P 8050 2400
AR Path="/5F03C907" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5F03C907" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 8050 2150 50  0001 C CNN
F 1 "GNDA" H 8055 2227 50  0000 C CNN
F 2 "" H 8050 2400 50  0001 C CNN
F 3 "" H 8050 2400 50  0001 C CNN
	1    8050 2400
	1    0    0    -1  
$EndComp
Connection ~ 8050 2400
$Comp
L SensorArray-rescue:GNDA-power #PWR?
U 1 1 5F042F53
P 8050 4700
AR Path="/5F042F53" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5F042F53" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 8050 4450 50  0001 C CNN
F 1 "GNDA" H 8055 4527 50  0000 C CNN
F 2 "" H 8050 4700 50  0001 C CNN
F 3 "" H 8050 4700 50  0001 C CNN
	1    8050 4700
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:Conn_01x02-Connector_Generic J?
U 1 1 5F083067
P 10300 6250
AR Path="/5F083067" Ref="J?"  Part="1" 
AR Path="/5EE29113/5F083067" Ref="J9"  Part="1" 
F 0 "J9" H 10380 6242 50  0000 L CNN
F 1 "Amp_Sensor_out" H 10380 6151 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10300 6250 50  0001 C CNN
F 3 "~" H 10300 6250 50  0001 C CNN
	1    10300 6250
	1    0    0    -1  
$EndComp
Text GLabel 10100 6250 0    50   Input ~ 0
AMP_OUT_B
Text GLabel 10100 6350 0    50   Input ~ 0
AMP_OUT_A
$Comp
L SensorArray-rescue:GND-power #PWR?
U 1 1 5F0AF43D
P 4550 2200
AR Path="/5F0AF43D" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5F0AF43D" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 4550 1950 50  0001 C CNN
F 1 "GND" H 4555 2027 50  0000 C CNN
F 2 "" H 4550 2200 50  0001 C CNN
F 3 "" H 4550 2200 50  0001 C CNN
	1    4550 2200
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR?
U 1 1 5F0C7BFE
P 5850 1900
AR Path="/5F0C7BFE" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5F0C7BFE" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 5850 1650 50  0001 C CNN
F 1 "GND" H 5855 1727 50  0000 C CNN
F 2 "" H 5850 1900 50  0001 C CNN
F 3 "" H 5850 1900 50  0001 C CNN
	1    5850 1900
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR?
U 1 1 5F0DA11B
P 4550 4200
AR Path="/5F0DA11B" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5F0DA11B" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 4550 3950 50  0001 C CNN
F 1 "GND" H 4555 4027 50  0000 C CNN
F 2 "" H 4550 4200 50  0001 C CNN
F 3 "" H 4550 4200 50  0001 C CNN
	1    4550 4200
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR?
U 1 1 5F0E02E6
P 5850 3900
AR Path="/5F0E02E6" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5F0E02E6" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 5850 3650 50  0001 C CNN
F 1 "GND" H 5855 3727 50  0000 C CNN
F 2 "" H 5850 3900 50  0001 C CNN
F 3 "" H 5850 3900 50  0001 C CNN
	1    5850 3900
	1    0    0    -1  
$EndComp
Text GLabel 1450 1150 0    50   Input ~ 0
Sensor_B8
Text GLabel 1450 1050 0    50   Input ~ 0
Sensor_B9
Text GLabel 1450 1950 0    50   Input ~ 0
Sensor_A9
Text GLabel 1450 2050 0    50   Input ~ 0
Sensor_A8
$Comp
L SensorArray-rescue:R_Small-Device R_GND2
U 1 1 5EED3312
P 10650 5200
F 0 "R_GND2" V 10800 5050 50  0000 L CNN
F 1 "0" V 10709 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10650 5200 50  0001 C CNN
F 3 "~" H 10650 5200 50  0001 C CNN
	1    10650 5200
	0    -1   -1   0   
$EndComp
$Comp
L SensorArray-rescue:GNDA-power #PWR?
U 1 1 5EED3318
P 10450 5250
AR Path="/5EED3318" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EED3318" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 10450 5000 50  0001 C CNN
F 1 "GNDA" H 10455 5077 50  0000 C CNN
F 2 "" H 10450 5250 50  0001 C CNN
F 3 "" H 10450 5250 50  0001 C CNN
	1    10450 5250
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR?
U 1 1 5EED331E
P 10850 5250
AR Path="/5EED331E" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EED331E" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 10850 5000 50  0001 C CNN
F 1 "GND" H 10855 5077 50  0000 C CNN
F 2 "" H 10850 5250 50  0001 C CNN
F 3 "" H 10850 5250 50  0001 C CNN
	1    10850 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 5250 10450 5200
Wire Wire Line
	10450 5200 10550 5200
Wire Wire Line
	10750 5200 10850 5200
Wire Wire Line
	10850 5200 10850 5250
$Comp
L SensorArray-rescue:INA326-Amplifier_Instrumentation U4
U 1 1 5EF6F3C4
P 9450 1500
F 0 "U4" H 9700 1850 50  0000 L CNN
F 1 "INA326" H 9600 1750 50  0000 L CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 9450 1500 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina326.pdf" H 9550 1500 50  0001 C CNN
	1    9450 1500
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:INA326-Amplifier_Instrumentation U8
U 1 1 5EF7141B
P 9450 3750
F 0 "U8" H 9700 4100 50  0000 L CNN
F 1 "INA326" H 9600 4000 50  0000 L CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 9450 3750 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina326.pdf" H 9550 3750 50  0001 C CNN
	1    9450 3750
	1    0    0    -1  
$EndComp
NoConn ~ 1450 850 
$Comp
L SensorArray-rescue:+3.3V-power #PWR?
U 1 1 5EDC8737
P 7300 5050
AR Path="/5EDC8737" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EDC8737" Ref="#PWR070"  Part="1" 
F 0 "#PWR070" H 7300 4900 50  0001 C CNN
F 1 "+3.3V" H 7315 5223 50  0000 C CNN
F 2 "" H 7300 5050 50  0001 C CNN
F 3 "" H 7300 5050 50  0001 C CNN
	1    7300 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 5150 7300 5050
Wire Wire Line
	7300 5600 7300 5350
$Comp
L SensorArray-rescue:R_Small-Device R18
U 1 1 5ECCD249
P 7300 5250
F 0 "R18" H 7359 5296 50  0000 L CNN
F 1 "3k3" H 7359 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7300 5250 50  0001 C CNN
F 3 "~" H 7300 5250 50  0001 C CNN
	1    7300 5250
	1    0    0    -1  
$EndComp
NoConn ~ 6750 5600
Text GLabel 7300 5600 2    50   Input ~ 0
SPI1_MOSI
$Comp
L SensorArray-rescue:D_Schottky_Small-Device D?
U 1 1 5F986E80
P 8900 1100
AR Path="/5F986E80" Ref="D?"  Part="1" 
AR Path="/5EDF6668/5F986E80" Ref="D?"  Part="1" 
AR Path="/5EE29113/5F986E80" Ref="D5"  Part="1" 
F 0 "D5" H 8900 893 50  0000 C CNN
F 1 "B5819W" H 8900 984 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" V 8900 1100 50  0001 C CNN
F 3 "~" V 8900 1100 50  0001 C CNN
	1    8900 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	8450 2050 9550 2050
Connection ~ 8450 2050
$Comp
L SensorArray-rescue:+1V0-power #PWR01
U 1 1 5F9B3299
P 9000 900
F 0 "#PWR01" H 9000 750 50  0001 C CNN
F 1 "+1V0" H 9015 1073 50  0000 C CNN
F 2 "" H 9000 900 50  0001 C CNN
F 3 "" H 9000 900 50  0001 C CNN
	1    9000 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 1700 9100 1700
Wire Wire Line
	9150 1300 8900 1300
$Comp
L SensorArray-rescue:D_Schottky_Small-Device D?
U 1 1 5F9C703C
P 9100 1100
AR Path="/5F9C703C" Ref="D?"  Part="1" 
AR Path="/5EDF6668/5F9C703C" Ref="D?"  Part="1" 
AR Path="/5EE29113/5F9C703C" Ref="D7"  Part="1" 
F 0 "D7" H 9150 1300 50  0000 C CNN
F 1 "B5819W" H 9050 1200 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" V 9100 1100 50  0001 C CNN
F 3 "~" V 9100 1100 50  0001 C CNN
	1    9100 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 1200 8900 1300
Connection ~ 8900 1300
Wire Wire Line
	8900 1300 8800 1300
Wire Wire Line
	8900 1000 8900 950 
Wire Wire Line
	8900 950  9000 950 
Wire Wire Line
	9000 950  9000 900 
Wire Wire Line
	9000 950  9100 950 
Wire Wire Line
	9100 950  9100 1000
Connection ~ 9000 950 
Wire Wire Line
	9100 1200 9100 1700
Connection ~ 9100 1700
Wire Wire Line
	9100 1700 9150 1700
$Comp
L SensorArray-rescue:D_Schottky_Small-Device D?
U 1 1 5FA2FC70
P 8900 3300
AR Path="/5FA2FC70" Ref="D?"  Part="1" 
AR Path="/5EDF6668/5FA2FC70" Ref="D?"  Part="1" 
AR Path="/5EE29113/5FA2FC70" Ref="D8"  Part="1" 
F 0 "D8" H 8900 3093 50  0000 C CNN
F 1 "B5819W" H 8900 3184 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" V 8900 3300 50  0001 C CNN
F 3 "~" V 8900 3300 50  0001 C CNN
	1    8900 3300
	0    1    1    0   
$EndComp
$Comp
L SensorArray-rescue:+1V0-power #PWR023
U 1 1 5FA2FC76
P 9000 3100
F 0 "#PWR023" H 9000 2950 50  0001 C CNN
F 1 "+1V0" H 9015 3273 50  0000 C CNN
F 2 "" H 9000 3100 50  0001 C CNN
F 3 "" H 9000 3100 50  0001 C CNN
	1    9000 3100
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:D_Schottky_Small-Device D?
U 1 1 5FA2FC7C
P 9100 3300
AR Path="/5FA2FC7C" Ref="D?"  Part="1" 
AR Path="/5EDF6668/5FA2FC7C" Ref="D?"  Part="1" 
AR Path="/5EE29113/5FA2FC7C" Ref="D9"  Part="1" 
F 0 "D9" H 9150 3500 50  0000 C CNN
F 1 "B5819W" H 9050 3400 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" V 9100 3300 50  0001 C CNN
F 3 "~" V 9100 3300 50  0001 C CNN
	1    9100 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 3200 8900 3150
Wire Wire Line
	8900 3150 9000 3150
Wire Wire Line
	9000 3150 9000 3100
Wire Wire Line
	9000 3150 9100 3150
Wire Wire Line
	9100 3150 9100 3200
Connection ~ 9000 3150
Wire Wire Line
	8900 3950 9100 3950
Wire Wire Line
	8450 4300 9550 4300
Wire Wire Line
	8800 3550 8900 3550
Wire Wire Line
	9100 3400 9100 3950
Connection ~ 9100 3950
Wire Wire Line
	9100 3950 9150 3950
Wire Wire Line
	8900 3400 8900 3550
Connection ~ 8900 3550
Wire Wire Line
	8900 3550 9150 3550
$EndSCHEMATC
