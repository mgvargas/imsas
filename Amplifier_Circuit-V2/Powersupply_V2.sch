EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L SensorArray-rescue:AMS1117-3.3-Regulator_Linear U?
U 1 1 5EE04570
P 2850 1400
AR Path="/5EE04570" Ref="U?"  Part="1" 
AR Path="/5EDF6668/5EE04570" Ref="U2"  Part="1" 
F 0 "U2" H 2900 1650 50  0000 C CNN
F 1 "AMS1117-3.3" H 3000 1550 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2850 1600 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2950 1150 50  0001 C CNN
	1    2850 1400
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:Ferrite_Bead_Small-Device FB?
U 1 1 5EE04576
P 2300 1400
AR Path="/5EE04576" Ref="FB?"  Part="1" 
AR Path="/5EDF6668/5EE04576" Ref="FB1"  Part="1" 
F 0 "FB1" V 2150 1400 50  0000 C CNN
F 1 "100 @ 100 MHz" V 2450 1200 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 2230 1400 50  0001 C CNN
F 3 "~" H 2300 1400 50  0001 C CNN
	1    2300 1400
	0    1    1    0   
$EndComp
$Comp
L SensorArray-rescue:Fuse_Small-Device F?
U 1 1 5EE0457C
P 1100 1400
AR Path="/5EE0457C" Ref="F?"  Part="1" 
AR Path="/5EDF6668/5EE0457C" Ref="F1"  Part="1" 
F 0 "F1" H 1100 1585 50  0000 C CNN
F 1 "500mA" H 1100 1494 50  0000 C CNN
F 2 "Fuse:Fuse_0603_1608Metric" H 1100 1400 50  0001 C CNN
F 3 "~" H 1100 1400 50  0001 C CNN
	1    1100 1400
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:D_Schottky_Small-Device D?
U 1 1 5EE04582
P 1800 1250
AR Path="/5EE04582" Ref="D?"  Part="1" 
AR Path="/5EDF6668/5EE04582" Ref="D2"  Part="1" 
F 0 "D2" V 1850 1150 50  0000 C CNN
F 1 "B5819W" V 1950 1050 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" V 1800 1250 50  0001 C CNN
F 3 "~" V 1800 1250 50  0001 C CNN
	1    1800 1250
	0    -1   -1   0   
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C?
U 1 1 5EE04588
P 2400 1650
AR Path="/5EE04588" Ref="C?"  Part="1" 
AR Path="/5EDF6668/5EE04588" Ref="C15"  Part="1" 
F 0 "C15" H 2492 1696 50  0000 L CNN
F 1 "10u" H 2492 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2400 1650 50  0001 C CNN
F 3 "~" H 2400 1650 50  0001 C CNN
	1    2400 1650
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C?
U 1 1 5EE0458E
P 3250 1650
AR Path="/5EE0458E" Ref="C?"  Part="1" 
AR Path="/5EDF6668/5EE0458E" Ref="C16"  Part="1" 
F 0 "C16" H 3342 1696 50  0000 L CNN
F 1 "10u" H 3342 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3250 1650 50  0001 C CNN
F 3 "~" H 3250 1650 50  0001 C CNN
	1    3250 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1400 2400 1550
Wire Wire Line
	2400 1400 2550 1400
Connection ~ 2400 1400
Wire Wire Line
	2400 1750 2400 1900
Wire Wire Line
	2400 1900 2850 1900
Wire Wire Line
	3250 1900 3250 1750
Wire Wire Line
	3250 1550 3250 1400
Wire Wire Line
	3250 1400 3150 1400
Wire Wire Line
	2850 1700 2850 1900
Connection ~ 2850 1900
Wire Wire Line
	2850 1900 3250 1900
$Comp
L SensorArray-rescue:VCC-power #PWR?
U 1 1 5EE045A1
P 900 1250
AR Path="/5EE045A1" Ref="#PWR?"  Part="1" 
AR Path="/5EDF6668/5EE045A1" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 900 1100 50  0001 C CNN
F 1 "VCC" H 915 1423 50  0000 C CNN
F 2 "" H 900 1250 50  0001 C CNN
F 3 "" H 900 1250 50  0001 C CNN
	1    900  1250
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR?
U 1 1 5EE045A7
P 2850 2050
AR Path="/5EE045A7" Ref="#PWR?"  Part="1" 
AR Path="/5EDF6668/5EE045A7" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 2850 1800 50  0001 C CNN
F 1 "GND" H 2855 1877 50  0000 C CNN
F 2 "" H 2850 2050 50  0001 C CNN
F 3 "" H 2850 2050 50  0001 C CNN
	1    2850 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2050 2850 1900
Wire Wire Line
	1000 1400 900  1400
Wire Wire Line
	900  1400 900  1250
$Comp
L SensorArray-rescue:+3.3V-power #PWR?
U 1 1 5EE045B0
P 3450 1300
AR Path="/5EE045B0" Ref="#PWR?"  Part="1" 
AR Path="/5EDF6668/5EE045B0" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 3450 1150 50  0001 C CNN
F 1 "+3.3V" H 3465 1473 50  0000 C CNN
F 2 "" H 3450 1300 50  0001 C CNN
F 3 "" H 3450 1300 50  0001 C CNN
	1    3450 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1400 3450 1400
Wire Wire Line
	3450 1400 3450 1300
Connection ~ 3250 1400
Wire Notes Line
	800  2300 3600 2300
Wire Notes Line
	3600 800  800  800 
Text Notes 800  750  0    50   ~ 0
Schottkey Diode for reverse polarity protection. \nSelecting between Power Pin and 5V from USB\n
$Comp
L SensorArray-rescue:+3.3V-power #PWR?
U 1 1 5EE17BE7
P 4200 1350
AR Path="/5EE17BE7" Ref="#PWR?"  Part="1" 
AR Path="/5EDF6668/5EE17BE7" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 4200 1200 50  0001 C CNN
F 1 "+3.3V" H 4215 1523 50  0000 C CNN
F 2 "" H 4200 1350 50  0001 C CNN
F 3 "" H 4200 1350 50  0001 C CNN
	1    4200 1350
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:Ferrite_Bead_Small-Device FB?
U 1 1 5EE17BED
P 4600 1450
AR Path="/5EE17BED" Ref="FB?"  Part="1" 
AR Path="/5EDF6668/5EE17BED" Ref="FB2"  Part="1" 
F 0 "FB2" V 4363 1450 50  0000 C CNN
F 1 "100 @ 100 MHz" V 4454 1450 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" V 4530 1450 50  0001 C CNN
F 3 "~" H 4600 1450 50  0001 C CNN
	1    4600 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 1450 4700 1600
Connection ~ 4700 1450
$Comp
L SensorArray-rescue:C_Small-Device C?
U 1 1 5EE17BF5
P 4700 1700
AR Path="/5EE17BF5" Ref="C?"  Part="1" 
AR Path="/5EDF6668/5EE17BF5" Ref="C17"  Part="1" 
F 0 "C17" H 4792 1746 50  0000 L CNN
F 1 "100n" H 4792 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4700 1700 50  0001 C CNN
F 3 "~" H 4700 1700 50  0001 C CNN
	1    4700 1700
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C?
U 1 1 5EE17BFB
P 5100 1700
AR Path="/5EE17BFB" Ref="C?"  Part="1" 
AR Path="/5EDF6668/5EE17BFB" Ref="C18"  Part="1" 
F 0 "C18" H 5192 1746 50  0000 L CNN
F 1 "10n" H 5192 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5100 1700 50  0001 C CNN
F 3 "~" H 5100 1700 50  0001 C CNN
	1    5100 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1350 4200 1450
Wire Wire Line
	4200 1450 4500 1450
Wire Wire Line
	5100 1600 5100 1450
Wire Wire Line
	4700 1450 5100 1450
Wire Wire Line
	4700 1800 4700 1900
Wire Wire Line
	4700 1900 4900 1900
Wire Wire Line
	5100 1900 5100 1800
Wire Wire Line
	4900 1950 4900 1900
Connection ~ 4900 1900
Wire Wire Line
	4900 1900 5100 1900
$Comp
L SensorArray-rescue:+3.3VA-power #PWR?
U 1 1 5EE17C11
P 5100 1350
AR Path="/5EE17C11" Ref="#PWR?"  Part="1" 
AR Path="/5EDF6668/5EE17C11" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 5100 1200 50  0001 C CNN
F 1 "+3.3VA" H 5115 1523 50  0000 C CNN
F 2 "" H 5100 1350 50  0001 C CNN
F 3 "" H 5100 1350 50  0001 C CNN
	1    5100 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1350 5100 1450
Connection ~ 5100 1450
Wire Wire Line
	8750 1400 8750 1250
$Comp
L SensorArray-rescue:R_Small-Device R7
U 1 1 5EDCCD70
P 8750 1500
F 0 "R7" H 8809 1546 50  0000 L CNN
F 1 "2k2" H 8809 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8750 1500 50  0001 C CNN
F 3 "~" H 8750 1500 50  0001 C CNN
	1    8750 1500
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:LED_Small-Device D3
U 1 1 5EDCDC99
P 8750 1900
F 0 "D3" V 8796 1830 50  0000 R CNN
F 1 "LED" V 8705 1830 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 8750 1900 50  0001 C CNN
F 3 "~" V 8750 1900 50  0001 C CNN
	1    8750 1900
	0    -1   -1   0   
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR?
U 1 1 5EDCEBB3
P 8750 2150
AR Path="/5EDCEBB3" Ref="#PWR?"  Part="1" 
AR Path="/5EDF6668/5EDCEBB3" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 8750 1900 50  0001 C CNN
F 1 "GND" H 8755 1977 50  0000 C CNN
F 2 "" H 8750 2150 50  0001 C CNN
F 3 "" H 8750 2150 50  0001 C CNN
	1    8750 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2000 8750 2150
Wire Wire Line
	8750 1800 8750 1600
Wire Wire Line
	9200 1400 9200 1250
$Comp
L SensorArray-rescue:R_Small-Device R8
U 1 1 5EDD10F7
P 9200 1500
F 0 "R8" H 9259 1546 50  0000 L CNN
F 1 "1.5k" H 9259 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9200 1500 50  0001 C CNN
F 3 "~" H 9200 1500 50  0001 C CNN
	1    9200 1500
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:LED_Small-Device D4
U 1 1 5EDD10FD
P 9200 1900
F 0 "D4" V 9246 1830 50  0000 R CNN
F 1 "LED" V 9155 1830 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" V 9200 1900 50  0001 C CNN
F 3 "~" V 9200 1900 50  0001 C CNN
	1    9200 1900
	0    -1   -1   0   
$EndComp
$Comp
L SensorArray-rescue:GND-power #PWR?
U 1 1 5EDD1103
P 9200 2150
AR Path="/5EDD1103" Ref="#PWR?"  Part="1" 
AR Path="/5EDF6668/5EDD1103" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 9200 1900 50  0001 C CNN
F 1 "GND" H 9205 1977 50  0000 C CNN
F 2 "" H 9200 2150 50  0001 C CNN
F 3 "" H 9200 2150 50  0001 C CNN
	1    9200 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2000 9200 2150
Wire Wire Line
	9200 1800 9200 1600
Wire Wire Line
	5250 3150 5450 3150
Wire Wire Line
	4650 3150 4550 3150
Wire Wire Line
	4150 3000 4150 3150
Wire Wire Line
	4650 3250 4550 3250
Wire Wire Line
	4550 3250 4550 3150
Connection ~ 4550 3150
Wire Wire Line
	4550 3150 4300 3150
Wire Wire Line
	4950 3700 4950 3650
$Comp
L SensorArray-rescue:C_Small-Device C19
U 1 1 5EDE0148
P 4300 3500
F 0 "C19" H 4392 3546 50  0000 L CNN
F 1 "100n" H 4392 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4300 3500 50  0001 C CNN
F 3 "~" H 4300 3500 50  0001 C CNN
	1    4300 3500
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:C_Small-Device C20
U 1 1 5EDE1007
P 5450 3500
F 0 "C20" H 5542 3546 50  0000 L CNN
F 1 "100n" H 5542 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5450 3500 50  0001 C CNN
F 3 "~" H 5450 3500 50  0001 C CNN
	1    5450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3650 4300 3650
Wire Wire Line
	4300 3650 4300 3600
Wire Wire Line
	4300 3400 4300 3150
Connection ~ 4300 3150
Wire Wire Line
	4300 3150 4150 3150
Wire Wire Line
	4950 3650 5450 3650
Wire Wire Line
	5450 3650 5450 3600
Connection ~ 4950 3650
Wire Wire Line
	5450 3400 5450 3150
Connection ~ 5450 3150
Wire Wire Line
	5450 3150 5700 3150
Wire Wire Line
	5700 3150 5700 3000
$Comp
L SensorArray-rescue:+3.3V-power #PWR?
U 1 1 5EDE7366
P 9200 1250
AR Path="/5EDE7366" Ref="#PWR?"  Part="1" 
AR Path="/5EDF6668/5EDE7366" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 9200 1100 50  0001 C CNN
F 1 "+3.3V" H 9215 1423 50  0000 C CNN
F 2 "" H 9200 1250 50  0001 C CNN
F 3 "" H 9200 1250 50  0001 C CNN
	1    9200 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3650 4950 3550
$Comp
L SensorArray-rescue:+1V0-power #PWR0101
U 1 1 5EE00605
P 5700 3000
F 0 "#PWR0101" H 5700 2850 50  0001 C CNN
F 1 "+1V0" H 5715 3173 50  0000 C CNN
F 2 "" H 5700 3000 50  0001 C CNN
F 3 "" H 5700 3000 50  0001 C CNN
	1    5700 3000
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:TLV71310PDBV-Regulator_Linear U3
U 1 1 5EE028A7
P 4950 3250
F 0 "U3" H 4950 3592 50  0000 C CNN
F 1 "TLV71310PDBV" H 4950 3501 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4950 3575 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tlv713p.pdf" H 4950 3300 50  0001 C CNN
	1    4950 3250
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GNDA-power #PWR?
U 1 1 5F0AABCB
P 4900 1950
AR Path="/5F0AABCB" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5F0AABCB" Ref="#PWR?"  Part="1" 
AR Path="/5EDF6668/5F0AABCB" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 4900 1700 50  0001 C CNN
F 1 "GNDA" H 4905 1777 50  0000 C CNN
F 2 "" H 4900 1950 50  0001 C CNN
F 3 "" H 4900 1950 50  0001 C CNN
	1    4900 1950
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:+3.3VA-power #PWR?
U 1 1 5EEF6ECB
P 4150 3000
AR Path="/5EEF6ECB" Ref="#PWR?"  Part="1" 
AR Path="/5EDF6668/5EEF6ECB" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 4150 2850 50  0001 C CNN
F 1 "+3.3VA" H 4165 3173 50  0000 C CNN
F 2 "" H 4150 3000 50  0001 C CNN
F 3 "" H 4150 3000 50  0001 C CNN
	1    4150 3000
	1    0    0    -1  
$EndComp
$Comp
L SensorArray-rescue:GNDA-power #PWR?
U 1 1 5EEFA5F5
P 4950 3700
AR Path="/5EEFA5F5" Ref="#PWR?"  Part="1" 
AR Path="/5EE29113/5EEFA5F5" Ref="#PWR?"  Part="1" 
AR Path="/5EDF6668/5EEFA5F5" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 4950 3450 50  0001 C CNN
F 1 "GNDA" H 4955 3527 50  0000 C CNN
F 2 "" H 4950 3700 50  0001 C CNN
F 3 "" H 4950 3700 50  0001 C CNN
	1    4950 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR051
U 1 1 5FCAC6AF
P 1800 1050
F 0 "#PWR051" H 1800 900 50  0001 C CNN
F 1 "+5V" H 1815 1223 50  0000 C CNN
F 2 "" H 1800 1050 50  0001 C CNN
F 3 "" H 1800 1050 50  0001 C CNN
	1    1800 1050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:AO3401A Q1
U 1 1 5FCAD3EA
P 1500 1500
F 0 "Q1" V 1842 1500 50  0000 C CNN
F 1 "AO3401A" V 1751 1500 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1700 1425 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3401A.pdf" H 1500 1500 50  0001 L CNN
	1    1500 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 1400 1300 1400
Wire Wire Line
	1700 1400 1800 1400
Wire Wire Line
	1800 1350 1800 1400
Connection ~ 1800 1400
Wire Wire Line
	1800 1400 2050 1400
Wire Wire Line
	1800 1050 1800 1150
Wire Notes Line
	3600 800  3600 2300
Wire Notes Line
	800  800  800  2300
$Comp
L SensorArray-rescue:GND-power #PWR?
U 1 1 5FCE06F1
P 1500 1700
AR Path="/5FCE06F1" Ref="#PWR?"  Part="1" 
AR Path="/5EDF6668/5FCE06F1" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 1500 1450 50  0001 C CNN
F 1 "GND" H 1505 1527 50  0000 C CNN
F 2 "" H 1500 1700 50  0001 C CNN
F 3 "" H 1500 1700 50  0001 C CNN
	1    1500 1700
	1    0    0    -1  
$EndComp
Text GLabel 2050 1650 3    50   Input ~ 0
Vin
Connection ~ 2050 1400
Wire Wire Line
	2050 1400 2200 1400
Wire Wire Line
	2050 1400 2050 1650
Text GLabel 8750 1250 1    50   Input ~ 0
Vin
$EndSCHEMATC
