EESchema Schematic File Version 2
LIBS:smartbed-rescue
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
L LD1117S33CTR U1
U 1 1 593A671E
P 1900 3200
F 0 "U1" H 1900 3500 50  0000 C CNN
F 1 "LD1117S33CTR" H 1900 3400 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 1900 3300 50  0001 C CNN
F 3 "" H 1900 3200 50  0001 C CNN
	1    1900 3200
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 593A6847
P 2550 3350
F 0 "C8" H 2575 3450 50  0000 L CNN
F 1 "10uF" H 2575 3250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2588 3200 50  0001 C CNN
F 3 "" H 2550 3350 50  0001 C CNN
	1    2550 3350
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 593A68C8
P 1250 3350
F 0 "C1" H 1275 3450 50  0000 L CNN
F 1 "100nF" H 1275 3250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1288 3200 50  0001 C CNN
F 3 "" H 1250 3350 50  0001 C CNN
	1    1250 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 593A68F3
P 1900 3600
F 0 "#PWR01" H 1900 3350 50  0001 C CNN
F 1 "GND" H 1900 3450 50  0000 C CNN
F 2 "" H 1900 3600 50  0001 C CNN
F 3 "" H 1900 3600 50  0001 C CNN
	1    1900 3600
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 J2
U 1 1 593A6A6B
P 1550 7950
F 0 "J2" H 1550 8150 50  0000 C CNN
F 1 "SBBUS_1" H 1550 7750 50  0000 C CNN
F 2 "Connectors:IDC_Header_Straight_6pins" H 1550 6750 50  0001 C CNN
F 3 "" H 1550 6750 50  0001 C CNN
	1    1550 7950
	1    0    0    -1  
$EndComp
$Comp
L USB_A J1
U 1 1 593A6BFE
P 1050 1400
F 0 "J1" H 850 1850 50  0000 L CNN
F 1 "USB_MICRO_A" H 850 1750 50  0000 L CNN
F 2 "Connectors:USB_Micro-B" H 1200 1350 50  0001 C CNN
F 3 "" H 1200 1350 50  0001 C CNN
	1    1050 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 593A6E3B
P 1050 1900
F 0 "#PWR02" H 1050 1650 50  0001 C CNN
F 1 "GND" H 1050 1750 50  0000 C CNN
F 2 "" H 1050 1900 50  0001 C CNN
F 3 "" H 1050 1900 50  0001 C CNN
	1    1050 1900
	1    0    0    -1  
$EndComp
Text GLabel 1700 1500 2    60   BiDi ~ 0
D-
Text GLabel 1700 1400 2    60   BiDi ~ 0
D+
$Comp
L PRTR5V0U2X D1
U 1 1 593A72CC
P 2300 2100
F 0 "D1" H 2300 2300 60  0000 C CNN
F 1 "PRTR5V0U2X" H 2300 1900 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-143_Handsoldering" H 2300 2100 60  0001 C CNN
F 3 "" H 2300 2100 60  0001 C CNN
	1    2300 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 593A7459
P 1800 2050
F 0 "#PWR03" H 1800 1800 50  0001 C CNN
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
L +3.3V #PWR04
U 1 1 593A8105
P 2750 3150
F 0 "#PWR04" H 2750 3000 50  0001 C CNN
F 1 "+3.3V" H 2750 3290 50  0000 C CNN
F 2 "" H 2750 3150 50  0001 C CNN
F 3 "" H 2750 3150 50  0001 C CNN
	1    2750 3150
	0    1    1    0   
$EndComp
Text Notes 1500 2700 0    60   ~ 0
POWER REGULATOR
$Comp
L GND #PWR05
U 1 1 593A8A25
P 1900 8050
F 0 "#PWR05" H 1900 7800 50  0001 C CNN
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
L GND #PWR06
U 1 1 593A8EBD
P 8650 7350
F 0 "#PWR06" H 8650 7100 50  0001 C CNN
F 1 "GND" H 8650 7200 50  0000 C CNN
F 2 "" H 8650 7350 50  0001 C CNN
F 3 "" H 8650 7350 50  0001 C CNN
	1    8650 7350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 593A8EDF
P 6950 5000
F 0 "#PWR07" H 6950 4750 50  0001 C CNN
F 1 "GND" H 6950 4850 50  0000 C CNN
F 2 "" H 6950 5000 50  0001 C CNN
F 3 "" H 6950 5000 50  0001 C CNN
	1    6950 5000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR08
U 1 1 593A8FBE
P 10750 5900
F 0 "#PWR08" H 10750 5650 50  0001 C CNN
F 1 "GND" H 10750 5750 50  0000 C CNN
F 2 "" H 10750 5900 50  0001 C CNN
F 3 "" H 10750 5900 50  0001 C CNN
	1    10750 5900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR09
U 1 1 593A901F
P 9150 2700
F 0 "#PWR09" H 9150 2450 50  0001 C CNN
F 1 "GND" H 9150 2550 50  0000 C CNN
F 2 "" H 9150 2700 50  0001 C CNN
F 3 "" H 9150 2700 50  0001 C CNN
	1    9150 2700
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR010
U 1 1 593A942D
P 10950 4500
F 0 "#PWR010" H 10950 4250 50  0001 C CNN
F 1 "GND" H 10950 4350 50  0000 C CNN
F 2 "" H 10950 4500 50  0001 C CNN
F 3 "" H 10950 4500 50  0001 C CNN
	1    10950 4500
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR011
U 1 1 593A94B3
P 8950 2700
F 0 "#PWR011" H 8950 2550 50  0001 C CNN
F 1 "+3.3V" H 8900 2850 50  0000 C CNN
F 2 "" H 8950 2700 50  0001 C CNN
F 3 "" H 8950 2700 50  0001 C CNN
	1    8950 2700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR012
U 1 1 593A953D
P 11150 4400
F 0 "#PWR012" H 11150 4250 50  0001 C CNN
F 1 "+3.3V" H 11150 4540 50  0000 C CNN
F 2 "" H 11150 4400 50  0001 C CNN
F 3 "" H 11150 4400 50  0001 C CNN
	1    11150 4400
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR013
U 1 1 593A9587
P 10950 5800
F 0 "#PWR013" H 10950 5650 50  0001 C CNN
F 1 "+3.3V" H 10950 5940 50  0000 C CNN
F 2 "" H 10950 5800 50  0001 C CNN
F 3 "" H 10950 5800 50  0001 C CNN
	1    10950 5800
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR014
U 1 1 593A95CD
P 8550 7550
F 0 "#PWR014" H 8550 7400 50  0001 C CNN
F 1 "+3.3V" H 8550 7690 50  0000 C CNN
F 2 "" H 8550 7550 50  0001 C CNN
F 3 "" H 8550 7550 50  0001 C CNN
	1    8550 7550
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR015
U 1 1 593A9E71
P 6200 5100
F 0 "#PWR015" H 6200 4950 50  0001 C CNN
F 1 "+3.3V" H 6200 5240 50  0000 C CNN
F 2 "" H 6200 5100 50  0001 C CNN
F 3 "" H 6200 5100 50  0001 C CNN
	1    6200 5100
	0    -1   -1   0   
$EndComp
$Comp
L C C2
U 1 1 593AA361
P 1400 4750
F 0 "C2" H 1425 4850 50  0000 L CNN
F 1 "6.8pF" H 1425 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1438 4600 50  0001 C CNN
F 3 "" H 1400 4750 50  0001 C CNN
	1    1400 4750
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 593AA3C2
P 2450 4750
F 0 "C6" H 2475 4850 50  0000 L CNN
F 1 "6.8pF" H 2475 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2488 4600 50  0001 C CNN
F 3 "" H 2450 4750 50  0001 C CNN
	1    2450 4750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 593AA54F
P 2050 4950
F 0 "#PWR016" H 2050 4700 50  0001 C CNN
F 1 "GND" H 2050 4800 50  0000 C CNN
F 2 "" H 2050 4950 50  0001 C CNN
F 3 "" H 2050 4950 50  0001 C CNN
	1    2050 4950
	1    0    0    -1  
$EndComp
Text Notes 1700 4200 0    60   ~ 0
32kHz CRYSTAL
Text GLabel 1150 8050 0    60   Input ~ 0
SENSE_OUT
$Comp
L SW_SPST SW1
U 1 1 593ABE7C
P 2300 6350
F 0 "SW1" H 2300 6475 50  0000 C CNN
F 1 "SW_SPST" H 2300 6250 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_B3SL-1002P" H 2300 6350 50  0001 C CNN
F 3 "" H 2300 6350 50  0001 C CNN
	1    2300 6350
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 593AC23E
P 1250 6350
F 0 "R2" V 1330 6350 50  0000 C CNN
F 1 "100k" V 1250 6350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1180 6350 50  0001 C CNN
F 3 "" H 1250 6350 50  0001 C CNN
	1    1250 6350
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 593AC981
P 1750 6350
F 0 "R4" V 1830 6350 50  0000 C CNN
F 1 "39R" V 1750 6350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1680 6350 50  0001 C CNN
F 3 "" H 1750 6350 50  0001 C CNN
	1    1750 6350
	0    1    1    0   
$EndComp
$Comp
L C C4
U 1 1 593ACA65
P 2200 6800
F 0 "C4" V 2350 6800 50  0000 L CNN
F 1 "100nF" V 2050 6700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2238 6650 50  0001 C CNN
F 3 "" H 2200 6800 50  0001 C CNN
	1    2200 6800
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR017
U 1 1 593ACC32
P 950 6350
F 0 "#PWR017" H 950 6200 50  0001 C CNN
F 1 "+3.3V" H 950 6490 50  0000 C CNN
F 2 "" H 950 6350 50  0001 C CNN
F 3 "" H 950 6350 50  0001 C CNN
	1    950  6350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR018
U 1 1 593ACEF3
P 2650 6350
F 0 "#PWR018" H 2650 6100 50  0001 C CNN
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
Text GLabel 1150 4550 0    60   BiDi ~ 0
XOUT
Text GLabel 2700 4550 2    60   BiDi ~ 0
XIN
Text GLabel 6800 4400 0    60   BiDi ~ 0
XIN
Text GLabel 6800 4500 0    60   BiDi ~ 0
XOUT
Text GLabel 9350 2800 1    60   Input ~ 0
RESET
$Comp
L R R1
U 1 1 593B153B
P 950 9850
F 0 "R1" V 1030 9850 50  0000 C CNN
F 1 "4.7K" V 950 9850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 880 9850 50  0001 C CNN
F 3 "" H 950 9850 50  0001 C CNN
	1    950  9850
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 593B1580
P 1250 9850
F 0 "R3" V 1330 9850 50  0000 C CNN
F 1 "4.7K" V 1250 9850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1180 9850 50  0001 C CNN
F 3 "" H 1250 9850 50  0001 C CNN
	1    1250 9850
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR019
U 1 1 593B15BB
P 1100 9550
F 0 "#PWR019" H 1100 9400 50  0001 C CNN
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
Text GLabel 8250 7150 3    60   Input ~ 0
SCL
Text GLabel 8150 7150 3    60   BiDi ~ 0
SDA
Text Notes 2800 7550 0    60   ~ 0
CORTEX DEBUG
Text GLabel 3400 7900 2    60   Output ~ 0
SWDCLK
$Comp
L C C12
U 1 1 593B7940
P 9050 2100
F 0 "C12" H 9100 2000 50  0000 L CNN
F 1 "100nF" H 9050 2200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9088 1950 50  0001 C CNN
F 3 "" H 9050 2100 50  0001 C CNN
	1    9050 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 593B7E67
P 9050 1850
F 0 "#PWR020" H 9050 1600 50  0001 C CNN
F 1 "GND" H 9050 1700 50  0000 C CNN
F 2 "" H 9050 1850 50  0001 C CNN
F 3 "" H 9050 1850 50  0001 C CNN
	1    9050 1850
	-1   0    0    1   
$EndComp
$Comp
L CONN_02X05 J3
U 1 1 593D8846
P 3000 8000
F 0 "J3" H 3000 8300 50  0000 C CNN
F 1 "DBGCON" H 3000 7700 50  0000 C CNN
F 2 "Connectors:IDC_Header_Straight_10pins" H 3000 6800 50  0001 C CNN
F 3 "" H 3000 6800 50  0001 C CNN
	1    3000 8000
	1    0    0    -1  
$EndComp
Text GLabel 1700 5950 2    60   Input ~ 0
SWDRST
$Comp
L +3.3V #PWR021
U 1 1 593DA317
P 2600 7800
F 0 "#PWR021" H 2600 7650 50  0001 C CNN
F 1 "+3.3V" H 2600 7940 50  0000 C CNN
F 2 "" H 2600 7800 50  0001 C CNN
F 3 "" H 2600 7800 50  0001 C CNN
	1    2600 7800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 593DA3C7
P 2600 8200
F 0 "#PWR022" H 2600 7950 50  0001 C CNN
F 1 "GND" H 2600 8050 50  0000 C CNN
F 2 "" H 2600 8200 50  0001 C CNN
F 3 "" H 2600 8200 50  0001 C CNN
	1    2600 8200
	1    0    0    -1  
$EndComp
Text GLabel 3400 8200 2    60   Output ~ 0
SWDRST
Text GLabel 3400 7800 2    60   BiDi ~ 0
SWDIO
$Comp
L Ferrite_Bead_Small L1
U 1 1 593DB95C
P 6400 5100
F 0 "L1" V 6450 5200 50  0000 L CNN
F 1 "FeBead" V 6550 4900 50  0000 L CNN
F 2 "Inductors_SMD:L_0603_HandSoldering" V 6330 5100 50  0001 C CNN
F 3 "" H 6400 5100 50  0001 C CNN
	1    6400 5100
	0    1    1    0   
$EndComp
$Comp
L C C11
U 1 1 593DBF93
P 6700 5250
F 0 "C11" H 6725 5350 50  0000 L CNN
F 1 "100nF" H 6725 5150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6738 5100 50  0001 C CNN
F 3 "" H 6700 5250 50  0001 C CNN
	1    6700 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 593DC1E4
P 6700 5500
F 0 "#PWR023" H 6700 5250 50  0001 C CNN
F 1 "GND" H 6700 5350 50  0000 C CNN
F 2 "" H 6700 5500 50  0001 C CNN
F 3 "" H 6700 5500 50  0001 C CNN
	1    6700 5500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR024
U 1 1 593DEF16
P 2500 9600
F 0 "#PWR024" H 2500 9450 50  0001 C CNN
F 1 "+3.3V" H 2500 9740 50  0000 C CNN
F 2 "" H 2500 9600 50  0001 C CNN
F 3 "" H 2500 9600 50  0001 C CNN
	1    2500 9600
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 593DEF58
P 2500 9850
F 0 "C7" H 2525 9950 50  0000 L CNN
F 1 "100nF" H 2525 9750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2538 9700 50  0001 C CNN
F 3 "" H 2500 9850 50  0001 C CNN
	1    2500 9850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 593DEFA3
P 2500 10100
F 0 "#PWR025" H 2500 9850 50  0001 C CNN
F 1 "GND" H 2500 9950 50  0000 C CNN
F 2 "" H 2500 10100 50  0001 C CNN
F 3 "" H 2500 10100 50  0001 C CNN
	1    2500 10100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR026
U 1 1 593DF4E7
P 2200 9600
F 0 "#PWR026" H 2200 9450 50  0001 C CNN
F 1 "+3.3V" H 2200 9740 50  0000 C CNN
F 2 "" H 2200 9600 50  0001 C CNN
F 3 "" H 2200 9600 50  0001 C CNN
	1    2200 9600
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 593DF4ED
P 2200 9850
F 0 "C5" H 2225 9950 50  0000 L CNN
F 1 "100nF" H 2225 9750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2238 9700 50  0001 C CNN
F 3 "" H 2200 9850 50  0001 C CNN
	1    2200 9850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 593DF4F3
P 2200 10100
F 0 "#PWR027" H 2200 9850 50  0001 C CNN
F 1 "GND" H 2200 9950 50  0000 C CNN
F 2 "" H 2200 10100 50  0001 C CNN
F 3 "" H 2200 10100 50  0001 C CNN
	1    2200 10100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR028
U 1 1 593DF5AB
P 3100 9600
F 0 "#PWR028" H 3100 9450 50  0001 C CNN
F 1 "+3.3V" H 3100 9740 50  0000 C CNN
F 2 "" H 3100 9600 50  0001 C CNN
F 3 "" H 3100 9600 50  0001 C CNN
	1    3100 9600
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 593DF5B1
P 3100 9850
F 0 "C10" H 3125 9950 50  0000 L CNN
F 1 "100nF" H 3125 9750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3138 9700 50  0001 C CNN
F 3 "" H 3100 9850 50  0001 C CNN
	1    3100 9850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 593DF5B7
P 3100 10100
F 0 "#PWR029" H 3100 9850 50  0001 C CNN
F 1 "GND" H 3100 9950 50  0000 C CNN
F 2 "" H 3100 10100 50  0001 C CNN
F 3 "" H 3100 10100 50  0001 C CNN
	1    3100 10100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR030
U 1 1 593DF5BF
P 2800 9600
F 0 "#PWR030" H 2800 9450 50  0001 C CNN
F 1 "+3.3V" H 2800 9740 50  0000 C CNN
F 2 "" H 2800 9600 50  0001 C CNN
F 3 "" H 2800 9600 50  0001 C CNN
	1    2800 9600
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 593DF5C5
P 2800 9850
F 0 "C9" H 2825 9950 50  0000 L CNN
F 1 "100nF" H 2825 9750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2838 9700 50  0001 C CNN
F 3 "" H 2800 9850 50  0001 C CNN
	1    2800 9850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR031
U 1 1 593DF5CB
P 2800 10100
F 0 "#PWR031" H 2800 9850 50  0001 C CNN
F 1 "GND" H 2800 9950 50  0000 C CNN
F 2 "" H 2800 10100 50  0001 C CNN
F 3 "" H 2800 10100 50  0001 C CNN
	1    2800 10100
	1    0    0    -1  
$EndComp
Text Notes 2050 9200 0    60   ~ 0
DECOUPLING CAPACITORS
$Comp
L +5V #PWR032
U 1 1 593E68C4
P 1100 3150
F 0 "#PWR032" H 1100 3000 50  0001 C CNN
F 1 "+5V" H 1100 3290 50  0000 C CNN
F 2 "" H 1100 3150 50  0001 C CNN
F 3 "" H 1100 3150 50  0001 C CNN
	1    1100 3150
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR033
U 1 1 593E7435
P 1200 7850
F 0 "#PWR033" H 1200 7700 50  0001 C CNN
F 1 "+5V" H 1200 7990 50  0000 C CNN
F 2 "" H 1200 7850 50  0001 C CNN
F 3 "" H 1200 7850 50  0001 C CNN
	1    1200 7850
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 593EAD54
P 1500 1000
F 0 "C3" H 1525 1100 50  0000 L CNN
F 1 "100nF" H 1525 900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1538 850 50  0001 C CNN
F 3 "" H 1500 1000 50  0001 C CNN
	1    1500 1000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 593EB099
P 1500 750
F 0 "#PWR034" H 1500 500 50  0001 C CNN
F 1 "GND" H 1500 600 50  0000 C CNN
F 2 "" H 1500 750 50  0001 C CNN
F 3 "" H 1500 750 50  0001 C CNN
	1    1500 750 
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR035
U 1 1 593EBFDF
P 3150 1200
F 0 "#PWR035" H 3150 1050 50  0001 C CNN
F 1 "+5V" H 3150 1340 50  0000 C CNN
F 2 "" H 3150 1200 50  0001 C CNN
F 3 "" H 3150 1200 50  0001 C CNN
	1    3150 1200
	0    1    1    0   
$EndComp
$Comp
L LED_Small D2
U 1 1 593EC480
P 4150 9900
F 0 "D2" H 4100 10025 50  0000 L CNN
F 1 "LED G" H 3975 9800 50  0000 L CNN
F 2 "LEDs:LED_0805" V 4150 9900 50  0001 C CNN
F 3 "" V 4150 9900 50  0001 C CNN
	1    4150 9900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR036
U 1 1 593ECB5A
P 4150 10100
F 0 "#PWR036" H 4150 9850 50  0001 C CNN
F 1 "GND" H 4150 9950 50  0000 C CNN
F 2 "" H 4150 10100 50  0001 C CNN
F 3 "" H 4150 10100 50  0001 C CNN
	1    4150 10100
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 593ECB9D
P 4150 9550
F 0 "R7" V 4230 9550 50  0000 C CNN
F 1 "330R" V 4150 9550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4080 9550 50  0001 C CNN
F 3 "" H 4150 9550 50  0001 C CNN
	1    4150 9550
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR037
U 1 1 593ECCB9
P 4150 9300
F 0 "#PWR037" H 4150 9150 50  0001 C CNN
F 1 "+3.3V" H 4150 9440 50  0000 C CNN
F 2 "" H 4150 9300 50  0001 C CNN
F 3 "" H 4150 9300 50  0001 C CNN
	1    4150 9300
	1    0    0    -1  
$EndComp
Text Notes 3950 9000 0    60   ~ 0
POWER / DBG LEDS
$Comp
L LED_Small D3
U 1 1 593ED79F
P 4600 9900
F 0 "D3" H 4550 10025 50  0000 L CNN
F 1 "LED G" H 4425 9800 50  0000 L CNN
F 2 "LEDs:LED_0805" V 4600 9900 50  0001 C CNN
F 3 "" V 4600 9900 50  0001 C CNN
	1    4600 9900
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 593ED7A5
P 4600 9550
F 0 "R8" V 4680 9550 50  0000 C CNN
F 1 "330R" V 4600 9550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4530 9550 50  0001 C CNN
F 3 "" H 4600 9550 50  0001 C CNN
	1    4600 9550
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR038
U 1 1 593ED7AB
P 4600 9300
F 0 "#PWR038" H 4600 9150 50  0001 C CNN
F 1 "+3.3V" H 4600 9440 50  0000 C CNN
F 2 "" H 4600 9300 50  0001 C CNN
F 3 "" H 4600 9300 50  0001 C CNN
	1    4600 9300
	1    0    0    -1  
$EndComp
Text GLabel 4600 10150 3    60   Input ~ 0
DBGLED
Text Notes 13150 1300 0    60   ~ 0
PRESSURE SENSOR CONNECTORS
$Comp
L CONN_02X08 J6
U 1 1 593F9C7C
P 14850 2350
F 0 "J6" H 14850 2800 50  0000 C CNN
F 1 "FSRCON1" V 14850 2350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x08_Pitch2.54mm" H 14850 1150 50  0001 C CNN
F 3 "" H 14850 1150 50  0001 C CNN
	1    14850 2350
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 593FB5BF
P 13350 2000
F 0 "R10" V 13300 1800 50  0000 C CNN
F 1 "10K" V 13350 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 13280 2000 50  0001 C CNN
F 3 "" H 13350 2000 50  0001 C CNN
	1    13350 2000
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR039
U 1 1 593FB6EC
P 12900 2000
F 0 "#PWR039" H 12900 1850 50  0001 C CNN
F 1 "+3.3V" H 12900 2140 50  0000 C CNN
F 2 "" H 12900 2000 50  0001 C CNN
F 3 "" H 12900 2000 50  0001 C CNN
	1    12900 2000
	0    -1   -1   0   
$EndComp
Text GLabel 14400 1750 1    60   Output ~ 0
FSR0
Text GLabel 14300 1750 1    60   Output ~ 0
FSR1
Text GLabel 14200 1750 1    60   Output ~ 0
FSR2
Text GLabel 14100 1750 1    60   Output ~ 0
FSR3
Text GLabel 14000 1750 1    60   Output ~ 0
FSR4
Text GLabel 13900 1750 1    60   Output ~ 0
FSR5
Text GLabel 13800 1750 1    60   Output ~ 0
FSR6
Text GLabel 13700 1750 1    60   Output ~ 0
FSR7
$Comp
L R R11
U 1 1 593FD04D
P 13350 2100
F 0 "R11" V 13300 1900 50  0000 C CNN
F 1 "10K" V 13350 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 13280 2100 50  0001 C CNN
F 3 "" H 13350 2100 50  0001 C CNN
	1    13350 2100
	0    1    1    0   
$EndComp
$Comp
L R R12
U 1 1 593FD215
P 13350 2200
F 0 "R12" V 13300 2000 50  0000 C CNN
F 1 "10K" V 13350 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 13280 2200 50  0001 C CNN
F 3 "" H 13350 2200 50  0001 C CNN
	1    13350 2200
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 593FD21B
P 13350 2300
F 0 "R13" V 13300 2100 50  0000 C CNN
F 1 "10K" V 13350 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 13280 2300 50  0001 C CNN
F 3 "" H 13350 2300 50  0001 C CNN
	1    13350 2300
	0    1    1    0   
$EndComp
$Comp
L R R14
U 1 1 593FD3E9
P 13350 2400
F 0 "R14" V 13300 2200 50  0000 C CNN
F 1 "10K" V 13350 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 13280 2400 50  0001 C CNN
F 3 "" H 13350 2400 50  0001 C CNN
	1    13350 2400
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 593FD3EF
P 13350 2500
F 0 "R15" V 13300 2300 50  0000 C CNN
F 1 "10K" V 13350 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 13280 2500 50  0001 C CNN
F 3 "" H 13350 2500 50  0001 C CNN
	1    13350 2500
	0    1    1    0   
$EndComp
$Comp
L R R16
U 1 1 593FD3F5
P 13350 2600
F 0 "R16" V 13300 2400 50  0000 C CNN
F 1 "10K" V 13350 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 13280 2600 50  0001 C CNN
F 3 "" H 13350 2600 50  0001 C CNN
	1    13350 2600
	0    1    1    0   
$EndComp
$Comp
L R R17
U 1 1 593FD3FB
P 13350 2700
F 0 "R17" V 13300 2500 50  0000 C CNN
F 1 "10K" V 13350 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 13280 2700 50  0001 C CNN
F 3 "" H 13350 2700 50  0001 C CNN
	1    13350 2700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR040
U 1 1 59400B76
P 15450 2000
F 0 "#PWR040" H 15450 1750 50  0001 C CNN
F 1 "GND" H 15450 1850 50  0000 C CNN
F 2 "" H 15450 2000 50  0001 C CNN
F 3 "" H 15450 2000 50  0001 C CNN
	1    15450 2000
	0    -1   -1   0   
$EndComp
$Comp
L CONN_02X08 J7
U 1 1 594016DD
P 14850 4350
F 0 "J7" H 14850 4800 50  0000 C CNN
F 1 "FSRCON2" V 14850 4350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x08_Pitch2.54mm" H 14850 3150 50  0001 C CNN
F 3 "" H 14850 3150 50  0001 C CNN
	1    14850 4350
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 594016E3
P 13350 4000
F 0 "R18" V 13300 3800 50  0000 C CNN
F 1 "10K" V 13350 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 13280 4000 50  0001 C CNN
F 3 "" H 13350 4000 50  0001 C CNN
	1    13350 4000
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR041
U 1 1 594016E9
P 12900 4000
F 0 "#PWR041" H 12900 3850 50  0001 C CNN
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
L R R19
U 1 1 594016F7
P 13350 4100
F 0 "R19" V 13300 3900 50  0000 C CNN
F 1 "10K" V 13350 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 13280 4100 50  0001 C CNN
F 3 "" H 13350 4100 50  0001 C CNN
	1    13350 4100
	0    1    1    0   
$EndComp
$Comp
L R R20
U 1 1 594016FD
P 13350 4200
F 0 "R20" V 13300 4000 50  0000 C CNN
F 1 "10K" V 13350 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 13280 4200 50  0001 C CNN
F 3 "" H 13350 4200 50  0001 C CNN
	1    13350 4200
	0    1    1    0   
$EndComp
$Comp
L R R21
U 1 1 59401703
P 13350 4300
F 0 "R21" V 13300 4100 50  0000 C CNN
F 1 "10K" V 13350 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 13280 4300 50  0001 C CNN
F 3 "" H 13350 4300 50  0001 C CNN
	1    13350 4300
	0    1    1    0   
$EndComp
$Comp
L R R22
U 1 1 59401709
P 13350 4400
F 0 "R22" V 13300 4200 50  0000 C CNN
F 1 "10K" V 13350 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 13280 4400 50  0001 C CNN
F 3 "" H 13350 4400 50  0001 C CNN
	1    13350 4400
	0    1    1    0   
$EndComp
$Comp
L R R23
U 1 1 5940170F
P 13350 4500
F 0 "R23" V 13300 4300 50  0000 C CNN
F 1 "10K" V 13350 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 13280 4500 50  0001 C CNN
F 3 "" H 13350 4500 50  0001 C CNN
	1    13350 4500
	0    1    1    0   
$EndComp
$Comp
L R R24
U 1 1 59401715
P 13350 4600
F 0 "R24" V 13300 4400 50  0000 C CNN
F 1 "10K" V 13350 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 13280 4600 50  0001 C CNN
F 3 "" H 13350 4600 50  0001 C CNN
	1    13350 4600
	0    1    1    0   
$EndComp
$Comp
L R R25
U 1 1 5940171B
P 13350 4700
F 0 "R25" V 13300 4500 50  0000 C CNN
F 1 "10K" V 13350 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 13280 4700 50  0001 C CNN
F 3 "" H 13350 4700 50  0001 C CNN
	1    13350 4700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR042
U 1 1 59401749
P 15450 4000
F 0 "#PWR042" H 15450 3750 50  0001 C CNN
F 1 "GND" H 15450 3850 50  0000 C CNN
F 2 "" H 15450 4000 50  0001 C CNN
F 3 "" H 15450 4000 50  0001 C CNN
	1    15450 4000
	0    -1   -1   0   
$EndComp
Text GLabel 8350 3700 1    60   Input ~ 0
FSR9
Text GLabel 8250 3700 1    60   Input ~ 0
FSR10
Text GLabel 8150 3700 1    60   Input ~ 0
FSR11
Text GLabel 7400 4600 0    60   Input ~ 0
FSR12
Text GLabel 7400 4700 0    60   Input ~ 0
FSR13
Text GLabel 7400 4800 0    60   Input ~ 0
FSR14
Text GLabel 7400 4900 0    60   Input ~ 0
FSR15
Text GLabel 8450 3700 1    60   Input ~ 0
FSR8
Text GLabel 7400 5200 0    60   Input ~ 0
FSR0
Text GLabel 7400 5300 0    60   Input ~ 0
FSR1
Text GLabel 7400 5400 0    60   Input ~ 0
FSR2
Text GLabel 7400 5500 0    60   Input ~ 0
FSR3
Text GLabel 7400 5600 0    60   Input ~ 0
FSR4
Text GLabel 7400 5700 0    60   Input ~ 0
FSR5
Text GLabel 7400 5800 0    60   Input ~ 0
FSR6
Text GLabel 7400 5900 0    60   Input ~ 0
FSR7
Text GLabel 8650 2800 1    60   Output ~ 0
DBGLED
Text GLabel 8850 3400 1    60   Output ~ 0
SWDCLK
Text GLabel 8750 3400 1    60   BiDi ~ 0
SWDIO
Text GLabel 9250 3400 1    60   Input ~ 0
SENSE_IN
Text GLabel 9450 3400 1    60   Output ~ 0
SENSE_OUT
Text GLabel 8550 3800 1    60   BiDi ~ 0
PB31
Text GLabel 9550 3800 1    60   BiDi ~ 0
PB23
Text GLabel 9650 3800 1    60   BiDi ~ 0
PB22
Text GLabel 10250 4900 2    60   BiDi ~ 0
PA22
Text GLabel 10250 5000 2    60   BiDi ~ 0
PA21
Text GLabel 10250 5100 2    60   BiDi ~ 0
PA20
Text GLabel 10250 5400 2    60   BiDi ~ 0
PA19
Text GLabel 10250 5500 2    60   BiDi ~ 0
PA18
Text GLabel 10250 5600 2    60   BiDi ~ 0
PA17
Text GLabel 10250 5700 2    60   BiDi ~ 0
PA16
Text GLabel 10250 5200 2    60   BiDi ~ 0
PB17
Text GLabel 10250 5300 2    60   BiDi ~ 0
PB16
Text GLabel 9450 6550 3    60   BiDi ~ 0
PA13
Text GLabel 9350 6550 3    60   BiDi ~ 0
PA12
Text GLabel 9050 6550 3    60   BiDi ~ 0
PB13
Text GLabel 8950 6550 3    60   BiDi ~ 0
PB12
Text GLabel 8850 6550 3    60   BiDi ~ 0
PB11
Text GLabel 8750 6550 3    60   BiDi ~ 0
PB10
Text GLabel 9250 6550 3    60   BiDi ~ 0
PB15
Text GLabel 9150 6550 3    60   BiDi ~ 0
PB14
Text GLabel 9650 6550 3    60   BiDi ~ 0
PA15
Text GLabel 8450 6550 3    60   BiDi ~ 0
PA11
Text GLabel 8350 6550 3    60   BiDi ~ 0
PA10
Wire Wire Line
	8550 6350 8550 7550
Wire Wire Line
	8350 6350 8350 6550
Wire Wire Line
	8450 6550 8450 6350
Wire Wire Line
	9650 6550 9650 6350
Wire Wire Line
	8750 6350 8750 6550
Wire Wire Line
	8850 6550 8850 6350
Wire Wire Line
	8950 6350 8950 6550
Wire Wire Line
	9050 6550 9050 6350
Wire Wire Line
	9250 6550 9250 6350
Wire Wire Line
	9350 6350 9350 6550
Wire Wire Line
	9450 6550 9450 6350
Wire Wire Line
	10050 5700 10250 5700
Wire Wire Line
	10250 5600 10050 5600
Wire Wire Line
	10050 5500 10250 5500
Wire Wire Line
	10250 5400 10050 5400
Wire Wire Line
	10050 5300 10250 5300
Wire Wire Line
	10250 5200 10050 5200
Wire Wire Line
	10050 5100 10250 5100
Wire Wire Line
	10250 5000 10050 5000
Wire Wire Line
	10050 4900 10250 4900
Wire Wire Line
	10050 4700 10700 4700
Wire Wire Line
	10050 4600 10700 4600
Wire Wire Line
	9650 3800 9650 3900
Wire Wire Line
	9550 3800 9550 3900
Wire Wire Line
	8550 3800 8550 3900
Wire Wire Line
	9450 3900 9450 3400
Wire Wire Line
	9250 3400 9250 3900
Wire Wire Line
	9050 2250 9050 3900
Wire Wire Line
	8850 3400 8850 3900
Wire Wire Line
	8750 3400 8750 3900
Wire Wire Line
	1150 8050 1300 8050
Wire Wire Line
	1950 7850 1800 7850
Wire Wire Line
	8250 7150 8250 6350
Wire Wire Line
	8150 7150 8150 6350
Wire Wire Line
	8650 7350 8650 6350
Wire Wire Line
	8450 3700 8450 3900
Wire Wire Line
	8350 3700 8350 3900
Wire Wire Line
	8250 3700 8250 3900
Wire Wire Line
	8150 3700 8150 3900
Wire Wire Line
	7400 4800 7650 4800
Wire Wire Line
	7400 4900 7650 4900
Wire Wire Line
	7650 5200 7400 5200
Wire Wire Line
	7400 5300 7650 5300
Wire Wire Line
	8650 2800 8650 3900
Wire Wire Line
	7650 5900 7400 5900
Wire Wire Line
	7650 5800 7400 5800
Wire Wire Line
	7650 5700 7400 5700
Wire Wire Line
	7650 5600 7400 5600
Wire Wire Line
	7650 5500 7400 5500
Wire Wire Line
	7650 5100 6500 5100
Wire Wire Line
	7400 5400 7650 5400
Wire Wire Line
	7400 4700 7650 4700
Wire Wire Line
	7400 4600 7650 4600
Wire Wire Line
	7650 4400 6800 4400
Wire Wire Line
	6800 4500 7650 4500
Wire Wire Line
	6950 5000 7650 5000
Connection ~ 15350 4600
Wire Wire Line
	15350 4700 15100 4700
Connection ~ 15350 4500
Wire Wire Line
	15350 4600 15100 4600
Connection ~ 15350 4400
Wire Wire Line
	15350 4500 15100 4500
Connection ~ 15350 4300
Wire Wire Line
	15350 4400 15100 4400
Connection ~ 15350 4200
Wire Wire Line
	15350 4300 15100 4300
Connection ~ 15350 4100
Wire Wire Line
	15350 4200 15100 4200
Connection ~ 15350 4000
Wire Wire Line
	15350 4000 15350 4700
Wire Wire Line
	15100 4100 15350 4100
Wire Wire Line
	15100 4000 15450 4000
Connection ~ 14400 4700
Wire Wire Line
	14400 3750 14400 4700
Connection ~ 14300 4600
Wire Wire Line
	14300 3750 14300 4600
Connection ~ 14200 4500
Wire Wire Line
	14200 3750 14200 4500
Connection ~ 14100 4400
Wire Wire Line
	14100 3750 14100 4400
Connection ~ 14000 4300
Wire Wire Line
	14000 3750 14000 4300
Connection ~ 13900 4200
Wire Wire Line
	13900 3750 13900 4200
Connection ~ 13800 4100
Wire Wire Line
	13800 3750 13800 4100
Connection ~ 13700 4000
Wire Wire Line
	13700 3750 13700 4000
Wire Wire Line
	13500 4700 14600 4700
Wire Wire Line
	13500 4600 14600 4600
Wire Wire Line
	13500 4500 14600 4500
Wire Wire Line
	13500 4400 14600 4400
Wire Wire Line
	13500 4300 14600 4300
Wire Wire Line
	13500 4200 14600 4200
Wire Wire Line
	13500 4100 14600 4100
Wire Wire Line
	13500 4000 14600 4000
Connection ~ 13000 4000
Wire Wire Line
	13000 4000 13000 4700
Connection ~ 13000 4600
Wire Wire Line
	13200 4600 13000 4600
Connection ~ 13000 4500
Wire Wire Line
	13200 4500 13000 4500
Connection ~ 13000 4400
Wire Wire Line
	13200 4400 13000 4400
Connection ~ 13000 4300
Wire Wire Line
	13200 4300 13000 4300
Connection ~ 13000 4200
Wire Wire Line
	13200 4200 13000 4200
Connection ~ 13000 4100
Wire Wire Line
	13200 4100 13000 4100
Wire Wire Line
	12900 4000 13200 4000
Wire Wire Line
	13000 4700 13200 4700
Connection ~ 15350 2600
Wire Wire Line
	15350 2700 15100 2700
Connection ~ 15350 2500
Wire Wire Line
	15350 2600 15100 2600
Connection ~ 15350 2400
Wire Wire Line
	15350 2500 15100 2500
Connection ~ 15350 2300
Wire Wire Line
	15350 2400 15100 2400
Connection ~ 15350 2200
Wire Wire Line
	15350 2300 15100 2300
Connection ~ 15350 2100
Wire Wire Line
	15350 2200 15100 2200
Connection ~ 15350 2000
Wire Wire Line
	15350 2000 15350 2700
Wire Wire Line
	15100 2100 15350 2100
Wire Wire Line
	15100 2000 15450 2000
Connection ~ 14400 2700
Wire Wire Line
	14400 1750 14400 2700
Connection ~ 14300 2600
Wire Wire Line
	14300 1750 14300 2600
Connection ~ 14200 2500
Wire Wire Line
	14200 1750 14200 2500
Connection ~ 14100 2400
Wire Wire Line
	14100 1750 14100 2400
Connection ~ 14000 2300
Wire Wire Line
	14000 1750 14000 2300
Connection ~ 13900 2200
Wire Wire Line
	13900 1750 13900 2200
Connection ~ 13800 2100
Wire Wire Line
	13800 1750 13800 2100
Connection ~ 13700 2000
Wire Wire Line
	13700 1750 13700 2000
Wire Wire Line
	13500 2700 14600 2700
Wire Wire Line
	13500 2600 14600 2600
Wire Wire Line
	13500 2500 14600 2500
Wire Wire Line
	13500 2400 14600 2400
Wire Wire Line
	13500 2300 14600 2300
Wire Wire Line
	13500 2200 14600 2200
Wire Wire Line
	13500 2100 14600 2100
Wire Wire Line
	13500 2000 14600 2000
Connection ~ 13000 2000
Wire Wire Line
	13000 2000 13000 2700
Connection ~ 13000 2600
Wire Wire Line
	13200 2600 13000 2600
Connection ~ 13000 2500
Wire Wire Line
	13200 2500 13000 2500
Connection ~ 13000 2400
Wire Wire Line
	13200 2400 13000 2400
Connection ~ 13000 2300
Wire Wire Line
	13200 2300 13000 2300
Connection ~ 13000 2200
Wire Wire Line
	13200 2200 13000 2200
Connection ~ 13000 2100
Wire Wire Line
	13200 2100 13000 2100
Wire Wire Line
	12900 2000 13200 2000
Wire Wire Line
	13000 2700 13200 2700
Wire Wire Line
	4600 10150 4600 10000
Wire Wire Line
	4600 9400 4600 9300
Wire Wire Line
	4600 9800 4600 9700
Wire Wire Line
	4150 9400 4150 9300
Wire Wire Line
	4150 9800 4150 9700
Wire Wire Line
	4150 10100 4150 10000
Connection ~ 1500 1200
Wire Wire Line
	1500 1150 1500 1200
Wire Wire Line
	1500 750  1500 850 
Wire Wire Line
	1350 1200 3150 1200
Wire Wire Line
	2750 3150 2300 3150
Wire Wire Line
	1100 3150 1500 3150
Wire Wire Line
	2800 10100 2800 10000
Wire Wire Line
	2800 9600 2800 9700
Wire Wire Line
	3100 10100 3100 10000
Wire Wire Line
	3100 9600 3100 9700
Wire Wire Line
	2200 10100 2200 10000
Wire Wire Line
	2200 9600 2200 9700
Wire Wire Line
	2500 10100 2500 10000
Wire Wire Line
	2500 9600 2500 9700
Wire Wire Line
	6700 5500 6700 5400
Connection ~ 6700 5100
Wire Wire Line
	6300 5100 6200 5100
Wire Wire Line
	3400 7800 3250 7800
Wire Wire Line
	3400 7900 3250 7900
Wire Wire Line
	3400 8200 3250 8200
Connection ~ 2600 8000
Wire Wire Line
	2750 7900 2600 7900
Wire Wire Line
	2600 7900 2600 8200
Wire Wire Line
	2750 8000 2600 8000
Wire Wire Line
	2750 7800 2600 7800
Connection ~ 1500 5950
Wire Wire Line
	1700 5950 1500 5950
Wire Wire Line
	9050 1950 9050 1850
Wire Wire Line
	1250 10150 1250 10000
Wire Wire Line
	950  10150 950  10000
Connection ~ 1100 9550
Wire Wire Line
	1250 9550 1250 9700
Wire Wire Line
	950  9550 1250 9550
Wire Wire Line
	950  9700 950  9550
Wire Wire Line
	9350 2800 9350 3900
Connection ~ 2450 4550
Connection ~ 1400 4550
Wire Wire Line
	1400 4950 1400 4900
Wire Wire Line
	1400 4550 1400 4600
Wire Wire Line
	1150 4550 1900 4550
Connection ~ 2600 6350
Wire Wire Line
	2600 6800 2600 6350
Wire Wire Line
	2350 6800 2600 6800
Connection ~ 1500 6350
Wire Wire Line
	1500 6800 2050 6800
Wire Wire Line
	1500 5800 1500 6800
Wire Wire Line
	2650 6350 2500 6350
Wire Wire Line
	2100 6350 1900 6350
Wire Wire Line
	1400 6350 1600 6350
Wire Wire Line
	950  6350 1100 6350
Wire Wire Line
	1700 1500 1350 1500
Connection ~ 2850 1200
Wire Wire Line
	2850 2150 2850 1200
Wire Wire Line
	2450 4550 2450 4600
Wire Wire Line
	2450 4950 2450 4900
Wire Wire Line
	1400 4950 2450 4950
Wire Wire Line
	2200 4550 2700 4550
Wire Wire Line
	10950 5800 10050 5800
Wire Wire Line
	10050 4400 11150 4400
Wire Wire Line
	8950 2700 8950 3900
Wire Wire Line
	10050 4500 10950 4500
Wire Wire Line
	10750 5900 10050 5900
Wire Wire Line
	1150 7950 1300 7950
Wire Wire Line
	1950 7950 1800 7950
Wire Wire Line
	1300 7850 1200 7850
Wire Wire Line
	1900 8050 1800 8050
Connection ~ 1250 3150
Connection ~ 2550 3150
Wire Wire Line
	2550 3150 2550 3200
Wire Wire Line
	2550 3600 2550 3500
Wire Wire Line
	1250 3500 1250 3600
Wire Wire Line
	1250 3200 1250 3150
Wire Wire Line
	2850 2150 2700 2150
Wire Wire Line
	1800 2050 1900 2050
Wire Wire Line
	2700 2050 2700 1800
Wire Wire Line
	1050 1900 1050 1800
Wire Wire Line
	1900 3450 1900 3600
Connection ~ 1900 3600
Wire Wire Line
	1250 3600 2550 3600
Wire Wire Line
	9150 6350 9150 6550
$Comp
L ATSAMD21J18A U2
U 1 1 5942E77C
P 8900 5150
F 0 "U2" H 8900 5350 60  0000 C CNN
F 1 "ATSAMD21J18A" H 8900 5200 60  0000 C CNN
F 2 "Housings_QFP:TQFP-64_10x10mm_Pitch0.5mm" V 9500 6400 60  0001 C CNN
F 3 "" V 9500 6400 60  0001 C CNN
	1    8900 5150
	1    0    0    -1  
$EndComp
Text GLabel 10700 4700 2    60   BiDi ~ 0
D-
Text GLabel 10700 4600 2    60   BiDi ~ 0
D+
Text GLabel 10250 4800 2    60   BiDi ~ 0
PA23
Wire Wire Line
	10250 4800 10050 4800
Wire Wire Line
	9150 3900 9150 2700
Text GLabel 9550 6900 3    60   Input ~ 0
VBUS
Wire Wire Line
	9550 6350 9550 6900
$Comp
L R R5
U 1 1 5943EB88
P 3050 1450
F 0 "R5" V 3130 1450 50  0000 C CNN
F 1 "30k" V 3050 1450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2980 1450 50  0001 C CNN
F 3 "" H 3050 1450 50  0001 C CNN
	1    3050 1450
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5943EC5A
P 3050 1850
F 0 "R6" V 3130 1850 50  0000 C CNN
F 1 "47k" V 3050 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2980 1850 50  0001 C CNN
F 3 "" H 3050 1850 50  0001 C CNN
	1    3050 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1300 3050 1200
Connection ~ 3050 1200
Wire Wire Line
	3050 1700 3050 1600
$Comp
L GND #PWR043
U 1 1 5943F29D
P 3050 2100
F 0 "#PWR043" H 3050 1850 50  0001 C CNN
F 1 "GND" H 3050 1950 50  0000 C CNN
F 2 "" H 3050 2100 50  0001 C CNN
F 3 "" H 3050 2100 50  0001 C CNN
	1    3050 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2100 3050 2000
Text GLabel 3200 1650 2    60   Output ~ 0
VBUS
Wire Wire Line
	3200 1650 3050 1650
Connection ~ 3050 1650
$Comp
L CONN_02X03 J8
U 1 1 59444003
P 1550 8550
F 0 "J8" H 1550 8750 50  0000 C CNN
F 1 "SBBUS_2" H 1550 8350 50  0000 C CNN
F 2 "Connectors:IDC_Header_Straight_6pins" H 1550 7350 50  0001 C CNN
F 3 "" H 1550 7350 50  0001 C CNN
	1    1550 8550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR044
U 1 1 59444009
P 1900 8650
F 0 "#PWR044" H 1900 8400 50  0001 C CNN
F 1 "GND" H 1900 8500 50  0000 C CNN
F 2 "" H 1900 8650 50  0001 C CNN
F 3 "" H 1900 8650 50  0001 C CNN
	1    1900 8650
	1    0    0    -1  
$EndComp
Text GLabel 1950 8550 2    60   BiDi ~ 0
SDA
Text GLabel 1950 8450 2    60   Output ~ 0
SCL
Text GLabel 1150 8650 0    60   Output ~ 0
SENSE_IN
Text GLabel 1150 8550 0    60   Input ~ 0
SENSE_OUT
$Comp
L +5V #PWR045
U 1 1 59444013
P 1200 8450
F 0 "#PWR045" H 1200 8300 50  0001 C CNN
F 1 "+5V" H 1200 8590 50  0000 C CNN
F 2 "" H 1200 8450 50  0001 C CNN
F 3 "" H 1200 8450 50  0001 C CNN
	1    1200 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 8650 1300 8650
Wire Wire Line
	1950 8450 1800 8450
Wire Wire Line
	1150 8550 1300 8550
Wire Wire Line
	1950 8550 1800 8550
Wire Wire Line
	1300 8450 1200 8450
Wire Wire Line
	1900 8650 1800 8650
Wire Wire Line
	1900 2150 1400 2150
Wire Wire Line
	1700 1400 1350 1400
Wire Wire Line
	2700 1800 1450 1800
Wire Wire Line
	1400 2150 1400 1500
Connection ~ 1400 1500
Wire Wire Line
	1450 1800 1450 1400
Connection ~ 1450 1400
$Comp
L Crystal Y1
U 1 1 59457367
P 2050 4550
F 0 "Y1" H 2050 4700 50  0000 C CNN
F 1 "Crystal" H 2050 4400 50  0000 C CNN
F 2 "Crystals:Crystal_Round_d3.0mm_Vertical" H 2050 4550 50  0001 C CNN
F 3 "" H 2050 4550 50  0001 C CNN
	1    2050 4550
	1    0    0    -1  
$EndComp
Connection ~ 2050 4950
$EndSCHEMATC
