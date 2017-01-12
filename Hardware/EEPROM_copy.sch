EESchema Schematic File Version 2
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
LIBS:EEPROM_copy-cache
EELAYER 25 0
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
L ATTINY2313-P IC1
U 1 1 586CDB6B
P 4750 3450
F 0 "IC1" H 3800 4450 50  0000 C CNN
F 1 "ATTINY2313-P" H 5550 2550 50  0000 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 4750 3450 50  0000 C CIN
F 3 "" H 4750 3450 50  0000 C CNN
	1    4750 3450
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P1
U 1 1 586CDC0A
P 7050 3600
F 0 "P1" H 7050 3850 50  0000 C CNN
F 1 "CONN_01X04" V 7150 3600 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x04" H 7050 3600 50  0001 C CNN
F 3 "" H 7050 3600 50  0000 C CNN
	1    7050 3600
	1    0    0    1   
$EndComp
Wire Wire Line
	5900 3650 6850 3650
Wire Wire Line
	5900 3550 6850 3550
$Comp
L VCC #PWR01
U 1 1 586CDD15
P 6400 2150
F 0 "#PWR01" H 6400 2000 50  0001 C CNN
F 1 "VCC" H 6400 2300 50  0000 C CNN
F 2 "" H 6400 2150 50  0000 C CNN
F 3 "" H 6400 2150 50  0000 C CNN
	1    6400 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 586CDD2D
P 6950 2300
F 0 "#PWR02" H 6950 2050 50  0001 C CNN
F 1 "GND" H 6950 2150 50  0000 C CNN
F 2 "" H 6950 2300 50  0000 C CNN
F 3 "" H 6950 2300 50  0000 C CNN
	1    6950 2300
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 586CDD6A
P 4000 2300
F 0 "R3" V 4080 2300 50  0000 C CNN
F 1 "10K" V 4000 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3930 2300 50  0001 C CNN
F 3 "" H 4000 2300 50  0000 C CNN
	1    4000 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 2300 6500 2300
Wire Wire Line
	4750 2300 4750 2350
Wire Wire Line
	3850 2300 3600 2300
Wire Wire Line
	3600 2300 3600 2650
$Comp
L SW_PUSH SW1
U 1 1 586CDE13
P 2500 2850
F 0 "SW1" H 2650 2960 50  0000 C CNN
F 1 "Read" H 2500 2770 50  0000 C CNN
F 2 "custom_sw:Micro_sw_1" H 2500 2850 50  0001 C CNN
F 3 "" H 2500 2850 50  0000 C CNN
	1    2500 2850
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 586CDEB2
P 2500 3200
F 0 "SW2" H 2650 3310 50  0000 C CNN
F 1 "Write" H 2500 3120 50  0000 C CNN
F 2 "custom_sw:Micro_sw_1" H 2500 3200 50  0001 C CNN
F 3 "" H 2500 3200 50  0000 C CNN
	1    2500 3200
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 586CDF22
P 3450 2950
F 0 "R1" V 3530 2950 50  0000 C CNN
F 1 "1K" V 3450 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3380 2950 50  0001 C CNN
F 3 "" H 3450 2950 50  0000 C CNN
	1    3450 2950
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 586CDF6E
P 3450 3150
F 0 "R2" V 3530 3150 50  0000 C CNN
F 1 "1K" V 3450 3150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3380 3150 50  0001 C CNN
F 3 "" H 3450 3150 50  0000 C CNN
	1    3450 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 3150 2800 3150
Wire Wire Line
	2800 3150 2800 3200
Wire Wire Line
	3300 2950 2800 2950
Wire Wire Line
	2800 2950 2800 2850
Wire Wire Line
	2200 2850 2200 4750
Connection ~ 2200 3200
Wire Wire Line
	2200 4750 6300 4750
Wire Wire Line
	4750 4450 4750 4950
$Comp
L GND #PWR03
U 1 1 586CE01C
P 4750 4950
F 0 "#PWR03" H 4750 4700 50  0001 C CNN
F 1 "GND" H 4750 4800 50  0000 C CNN
F 2 "" H 4750 4950 50  0000 C CNN
F 3 "" H 4750 4950 50  0000 C CNN
	1    4750 4950
	1    0    0    -1  
$EndComp
Connection ~ 4750 4750
Wire Wire Line
	6400 2150 6400 3750
Connection ~ 4750 2300
$Comp
L C C1
U 1 1 586CE0D1
P 6650 2300
F 0 "C1" H 6675 2400 50  0000 L CNN
F 1 "100n" H 6675 2200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6688 2150 50  0001 C CNN
F 3 "" H 6650 2300 50  0000 C CNN
	1    6650 2300
	0    1    1    0   
$EndComp
Connection ~ 6400 2300
Wire Wire Line
	6800 2300 6950 2300
Wire Wire Line
	6850 2300 6850 3450
Connection ~ 6850 2300
$Comp
L Led_Small D1
U 1 1 586CE2BD
P 6100 4550
F 0 "D1" H 6050 4675 50  0000 L CNN
F 1 "Led_Small" H 5600 4700 50  0001 L CNN
F 2 "LEDs:LED-3MM" V 6100 4550 50  0001 C CNN
F 3 "" V 6100 4550 50  0000 C CNN
	1    6100 4550
	0    -1   -1   0   
$EndComp
$Comp
L Led_Small D2
U 1 1 586CE442
P 6300 4550
F 0 "D2" H 6250 4675 50  0000 L CNN
F 1 "Led_Small" H 5800 4650 50  0001 L CNN
F 2 "LEDs:LED-3MM" V 6300 4550 50  0001 C CNN
F 3 "" V 6300 4550 50  0000 C CNN
	1    6300 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 4750 6100 4650
Wire Wire Line
	6300 4750 6300 4650
Connection ~ 6100 4750
$Comp
L R R4
U 1 1 586CE54B
P 6100 4250
F 0 "R4" V 6180 4250 50  0000 C CNN
F 1 "220R" V 6100 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6030 4250 50  0001 C CNN
F 3 "" H 6100 4250 50  0000 C CNN
	1    6100 4250
	-1   0    0    1   
$EndComp
$Comp
L R R5
U 1 1 586CE5DA
P 6300 4250
F 0 "R5" V 6380 4250 50  0000 C CNN
F 1 "220R" V 6300 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6230 4250 50  0001 C CNN
F 3 "" H 6300 4250 50  0000 C CNN
	1    6300 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	6100 4400 6100 4450
Wire Wire Line
	6300 4400 6300 4450
Wire Wire Line
	6300 2650 6300 4100
NoConn ~ 5900 4150
NoConn ~ 5900 4050
NoConn ~ 5900 3950
NoConn ~ 5900 3850
NoConn ~ 5900 3750
NoConn ~ 5900 3350
NoConn ~ 5900 3250
NoConn ~ 5900 3150
NoConn ~ 5900 2950
NoConn ~ 5900 2850
Wire Wire Line
	6400 3750 6850 3750
Wire Wire Line
	5900 2650 6300 2650
Wire Wire Line
	6100 4100 6100 2750
Wire Wire Line
	6100 2750 5900 2750
$EndSCHEMATC