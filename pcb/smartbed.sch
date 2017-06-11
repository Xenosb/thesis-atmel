EESchema Schematic File Version 2
LIBS:smartbed
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:switches
LIBS:smartbed-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Smartbed sense node"
Date "2017-06-09"
Rev "v1"
Comp "HTWG Konstanz"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATSAMD21J18A U1
U 1 1 593978E8
P 8500 5400
F 0 "U1" H 8500 5600 60  0000 C CNN
F 1 "ATSAMD21J18A" H 8500 5450 60  0000 C CNN
F 2 "Housings_QFP:TQFP-64_10x10mm_Pitch0.5mm" V 9100 6650 60  0001 C CNN
F 3 "" V 9100 6650 60  0001 C CNN
	1    8500 5400
	1    0    0    -1  
$EndComp
$Comp
L LD1117S33CTR U?
U 1 1 593A671E
P 1900 3200
F 0 "U?" H 1900 3500 50  0000 C CNN
F 1 "LD1117S33CTR" H 1900 3400 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 1900 3300 50  0001 C CNN
F 3 "" H 1900 3200 50  0001 C CNN
	1    1900 3200
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 593A6847
P 2550 3350
F 0 "C?" H 2575 3450 50  0000 L CNN
F 1 "10uF" H 2575 3250 50  0000 L CNN
F 2 "" H 2588 3200 50  0001 C CNN
F 3 "" H 2550 3350 50  0001 C CNN
	1    2550 3350
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 593A68C8
P 1250 3350
F 0 "C?" H 1275 3450 50  0000 L CNN
F 1 "100nF" H 1275 3250 50  0000 L CNN
F 2 "" H 1288 3200 50  0001 C CNN
F 3 "" H 1250 3350 50  0001 C CNN
	1    1250 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 593A68F3
P 1900 3600
F 0 "#PWR?" H 1900 3350 50  0001 C CNN
F 1 "GND" H 1900 3450 50  0000 C CNN
F 2 "" H 1900 3600 50  0001 C CNN
F 3 "" H 1900 3600 50  0001 C CNN
	1    1900 3600
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 J?
U 1 1 593A6A6B
P 1550 7950
F 0 "J?" H 1550 8150 50  0000 C CNN
F 1 "SBBUS" H 1550 7750 50  0000 C CNN
F 2 "" H 1550 6750 50  0001 C CNN
F 3 "" H 1550 6750 50  0001 C CNN
	1    1550 7950
	1    0    0    -1  
$EndComp
$Comp
L USB_A J?
U 1 1 593A6BFE
P 1050 1400
F 0 "J?" H 850 1850 50  0000 L CNN
F 1 "USB_A" H 850 1750 50  0000 L CNN
F 2 "" H 1200 1350 50  0001 C CNN
F 3 "" H 1200 1350 50  0001 C CNN
	1    1050 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 593A6E3B
P 1000 1900
F 0 "#PWR?" H 1000 1650 50  0001 C CNN
F 1 "GND" H 1000 1750 50  0000 C CNN
F 2 "" H 1000 1900 50  0001 C CNN
F 3 "" H 1000 1900 50  0001 C CNN
	1    1000 1900
	1    0    0    -1  
$EndComp
Text GLabel 1700 1500 2    60   BiDi ~ 0
D-
Text GLabel 1950 1400 2    60   BiDi ~ 0
D+
$Comp
L PRTR5V0U2X D?
U 1 1 593A72CC
P 2300 2100
F 0 "D?" H 2300 2300 60  0000 C CNN
F 1 "PRTR5V0U2X" H 2300 1900 60  0000 C CNN
F 2 "" H 2300 2100 60  0001 C CNN
F 3 "" H 2300 2100 60  0001 C CNN
	1    2300 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 593A7459
P 1800 2050
F 0 "#PWR?" H 1800 1800 50  0001 C CNN
F 1 "GND" H 1800 1900 50  0000 C CNN
F 2 "" H 1800 2050 50  0001 C CNN
F 3 "" H 1800 2050 50  0001 C CNN
	1    1800 2050
	0    1    1    0   
$EndComp
Text Notes 1850 850  0    60   ~ 0
USB CONNECTION
Text Notes 1250 7500 0    60   ~ 0
INTERNAL BUS
$Comp
L +3.3V #PWR?
U 1 1 593A8105
P 2750 3150
F 0 "#PWR?" H 2750 3000 50  0001 C CNN
F 1 "+3.3V" H 2750 3290 50  0000 C CNN
F 2 "" H 2750 3150 50  0001 C CNN
F 3 "" H 2750 3150 50  0001 C CNN
	1    2750 3150
	0    1    1    0   
$EndComp
Text Notes 1500 2700 0    60   ~ 0
POWER REGULATOR
$Comp
L GND #PWR?
U 1 1 593A8A25
P 1900 8050
F 0 "#PWR?" H 1900 7800 50  0001 C CNN
F 1 "GND" H 1900 7900 50  0000 C CNN
F 2 "" H 1900 8050 50  0001 C CNN
F 3 "" H 1900 8050 50  0001 C CNN
	1    1900 8050
	1    0    0    -1  
$EndComp
Text GLabel 1950 7950 2    60   BiDi ~ 0
SDA
Text GLabel 1950 7850 2    60   Output ~ 0
SCL
Text GLabel 1150 7950 0    60   Output ~ 0
SENSE_IN
$Comp
L GND #PWR?
U 1 1 593A8EBD
P 8250 7600
F 0 "#PWR?" H 8250 7350 50  0001 C CNN
F 1 "GND" H 8250 7450 50  0000 C CNN
F 2 "" H 8250 7600 50  0001 C CNN
F 3 "" H 8250 7600 50  0001 C CNN
	1    8250 7600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 593A8EDF
P 6550 5250
F 0 "#PWR?" H 6550 5000 50  0001 C CNN
F 1 "GND" H 6550 5100 50  0000 C CNN
F 2 "" H 6550 5250 50  0001 C CNN
F 3 "" H 6550 5250 50  0001 C CNN
	1    6550 5250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 593A8FBE
P 10350 6150
F 0 "#PWR?" H 10350 5900 50  0001 C CNN
F 1 "GND" H 10350 6000 50  0000 C CNN
F 2 "" H 10350 6150 50  0001 C CNN
F 3 "" H 10350 6150 50  0001 C CNN
	1    10350 6150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 593A901F
P 8750 2950
F 0 "#PWR?" H 8750 2700 50  0001 C CNN
F 1 "GND" H 8750 2800 50  0000 C CNN
F 2 "" H 8750 2950 50  0001 C CNN
F 3 "" H 8750 2950 50  0001 C CNN
	1    8750 2950
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 593A942D
P 10350 4750
F 0 "#PWR?" H 10350 4500 50  0001 C CNN
F 1 "GND" H 10350 4600 50  0000 C CNN
F 2 "" H 10350 4750 50  0001 C CNN
F 3 "" H 10350 4750 50  0001 C CNN
	1    10350 4750
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 593A94B3
P 8550 2950
F 0 "#PWR?" H 8550 2800 50  0001 C CNN
F 1 "+3.3V" H 8500 3100 50  0000 C CNN
F 2 "" H 8550 2950 50  0001 C CNN
F 3 "" H 8550 2950 50  0001 C CNN
	1    8550 2950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 593A953D
P 10550 4650
F 0 "#PWR?" H 10550 4500 50  0001 C CNN
F 1 "+3.3V" H 10550 4790 50  0000 C CNN
F 2 "" H 10550 4650 50  0001 C CNN
F 3 "" H 10550 4650 50  0001 C CNN
	1    10550 4650
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 593A9587
P 10550 6050
F 0 "#PWR?" H 10550 5900 50  0001 C CNN
F 1 "+3.3V" H 10550 6190 50  0000 C CNN
F 2 "" H 10550 6050 50  0001 C CNN
F 3 "" H 10550 6050 50  0001 C CNN
	1    10550 6050
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 593A95CD
P 8150 7800
F 0 "#PWR?" H 8150 7650 50  0001 C CNN
F 1 "+3.3V" H 8150 7940 50  0000 C CNN
F 2 "" H 8150 7800 50  0001 C CNN
F 3 "" H 8150 7800 50  0001 C CNN
	1    8150 7800
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 593A9E71
P 5800 5350
F 0 "#PWR?" H 5800 5200 50  0001 C CNN
F 1 "+3.3V" H 5800 5490 50  0000 C CNN
F 2 "" H 5800 5350 50  0001 C CNN
F 3 "" H 5800 5350 50  0001 C CNN
	1    5800 5350
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 593AA361
P 1400 4750
F 0 "C?" H 1425 4850 50  0000 L CNN
F 1 "6.8pF" H 1425 4650 50  0000 L CNN
F 2 "" H 1438 4600 50  0001 C CNN
F 3 "" H 1400 4750 50  0001 C CNN
	1    1400 4750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 593AA3C2
P 2450 4750
F 0 "C?" H 2475 4850 50  0000 L CNN
F 1 "6.8pF" H 2475 4650 50  0000 L CNN
F 2 "" H 2488 4600 50  0001 C CNN
F 3 "" H 2450 4750 50  0001 C CNN
	1    2450 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 593AA54F
P 2050 4950
F 0 "#PWR?" H 2050 4700 50  0001 C CNN
F 1 "GND" H 2050 4800 50  0000 C CNN
F 2 "" H 2050 4950 50  0001 C CNN
F 3 "" H 2050 4950 50  0001 C CNN
	1    2050 4950
	1    0    0    -1  
$EndComp
$Comp
L Crystal_GND2 Y?
U 1 1 593AA73E
P 2050 4550
F 0 "Y?" H 2050 4775 50  0000 C CNN
F 1 "32.768kHz" H 2050 4700 50  0000 C CNN
F 2 "" H 2050 4550 50  0001 C CNN
F 3 "" H 2050 4550 50  0001 C CNN
	1    2050 4550
	1    0    0    -1  
$EndComp
Text Notes 1700 4200 0    60   ~ 0
32kHz CRYSTAL
Text GLabel 1150 8050 0    60   Input ~ 0
SENSE_OUT
Text GLabel 9150 7450 3    60   Input ~ 0
USB_VBUS
$Comp
L SW_SPST SW?
U 1 1 593ABE7C
P 2300 6350
F 0 "SW?" H 2300 6475 50  0000 C CNN
F 1 "SW_SPST" H 2300 6250 50  0000 C CNN
F 2 "" H 2300 6350 50  0001 C CNN
F 3 "" H 2300 6350 50  0001 C CNN
	1    2300 6350
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 593AC23E
P 1250 6350
F 0 "R?" V 1330 6350 50  0000 C CNN
F 1 "100k" V 1250 6350 50  0000 C CNN
F 2 "" V 1180 6350 50  0001 C CNN
F 3 "" H 1250 6350 50  0001 C CNN
	1    1250 6350
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 593AC981
P 1750 6350
F 0 "R?" V 1830 6350 50  0000 C CNN
F 1 "39R" V 1750 6350 50  0000 C CNN
F 2 "" V 1680 6350 50  0001 C CNN
F 3 "" H 1750 6350 50  0001 C CNN
	1    1750 6350
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 593ACA65
P 2200 6800
F 0 "C?" V 2350 6800 50  0000 L CNN
F 1 "100nF" V 2050 6700 50  0000 L CNN
F 2 "" H 2238 6650 50  0001 C CNN
F 3 "" H 2200 6800 50  0001 C CNN
	1    2200 6800
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 593ACC32
P 950 6350
F 0 "#PWR?" H 950 6200 50  0001 C CNN
F 1 "+3.3V" H 950 6490 50  0000 C CNN
F 2 "" H 950 6350 50  0001 C CNN
F 3 "" H 950 6350 50  0001 C CNN
	1    950  6350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 593ACEF3
P 2650 6350
F 0 "#PWR?" H 2650 6100 50  0001 C CNN
F 1 "GND" H 2650 6200 50  0000 C CNN
F 2 "" H 2650 6350 50  0001 C CNN
F 3 "" H 2650 6350 50  0001 C CNN
	1    2650 6350
	0    -1   -1   0   
$EndComp
Text GLabel 1500 5800 1    60   Output ~ 0
RESET
Text Notes 2000 5600 0    60   ~ 0
RESET
$Comp
L Jumper_NC_Small JP?
U 1 1 593AECBC
P 1700 4550
F 0 "JP?" H 1700 4630 50  0000 C CNN
F 1 "JMP" H 1710 4490 50  0000 C CNN
F 2 "" H 1700 4550 50  0001 C CNN
F 3 "" H 1700 4550 50  0001 C CNN
	1    1700 4550
	1    0    0    -1  
$EndComp
Text GLabel 1150 4550 0    60   BiDi ~ 0
XOUT
Text GLabel 2700 4550 2    60   BiDi ~ 0
XIN
Text GLabel 6400 4650 0    60   BiDi ~ 0
XIN
Text GLabel 6400 4750 0    60   BiDi ~ 0
XOUT
Text GLabel 8950 3050 1    60   Input ~ 0
RESET
$Comp
L R R?
U 1 1 593B153B
P 950 9850
F 0 "R?" V 1030 9850 50  0000 C CNN
F 1 "4.7K" V 950 9850 50  0000 C CNN
F 2 "" V 880 9850 50  0001 C CNN
F 3 "" H 950 9850 50  0001 C CNN
	1    950  9850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 593B1580
P 1250 9850
F 0 "R?" V 1330 9850 50  0000 C CNN
F 1 "4.7K" V 1250 9850 50  0000 C CNN
F 2 "" V 1180 9850 50  0001 C CNN
F 3 "" H 1250 9850 50  0001 C CNN
	1    1250 9850
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 593B15BB
P 1100 9550
F 0 "#PWR?" H 1100 9400 50  0001 C CNN
F 1 "+3.3V" H 1100 9690 50  0000 C CNN
F 2 "" H 1100 9550 50  0001 C CNN
F 3 "" H 1100 9550 50  0001 C CNN
	1    1100 9550
	1    0    0    -1  
$EndComp
Text GLabel 950  10150 3    60   BiDi ~ 0
SDA
Text GLabel 1250 10150 3    60   Input ~ 0
SCL
Text Notes 800  9200 0    60   ~ 0
I2C PULL-UP
Text GLabel 7850 7400 3    60   Input ~ 0
SCL
Text GLabel 7750 7400 3    60   BiDi ~ 0
SDA
Text GLabel 1300 6050 0    60   Input ~ 0
EX_RESET
Wire Wire Line
	1250 3600 2550 3600
Connection ~ 1900 3600
Wire Wire Line
	1900 3450 1900 3600
Wire Wire Line
	950  1800 950  1900
Wire Wire Line
	950  1900 1050 1900
Wire Wire Line
	1050 1900 1050 1800
Connection ~ 1000 1900
Wire Wire Line
	1350 1400 1950 1400
Wire Wire Line
	1900 2150 1400 2150
Wire Wire Line
	1400 2150 1400 1400
Connection ~ 1400 1400
Wire Wire Line
	2700 2050 2700 1800
Wire Wire Line
	2700 1800 1450 1800
Wire Wire Line
	1450 1800 1450 1500
Connection ~ 1450 1500
Wire Wire Line
	1800 2050 1900 2050
Wire Wire Line
	2850 2150 2700 2150
Wire Wire Line
	1250 3200 1250 3150
Wire Wire Line
	1250 3500 1250 3600
Wire Wire Line
	2550 3600 2550 3500
Wire Wire Line
	2550 3150 2550 3200
Connection ~ 2550 3150
Connection ~ 1250 3150
Wire Wire Line
	1900 8050 1800 8050
Wire Wire Line
	1300 7850 1200 7850
Wire Wire Line
	1950 7950 1800 7950
Wire Wire Line
	1150 7950 1300 7950
Wire Wire Line
	8750 2950 8750 4150
Wire Wire Line
	10350 6150 9650 6150
Wire Wire Line
	10350 4750 9650 4750
Wire Wire Line
	8550 2950 8550 4150
Wire Wire Line
	10550 4650 9650 4650
Wire Wire Line
	10550 6050 9650 6050
Wire Wire Line
	2200 4550 2700 4550
Wire Wire Line
	1400 4950 2450 4950
Connection ~ 2050 4950
Wire Wire Line
	2450 4950 2450 4900
Wire Wire Line
	2450 4550 2450 4600
Wire Wire Line
	2050 4750 2050 4950
Wire Wire Line
	2850 2150 2850 1200
Connection ~ 2850 1200
Wire Wire Line
	1700 1500 1350 1500
Wire Wire Line
	9150 6600 9150 7450
Wire Wire Line
	950  6350 1100 6350
Wire Wire Line
	1400 6350 1600 6350
Wire Wire Line
	2100 6350 1900 6350
Wire Wire Line
	2650 6350 2500 6350
Wire Wire Line
	1500 5800 1500 6800
Wire Wire Line
	1500 6800 2050 6800
Connection ~ 1500 6350
Wire Wire Line
	2350 6800 2600 6800
Wire Wire Line
	2600 6800 2600 6350
Connection ~ 2600 6350
Wire Wire Line
	1800 4550 1900 4550
Wire Wire Line
	1150 4550 1600 4550
Wire Wire Line
	1400 4550 1400 4600
Wire Wire Line
	1400 4950 1400 4900
Connection ~ 1400 4550
Connection ~ 2450 4550
Wire Wire Line
	8950 3050 8950 4150
Wire Wire Line
	950  9700 950  9550
Wire Wire Line
	950  9550 1250 9550
Wire Wire Line
	1250 9550 1250 9700
Connection ~ 1100 9550
Wire Wire Line
	950  10150 950  10000
Wire Wire Line
	1250 10150 1250 10000
Wire Wire Line
	1300 6050 1500 6050
Connection ~ 1500 6050
Text Notes 2800 7550 0    60   ~ 0
CORTEX DEBUG
Text GLabel 3400 7900 2    60   Output ~ 0
SWDCLK
$Comp
L C C?
U 1 1 593B7940
P 8650 2350
F 0 "C?" H 8700 2250 50  0000 L CNN
F 1 "100nF" H 8650 2450 50  0000 L CNN
F 2 "" H 8688 2200 50  0001 C CNN
F 3 "" H 8650 2350 50  0001 C CNN
	1    8650 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 593B7E67
P 8650 2100
F 0 "#PWR?" H 8650 1850 50  0001 C CNN
F 1 "GND" H 8650 1950 50  0000 C CNN
F 2 "" H 8650 2100 50  0001 C CNN
F 3 "" H 8650 2100 50  0001 C CNN
	1    8650 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	8650 2200 8650 2100
$Comp
L CONN_02X05 J?
U 1 1 593D8846
P 3000 8000
F 0 "J?" H 3000 8300 50  0000 C CNN
F 1 "CONN_02X05" H 3000 7700 50  0000 C CNN
F 2 "" H 3000 6800 50  0001 C CNN
F 3 "" H 3000 6800 50  0001 C CNN
	1    3000 8000
	1    0    0    -1  
$EndComp
Text GLabel 1700 5950 2    60   Input ~ 0
SWDRESET
Wire Wire Line
	1700 5950 1500 5950
Connection ~ 1500 5950
$Comp
L +3.3V #PWR?
U 1 1 593DA317
P 2600 7800
F 0 "#PWR?" H 2600 7650 50  0001 C CNN
F 1 "+3.3V" H 2600 7940 50  0000 C CNN
F 2 "" H 2600 7800 50  0001 C CNN
F 3 "" H 2600 7800 50  0001 C CNN
	1    2600 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 7800 2600 7800
$Comp
L GND #PWR?
U 1 1 593DA3C7
P 2600 8200
F 0 "#PWR?" H 2600 7950 50  0001 C CNN
F 1 "GND" H 2600 8050 50  0000 C CNN
F 2 "" H 2600 8200 50  0001 C CNN
F 3 "" H 2600 8200 50  0001 C CNN
	1    2600 8200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 8000 2600 8000
Wire Wire Line
	2600 7900 2600 8200
Wire Wire Line
	2750 7900 2600 7900
Connection ~ 2600 8000
Text GLabel 3400 8200 2    60   Output ~ 0
SWDRST
Text GLabel 3400 7800 2    60   BiDi ~ 0
SWDIO
Wire Wire Line
	3400 8200 3250 8200
Wire Wire Line
	3400 7900 3250 7900
Wire Wire Line
	3400 7800 3250 7800
$Comp
L Ferrite_Bead_Small L?
U 1 1 593DB95C
P 6000 5350
F 0 "L?" V 6050 5450 50  0000 L CNN
F 1 "FeBead" V 6150 5150 50  0000 L CNN
F 2 "" V 5930 5350 50  0001 C CNN
F 3 "" H 6000 5350 50  0001 C CNN
	1    6000 5350
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 593DBF93
P 6300 5500
F 0 "C?" H 6325 5600 50  0000 L CNN
F 1 "100nF" H 6325 5400 50  0000 L CNN
F 2 "" H 6338 5350 50  0001 C CNN
F 3 "" H 6300 5500 50  0001 C CNN
	1    6300 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5350 5800 5350
Connection ~ 6300 5350
$Comp
L GND #PWR?
U 1 1 593DC1E4
P 6300 5750
F 0 "#PWR?" H 6300 5500 50  0001 C CNN
F 1 "GND" H 6300 5600 50  0000 C CNN
F 2 "" H 6300 5750 50  0001 C CNN
F 3 "" H 6300 5750 50  0001 C CNN
	1    6300 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5750 6300 5650
$Comp
L +3.3V #PWR?
U 1 1 593DEF16
P 2500 9600
F 0 "#PWR?" H 2500 9450 50  0001 C CNN
F 1 "+3.3V" H 2500 9740 50  0000 C CNN
F 2 "" H 2500 9600 50  0001 C CNN
F 3 "" H 2500 9600 50  0001 C CNN
	1    2500 9600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 593DEF58
P 2500 9850
F 0 "C?" H 2525 9950 50  0000 L CNN
F 1 "100nF" H 2525 9750 50  0000 L CNN
F 2 "" H 2538 9700 50  0001 C CNN
F 3 "" H 2500 9850 50  0001 C CNN
	1    2500 9850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 593DEFA3
P 2500 10100
F 0 "#PWR?" H 2500 9850 50  0001 C CNN
F 1 "GND" H 2500 9950 50  0000 C CNN
F 2 "" H 2500 10100 50  0001 C CNN
F 3 "" H 2500 10100 50  0001 C CNN
	1    2500 10100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 9600 2500 9700
Wire Wire Line
	2500 10100 2500 10000
$Comp
L +3.3V #PWR?
U 1 1 593DF4E7
P 2200 9600
F 0 "#PWR?" H 2200 9450 50  0001 C CNN
F 1 "+3.3V" H 2200 9740 50  0000 C CNN
F 2 "" H 2200 9600 50  0001 C CNN
F 3 "" H 2200 9600 50  0001 C CNN
	1    2200 9600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 593DF4ED
P 2200 9850
F 0 "C?" H 2225 9950 50  0000 L CNN
F 1 "100nF" H 2225 9750 50  0000 L CNN
F 2 "" H 2238 9700 50  0001 C CNN
F 3 "" H 2200 9850 50  0001 C CNN
	1    2200 9850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 593DF4F3
P 2200 10100
F 0 "#PWR?" H 2200 9850 50  0001 C CNN
F 1 "GND" H 2200 9950 50  0000 C CNN
F 2 "" H 2200 10100 50  0001 C CNN
F 3 "" H 2200 10100 50  0001 C CNN
	1    2200 10100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 9600 2200 9700
Wire Wire Line
	2200 10100 2200 10000
$Comp
L +3.3V #PWR?
U 1 1 593DF5AB
P 3100 9600
F 0 "#PWR?" H 3100 9450 50  0001 C CNN
F 1 "+3.3V" H 3100 9740 50  0000 C CNN
F 2 "" H 3100 9600 50  0001 C CNN
F 3 "" H 3100 9600 50  0001 C CNN
	1    3100 9600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 593DF5B1
P 3100 9850
F 0 "C?" H 3125 9950 50  0000 L CNN
F 1 "100nF" H 3125 9750 50  0000 L CNN
F 2 "" H 3138 9700 50  0001 C CNN
F 3 "" H 3100 9850 50  0001 C CNN
	1    3100 9850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 593DF5B7
P 3100 10100
F 0 "#PWR?" H 3100 9850 50  0001 C CNN
F 1 "GND" H 3100 9950 50  0000 C CNN
F 2 "" H 3100 10100 50  0001 C CNN
F 3 "" H 3100 10100 50  0001 C CNN
	1    3100 10100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 9600 3100 9700
Wire Wire Line
	3100 10100 3100 10000
$Comp
L +3.3V #PWR?
U 1 1 593DF5BF
P 2800 9600
F 0 "#PWR?" H 2800 9450 50  0001 C CNN
F 1 "+3.3V" H 2800 9740 50  0000 C CNN
F 2 "" H 2800 9600 50  0001 C CNN
F 3 "" H 2800 9600 50  0001 C CNN
	1    2800 9600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 593DF5C5
P 2800 9850
F 0 "C?" H 2825 9950 50  0000 L CNN
F 1 "100nF" H 2825 9750 50  0000 L CNN
F 2 "" H 2838 9700 50  0001 C CNN
F 3 "" H 2800 9850 50  0001 C CNN
	1    2800 9850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 593DF5CB
P 2800 10100
F 0 "#PWR?" H 2800 9850 50  0001 C CNN
F 1 "GND" H 2800 9950 50  0000 C CNN
F 2 "" H 2800 10100 50  0001 C CNN
F 3 "" H 2800 10100 50  0001 C CNN
	1    2800 10100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 9600 2800 9700
Wire Wire Line
	2800 10100 2800 10000
Text Notes 2050 9200 0    60   ~ 0
DECOUPLING CAPACITORS
$Comp
L +5V #PWR?
U 1 1 593E68C4
P 1100 3150
F 0 "#PWR?" H 1100 3000 50  0001 C CNN
F 1 "+5V" H 1100 3290 50  0000 C CNN
F 2 "" H 1100 3150 50  0001 C CNN
F 3 "" H 1100 3150 50  0001 C CNN
	1    1100 3150
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 593E7435
P 1200 7850
F 0 "#PWR?" H 1200 7700 50  0001 C CNN
F 1 "+5V" H 1200 7990 50  0000 C CNN
F 2 "" H 1200 7850 50  0001 C CNN
F 3 "" H 1200 7850 50  0001 C CNN
	1    1200 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3150 1500 3150
Wire Wire Line
	2750 3150 2300 3150
Wire Wire Line
	1350 1200 3150 1200
$Comp
L C C?
U 1 1 593EAD54
P 1500 1000
F 0 "C?" H 1525 1100 50  0000 L CNN
F 1 "100nF" H 1525 900 50  0000 L CNN
F 2 "" H 1538 850 50  0001 C CNN
F 3 "" H 1500 1000 50  0001 C CNN
	1    1500 1000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 593EB099
P 1500 750
F 0 "#PWR?" H 1500 500 50  0001 C CNN
F 1 "GND" H 1500 600 50  0000 C CNN
F 2 "" H 1500 750 50  0001 C CNN
F 3 "" H 1500 750 50  0001 C CNN
	1    1500 750 
	-1   0    0    1   
$EndComp
Wire Wire Line
	1500 750  1500 850 
Wire Wire Line
	1500 1150 1500 1200
Connection ~ 1500 1200
$Comp
L +5V #PWR?
U 1 1 593EBFDF
P 3150 1200
F 0 "#PWR?" H 3150 1050 50  0001 C CNN
F 1 "+5V" H 3150 1340 50  0000 C CNN
F 2 "" H 3150 1200 50  0001 C CNN
F 3 "" H 3150 1200 50  0001 C CNN
	1    3150 1200
	0    1    1    0   
$EndComp
$Comp
L LED_Small D?
U 1 1 593EC480
P 4150 9900
F 0 "D?" H 4100 10025 50  0000 L CNN
F 1 "LED G" H 3975 9800 50  0000 L CNN
F 2 "" V 4150 9900 50  0001 C CNN
F 3 "" V 4150 9900 50  0001 C CNN
	1    4150 9900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 593ECB5A
P 4150 10100
F 0 "#PWR?" H 4150 9850 50  0001 C CNN
F 1 "GND" H 4150 9950 50  0000 C CNN
F 2 "" H 4150 10100 50  0001 C CNN
F 3 "" H 4150 10100 50  0001 C CNN
	1    4150 10100
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 593ECB9D
P 4150 9550
F 0 "R?" V 4230 9550 50  0000 C CNN
F 1 "330R" V 4150 9550 50  0000 C CNN
F 2 "" V 4080 9550 50  0001 C CNN
F 3 "" H 4150 9550 50  0001 C CNN
	1    4150 9550
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 593ECCB9
P 4150 9300
F 0 "#PWR?" H 4150 9150 50  0001 C CNN
F 1 "+3.3V" H 4150 9440 50  0000 C CNN
F 2 "" H 4150 9300 50  0001 C CNN
F 3 "" H 4150 9300 50  0001 C CNN
	1    4150 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 10100 4150 10000
Wire Wire Line
	4150 9800 4150 9700
Wire Wire Line
	4150 9400 4150 9300
Text Notes 3950 9000 0    60   ~ 0
POWER / DBG LEDS
$Comp
L LED_Small D?
U 1 1 593ED79F
P 4600 9900
F 0 "D?" H 4550 10025 50  0000 L CNN
F 1 "LED G" H 4425 9800 50  0000 L CNN
F 2 "" V 4600 9900 50  0001 C CNN
F 3 "" V 4600 9900 50  0001 C CNN
	1    4600 9900
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 593ED7A5
P 4600 9550
F 0 "R?" V 4680 9550 50  0000 C CNN
F 1 "330R" V 4600 9550 50  0000 C CNN
F 2 "" V 4530 9550 50  0001 C CNN
F 3 "" H 4600 9550 50  0001 C CNN
	1    4600 9550
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 593ED7AB
P 4600 9300
F 0 "#PWR?" H 4600 9150 50  0001 C CNN
F 1 "+3.3V" H 4600 9440 50  0000 C CNN
F 2 "" H 4600 9300 50  0001 C CNN
F 3 "" H 4600 9300 50  0001 C CNN
	1    4600 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 9800 4600 9700
Wire Wire Line
	4600 9400 4600 9300
Text GLabel 4600 10150 3    60   Input ~ 0
DBGLED
Wire Wire Line
	4600 10150 4600 10000
Text Notes 13400 900  0    60   ~ 0
PRESSURE SENSOR CONNECTORS
$Comp
L CONN_02X08 J?
U 1 1 593F9C7C
P 14850 2350
F 0 "J?" H 14850 2800 50  0000 C CNN
F 1 "CONN_02X08" V 14850 2350 50  0000 C CNN
F 2 "" H 14850 1150 50  0001 C CNN
F 3 "" H 14850 1150 50  0001 C CNN
	1    14850 2350
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 593FB5BF
P 13350 2000
F 0 "R?" V 13300 1800 50  0000 C CNN
F 1 "10K" V 13350 2000 50  0000 C CNN
F 2 "" V 13280 2000 50  0001 C CNN
F 3 "" H 13350 2000 50  0001 C CNN
	1    13350 2000
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 593FB6EC
P 12900 2000
F 0 "#PWR?" H 12900 1850 50  0001 C CNN
F 1 "+3.3V" H 12900 2140 50  0000 C CNN
F 2 "" H 12900 2000 50  0001 C CNN
F 3 "" H 12900 2000 50  0001 C CNN
	1    12900 2000
	0    -1   -1   0   
$EndComp
Text GLabel 13700 1750 1    60   Output ~ 0
FSR0
Text GLabel 13800 1750 1    60   Output ~ 0
FSR1
Text GLabel 13900 1750 1    60   Output ~ 0
FSR2
Text GLabel 14000 1750 1    60   Output ~ 0
FSR3
Text GLabel 14100 1750 1    60   Output ~ 0
FSR4
Text GLabel 14200 1750 1    60   Output ~ 0
FSR5
Text GLabel 14300 1750 1    60   Output ~ 0
FSR6
Text GLabel 14400 1750 1    60   Output ~ 0
FSR7
$Comp
L R R?
U 1 1 593FD04D
P 13350 2100
F 0 "R?" V 13300 1900 50  0000 C CNN
F 1 "10K" V 13350 2100 50  0000 C CNN
F 2 "" V 13280 2100 50  0001 C CNN
F 3 "" H 13350 2100 50  0001 C CNN
	1    13350 2100
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 593FD215
P 13350 2200
F 0 "R?" V 13300 2000 50  0000 C CNN
F 1 "10K" V 13350 2200 50  0000 C CNN
F 2 "" V 13280 2200 50  0001 C CNN
F 3 "" H 13350 2200 50  0001 C CNN
	1    13350 2200
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 593FD21B
P 13350 2300
F 0 "R?" V 13300 2100 50  0000 C CNN
F 1 "10K" V 13350 2300 50  0000 C CNN
F 2 "" V 13280 2300 50  0001 C CNN
F 3 "" H 13350 2300 50  0001 C CNN
	1    13350 2300
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 593FD3E9
P 13350 2400
F 0 "R?" V 13300 2200 50  0000 C CNN
F 1 "10K" V 13350 2400 50  0000 C CNN
F 2 "" V 13280 2400 50  0001 C CNN
F 3 "" H 13350 2400 50  0001 C CNN
	1    13350 2400
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 593FD3EF
P 13350 2500
F 0 "R?" V 13300 2300 50  0000 C CNN
F 1 "10K" V 13350 2500 50  0000 C CNN
F 2 "" V 13280 2500 50  0001 C CNN
F 3 "" H 13350 2500 50  0001 C CNN
	1    13350 2500
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 593FD3F5
P 13350 2600
F 0 "R?" V 13300 2400 50  0000 C CNN
F 1 "10K" V 13350 2600 50  0000 C CNN
F 2 "" V 13280 2600 50  0001 C CNN
F 3 "" H 13350 2600 50  0001 C CNN
	1    13350 2600
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 593FD3FB
P 13350 2700
F 0 "R?" V 13300 2500 50  0000 C CNN
F 1 "10K" V 13350 2700 50  0000 C CNN
F 2 "" V 13280 2700 50  0001 C CNN
F 3 "" H 13350 2700 50  0001 C CNN
	1    13350 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	13000 2700 13200 2700
Wire Wire Line
	12900 2000 13200 2000
Wire Wire Line
	13200 2100 13000 2100
Connection ~ 13000 2100
Wire Wire Line
	13200 2200 13000 2200
Connection ~ 13000 2200
Wire Wire Line
	13200 2300 13000 2300
Connection ~ 13000 2300
Wire Wire Line
	13200 2400 13000 2400
Connection ~ 13000 2400
Wire Wire Line
	13200 2500 13000 2500
Connection ~ 13000 2500
Wire Wire Line
	13200 2600 13000 2600
Connection ~ 13000 2600
Wire Wire Line
	13000 2000 13000 2700
Connection ~ 13000 2000
Wire Wire Line
	13500 2000 14600 2000
Wire Wire Line
	13500 2100 14600 2100
Wire Wire Line
	13500 2200 14600 2200
Wire Wire Line
	13500 2300 14600 2300
Wire Wire Line
	13500 2400 14600 2400
Wire Wire Line
	13500 2500 14600 2500
Wire Wire Line
	13500 2600 14600 2600
Wire Wire Line
	13500 2700 14600 2700
Wire Wire Line
	13700 1750 13700 2000
Connection ~ 13700 2000
Wire Wire Line
	13800 1750 13800 2100
Connection ~ 13800 2100
Wire Wire Line
	13900 1750 13900 2200
Connection ~ 13900 2200
Wire Wire Line
	14000 1750 14000 2300
Connection ~ 14000 2300
Wire Wire Line
	14100 1750 14100 2400
Connection ~ 14100 2400
Wire Wire Line
	14200 1750 14200 2500
Connection ~ 14200 2500
Wire Wire Line
	14300 1750 14300 2600
Connection ~ 14300 2600
Wire Wire Line
	14400 1750 14400 2700
Connection ~ 14400 2700
$Comp
L GND #PWR?
U 1 1 59400B76
P 15450 2000
F 0 "#PWR?" H 15450 1750 50  0001 C CNN
F 1 "GND" H 15450 1850 50  0000 C CNN
F 2 "" H 15450 2000 50  0001 C CNN
F 3 "" H 15450 2000 50  0001 C CNN
	1    15450 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	15100 2000 15450 2000
Wire Wire Line
	15100 2100 15350 2100
Wire Wire Line
	15350 2000 15350 2700
Connection ~ 15350 2000
Wire Wire Line
	15350 2200 15100 2200
Connection ~ 15350 2100
Wire Wire Line
	15350 2300 15100 2300
Connection ~ 15350 2200
Wire Wire Line
	15350 2400 15100 2400
Connection ~ 15350 2300
Wire Wire Line
	15350 2500 15100 2500
Connection ~ 15350 2400
Wire Wire Line
	15350 2600 15100 2600
Connection ~ 15350 2500
Wire Wire Line
	15350 2700 15100 2700
Connection ~ 15350 2600
$Comp
L CONN_02X08 J?
U 1 1 594016DD
P 14850 4350
F 0 "J?" H 14850 4800 50  0000 C CNN
F 1 "CONN_02X08" V 14850 4350 50  0000 C CNN
F 2 "" H 14850 3150 50  0001 C CNN
F 3 "" H 14850 3150 50  0001 C CNN
	1    14850 4350
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 594016E3
P 13350 4000
F 0 "R?" V 13300 3800 50  0000 C CNN
F 1 "10K" V 13350 4000 50  0000 C CNN
F 2 "" V 13280 4000 50  0001 C CNN
F 3 "" H 13350 4000 50  0001 C CNN
	1    13350 4000
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 594016E9
P 12900 4000
F 0 "#PWR?" H 12900 3850 50  0001 C CNN
F 1 "+3.3V" H 12900 4140 50  0000 C CNN
F 2 "" H 12900 4000 50  0001 C CNN
F 3 "" H 12900 4000 50  0001 C CNN
	1    12900 4000
	0    -1   -1   0   
$EndComp
Text GLabel 13800 3750 1    60   Output ~ 0
FSR9
Text GLabel 13900 3750 1    60   Output ~ 0
FSR10
Text GLabel 14000 3750 1    60   Output ~ 0
FSR11
Text GLabel 14100 3750 1    60   Output ~ 0
FSR12
Text GLabel 14200 3750 1    60   Output ~ 0
FSR13
Text GLabel 14300 3750 1    60   Output ~ 0
FSR14
Text GLabel 14400 3750 1    60   Output ~ 0
FSR15
Text GLabel 13700 3750 1    60   Output ~ 0
FSR8
$Comp
L R R?
U 1 1 594016F7
P 13350 4100
F 0 "R?" V 13300 3900 50  0000 C CNN
F 1 "10K" V 13350 4100 50  0000 C CNN
F 2 "" V 13280 4100 50  0001 C CNN
F 3 "" H 13350 4100 50  0001 C CNN
	1    13350 4100
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 594016FD
P 13350 4200
F 0 "R?" V 13300 4000 50  0000 C CNN
F 1 "10K" V 13350 4200 50  0000 C CNN
F 2 "" V 13280 4200 50  0001 C CNN
F 3 "" H 13350 4200 50  0001 C CNN
	1    13350 4200
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 59401703
P 13350 4300
F 0 "R?" V 13300 4100 50  0000 C CNN
F 1 "10K" V 13350 4300 50  0000 C CNN
F 2 "" V 13280 4300 50  0001 C CNN
F 3 "" H 13350 4300 50  0001 C CNN
	1    13350 4300
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 59401709
P 13350 4400
F 0 "R?" V 13300 4200 50  0000 C CNN
F 1 "10K" V 13350 4400 50  0000 C CNN
F 2 "" V 13280 4400 50  0001 C CNN
F 3 "" H 13350 4400 50  0001 C CNN
	1    13350 4400
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5940170F
P 13350 4500
F 0 "R?" V 13300 4300 50  0000 C CNN
F 1 "10K" V 13350 4500 50  0000 C CNN
F 2 "" V 13280 4500 50  0001 C CNN
F 3 "" H 13350 4500 50  0001 C CNN
	1    13350 4500
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 59401715
P 13350 4600
F 0 "R?" V 13300 4400 50  0000 C CNN
F 1 "10K" V 13350 4600 50  0000 C CNN
F 2 "" V 13280 4600 50  0001 C CNN
F 3 "" H 13350 4600 50  0001 C CNN
	1    13350 4600
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5940171B
P 13350 4700
F 0 "R?" V 13300 4500 50  0000 C CNN
F 1 "10K" V 13350 4700 50  0000 C CNN
F 2 "" V 13280 4700 50  0001 C CNN
F 3 "" H 13350 4700 50  0001 C CNN
	1    13350 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	13000 4700 13200 4700
Wire Wire Line
	12900 4000 13200 4000
Wire Wire Line
	13200 4100 13000 4100
Connection ~ 13000 4100
Wire Wire Line
	13200 4200 13000 4200
Connection ~ 13000 4200
Wire Wire Line
	13200 4300 13000 4300
Connection ~ 13000 4300
Wire Wire Line
	13200 4400 13000 4400
Connection ~ 13000 4400
Wire Wire Line
	13200 4500 13000 4500
Connection ~ 13000 4500
Wire Wire Line
	13200 4600 13000 4600
Connection ~ 13000 4600
Wire Wire Line
	13000 4000 13000 4700
Connection ~ 13000 4000
Wire Wire Line
	13500 4000 14600 4000
Wire Wire Line
	13500 4100 14600 4100
Wire Wire Line
	13500 4200 14600 4200
Wire Wire Line
	13500 4300 14600 4300
Wire Wire Line
	13500 4400 14600 4400
Wire Wire Line
	13500 4500 14600 4500
Wire Wire Line
	13500 4600 14600 4600
Wire Wire Line
	13500 4700 14600 4700
Wire Wire Line
	13700 3750 13700 4000
Connection ~ 13700 4000
Wire Wire Line
	13800 3750 13800 4100
Connection ~ 13800 4100
Wire Wire Line
	13900 3750 13900 4200
Connection ~ 13900 4200
Wire Wire Line
	14000 3750 14000 4300
Connection ~ 14000 4300
Wire Wire Line
	14100 3750 14100 4400
Connection ~ 14100 4400
Wire Wire Line
	14200 3750 14200 4500
Connection ~ 14200 4500
Wire Wire Line
	14300 3750 14300 4600
Connection ~ 14300 4600
Wire Wire Line
	14400 3750 14400 4700
Connection ~ 14400 4700
$Comp
L GND #PWR?
U 1 1 59401749
P 15450 4000
F 0 "#PWR?" H 15450 3750 50  0001 C CNN
F 1 "GND" H 15450 3850 50  0000 C CNN
F 2 "" H 15450 4000 50  0001 C CNN
F 3 "" H 15450 4000 50  0001 C CNN
	1    15450 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	15100 4000 15450 4000
Wire Wire Line
	15100 4100 15350 4100
Wire Wire Line
	15350 4000 15350 4700
Connection ~ 15350 4000
Wire Wire Line
	15350 4200 15100 4200
Connection ~ 15350 4100
Wire Wire Line
	15350 4300 15100 4300
Connection ~ 15350 4200
Wire Wire Line
	15350 4400 15100 4400
Connection ~ 15350 4300
Wire Wire Line
	15350 4500 15100 4500
Connection ~ 15350 4400
Wire Wire Line
	15350 4600 15100 4600
Connection ~ 15350 4500
Wire Wire Line
	15350 4700 15100 4700
Connection ~ 15350 4600
Text GLabel 7950 3950 1    60   Input ~ 0
FSR9
Text GLabel 7850 3950 1    60   Input ~ 0
FSR10
Text GLabel 7750 3950 1    60   Input ~ 0
FSR11
Text GLabel 7000 5050 0    60   Input ~ 0
FSR12
Text GLabel 7000 5150 0    60   Input ~ 0
FSR13
Text GLabel 7000 5450 0    60   Input ~ 0
FSR14
Text GLabel 7000 5550 0    60   Input ~ 0
FSR15
Text GLabel 8050 3950 1    60   Input ~ 0
FSR8
Text GLabel 7000 4850 0    60   Input ~ 0
FSR0
Text GLabel 7000 4950 0    60   Input ~ 0
FSR1
Text GLabel 7000 5650 0    60   Input ~ 0
FSR2
Text GLabel 7000 5750 0    60   Input ~ 0
FSR3
Text GLabel 7000 5850 0    60   Input ~ 0
FSR4
Text GLabel 7000 5950 0    60   Input ~ 0
FSR5
Text GLabel 7000 6050 0    60   Input ~ 0
FSR6
Text GLabel 7000 6150 0    60   Input ~ 0
FSR7
Wire Wire Line
	6550 5250 7250 5250
Wire Wire Line
	6400 4750 7250 4750
Wire Wire Line
	7250 4650 6400 4650
Wire Wire Line
	7000 4850 7250 4850
Wire Wire Line
	7000 4950 7250 4950
Wire Wire Line
	7000 5650 7250 5650
Wire Wire Line
	7250 5350 6100 5350
Wire Wire Line
	7250 5750 7000 5750
Wire Wire Line
	7250 5850 7000 5850
Wire Wire Line
	7250 5950 7000 5950
Wire Wire Line
	7250 6050 7000 6050
Wire Wire Line
	7250 6150 7000 6150
Text GLabel 8250 3050 1    60   Output ~ 0
DBGLED
Wire Wire Line
	8250 3050 8250 4150
Wire Wire Line
	7000 5550 7250 5550
Wire Wire Line
	7250 5450 7000 5450
Wire Wire Line
	7000 5150 7250 5150
Wire Wire Line
	7000 5050 7250 5050
Wire Wire Line
	7750 3950 7750 4150
Wire Wire Line
	7850 3950 7850 4150
Wire Wire Line
	7950 3950 7950 4150
Wire Wire Line
	8050 3950 8050 4150
Wire Wire Line
	8150 7800 8150 6600
Wire Wire Line
	8250 7600 8250 6600
Wire Wire Line
	7750 7400 7750 6600
Wire Wire Line
	7850 7400 7850 6600
Wire Wire Line
	1950 7850 1800 7850
Wire Wire Line
	1150 8050 1300 8050
Text GLabel 8450 3650 1    60   Output ~ 0
SWDCLK
Text GLabel 8350 3650 1    60   BiDi ~ 0
SWDIO
Wire Wire Line
	8350 3650 8350 4150
Wire Wire Line
	8450 3650 8450 4150
Wire Wire Line
	8650 2500 8650 4150
Text GLabel 8850 3650 1    60   Input ~ 0
SENSE_IN
Wire Wire Line
	8850 3650 8850 4150
Text GLabel 9050 3650 1    60   Output ~ 0
SENSE_OUT
Wire Wire Line
	9050 4150 9050 3650
$EndSCHEMATC
