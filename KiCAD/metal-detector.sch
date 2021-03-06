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
LIBS:Personal_KiCAD
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:maxim
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:modules
LIBS:motor_drivers
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:relays
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:transf
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
LIBS:metal-detector-cache
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
L Q_NPN_BCE Q1
U 1 1 5983850C
P 5150 2450
F 0 "Q1" H 5350 2500 50  0000 L CNN
F 1 "2N3904" H 5350 2400 50  0000 L CNN
F 2 "" H 5350 2550 50  0001 C CNN
F 3 "" H 5150 2450 50  0001 C CNN
	1    5150 2450
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5983856B
P 5250 2850
F 0 "R3" V 5330 2850 50  0000 C CNN
F 1 "120" V 5250 2850 50  0000 C CNN
F 2 "" V 5180 2850 50  0001 C CNN
F 3 "" H 5250 2850 50  0001 C CNN
	1    5250 2850
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5983859A
P 4600 2850
F 0 "R2" V 4680 2850 50  0000 C CNN
F 1 "5K6" V 4600 2850 50  0000 C CNN
F 2 "" V 4530 2850 50  0001 C CNN
F 3 "" H 4600 2850 50  0001 C CNN
	1    4600 2850
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5983861B
P 4600 2100
F 0 "R1" V 4680 2100 50  0000 C CNN
F 1 "15K" V 4600 2100 50  0000 C CNN
F 2 "" V 4530 2100 50  0001 C CNN
F 3 "" H 4600 2100 50  0001 C CNN
	1    4600 2100
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 59838671
P 4325 2850
F 0 "C2" H 4350 2950 50  0000 L CNN
F 1 "1µF" H 4350 2750 50  0000 L CNN
F 2 "" H 4363 2700 50  0001 C CNN
F 3 "" H 4325 2850 50  0001 C CNN
	1    4325 2850
	1    0    0    -1  
$EndComp
$Comp
L L L1
U 1 1 598387F2
P 6775 1500
F 0 "L1" H 6725 1500 50  0000 C CNN
F 1 "115µH" V 6850 1500 50  0000 C CNN
F 2 "" H 6775 1500 50  0001 C CNN
F 3 "" H 6775 1500 50  0001 C CNN
	1    6775 1500
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5983883B
P 5525 1700
F 0 "C4" H 5550 1800 50  0000 L CNN
F 1 "2n2" H 5550 1600 50  0000 L CNN
F 2 "" H 5563 1550 50  0001 C CNN
F 3 "" H 5525 1700 50  0001 C CNN
	1    5525 1700
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 598388E4
P 5525 2050
F 0 "C5" H 5550 2150 50  0000 L CNN
F 1 "2n2" H 5550 1950 50  0000 L CNN
F 2 "" H 5563 1900 50  0001 C CNN
F 3 "" H 5525 2050 50  0001 C CNN
	1    5525 2050
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 59838934
P 5625 2675
F 0 "C6" V 5775 2650 50  0000 L CNN
F 1 "1nF" V 5675 2750 50  0000 L CNN
F 2 "" H 5663 2525 50  0001 C CNN
F 3 "" H 5625 2675 50  0001 C CNN
	1    5625 2675
	0    1    1    0   
$EndComp
$Comp
L C C8
U 1 1 598389B7
P 6050 2200
F 0 "C8" V 6200 2175 50  0000 L CNN
F 1 "1nF" V 5900 2150 50  0000 L CNN
F 2 "" H 6088 2050 50  0001 C CNN
F 3 "" H 6050 2200 50  0001 C CNN
	1    6050 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 2100 5250 2250
Wire Wire Line
	5250 1550 5250 2000
Wire Wire Line
	2975 1550 5775 1550
Wire Wire Line
	5525 1850 5525 1900
Wire Wire Line
	5250 2200 5900 2200
Connection ~ 5250 2200
Wire Wire Line
	5250 2650 5250 2700
Wire Wire Line
	5475 2675 5250 2675
Connection ~ 5250 2675
Wire Wire Line
	5775 1850 5775 2675
Wire Wire Line
	5775 1875 5525 1875
Connection ~ 5525 1875
Connection ~ 5525 2200
Wire Wire Line
	4600 2250 4600 2700
Wire Wire Line
	4325 2450 4950 2450
Connection ~ 4600 2450
Wire Wire Line
	4325 2700 4325 2450
$Comp
L GND #PWR4
U 1 1 59838BDC
P 4325 3075
F 0 "#PWR4" H 4325 2825 50  0001 C CNN
F 1 "GND" H 4325 2925 50  0000 C CNN
F 2 "" H 4325 3075 50  0001 C CNN
F 3 "" H 4325 3075 50  0001 C CNN
	1    4325 3075
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 59838C0C
P 4600 3075
F 0 "#PWR6" H 4600 2825 50  0001 C CNN
F 1 "GND" H 4600 2925 50  0000 C CNN
F 2 "" H 4600 3075 50  0001 C CNN
F 3 "" H 4600 3075 50  0001 C CNN
	1    4600 3075
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR7
U 1 1 59838C35
P 5250 3075
F 0 "#PWR7" H 5250 2825 50  0001 C CNN
F 1 "GND" H 5250 2925 50  0000 C CNN
F 2 "" H 5250 3075 50  0001 C CNN
F 3 "" H 5250 3075 50  0001 C CNN
	1    5250 3075
	1    0    0    -1  
$EndComp
Wire Wire Line
	4325 3000 4325 3075
Wire Wire Line
	4600 3000 4600 3075
Wire Wire Line
	5250 3000 5250 3075
Wire Wire Line
	4600 1950 4600 1550
Connection ~ 5250 1550
$Comp
L Battery BT1
U 1 1 59838DD1
P 2100 1750
F 0 "BT1" H 2200 1850 50  0000 L CNN
F 1 "9v" H 2200 1750 50  0000 L CNN
F 2 "" V 2100 1810 50  0001 C CNN
F 3 "" V 2100 1810 50  0001 C CNN
	1    2100 1750
	1    0    0    -1  
$EndComp
$Comp
L SPDT SW1
U 1 1 59838E95
P 3325 2275
F 0 "SW1" H 3325 2150 60  0000 C CNN
F 1 "power" H 3325 2450 60  0000 C CNN
F 2 "" H 3325 2275 60  0001 C CNN
F 3 "" H 3325 2275 60  0001 C CNN
	1    3325 2275
	1    0    0    -1  
$EndComp
Connection ~ 4600 1550
Wire Wire Line
	2100 1550 2875 1550
$Comp
L GND #PWR2
U 1 1 59838FBD
P 2100 2000
F 0 "#PWR2" H 2100 1750 50  0001 C CNN
F 1 "GND" H 2100 1850 50  0000 C CNN
F 2 "" H 2100 2000 50  0001 C CNN
F 3 "" H 2100 2000 50  0001 C CNN
	1    2100 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1950 2100 2000
Text Label 4400 1550 0    60   ~ 0
+9v
Text Notes 3450 2200 2    39   ~ 0
on
Text Notes 3375 2350 2    39   ~ 0
off
NoConn ~ 3550 2325
$Comp
L R R4
U 1 1 59839402
P 6425 2200
F 0 "R4" V 6505 2200 50  0000 C CNN
F 1 "33k" V 6425 2200 50  0000 C CNN
F 2 "" V 6355 2200 50  0001 C CNN
F 3 "" H 6425 2200 50  0001 C CNN
	1    6425 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 2200 6275 2200
$Comp
L PIC10(L)F322-I/P U2
U 1 1 59839C2A
P 6875 4375
F 0 "U2" H 6425 4825 50  0000 L CNN
F 1 "PIC10F322-I/P" H 6425 4725 50  0000 L CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 6425 4025 50  0001 L CIN
F 3 "" H 6875 4375 50  0001 C CNN
	1    6875 4375
	1    0    0    -1  
$EndComp
Text Label 4125 4175 2    39   ~ 0
+9v
Wire Wire Line
	4725 4175 6275 4175
$Comp
L GND #PWR5
U 1 1 5983A2C1
P 4425 4525
F 0 "#PWR5" H 4425 4275 50  0001 C CNN
F 1 "GND" H 4425 4375 50  0000 C CNN
F 2 "" H 4425 4525 50  0001 C CNN
F 3 "" H 4425 4525 50  0001 C CNN
	1    4425 4525
	1    0    0    -1  
$EndComp
Wire Wire Line
	4425 4475 4425 4525
$Comp
L GND #PWR8
U 1 1 5983A330
P 6275 4650
F 0 "#PWR8" H 6275 4400 50  0001 C CNN
F 1 "GND" H 6275 4500 50  0000 C CNN
F 2 "" H 6275 4650 50  0001 C CNN
F 3 "" H 6275 4650 50  0001 C CNN
	1    6275 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6275 4475 6275 4650
$Comp
L C C9
U 1 1 5983A391
P 6275 4325
F 0 "C9" H 6150 4225 50  0000 L CNN
F 1 "100nF" H 6025 4425 50  0000 L CNN
F 2 "" H 6313 4175 50  0001 C CNN
F 3 "" H 6275 4325 50  0001 C CNN
	1    6275 4325
	1    0    0    -1  
$EndComp
Connection ~ 6275 4575
Text Label 6575 2200 0    39   ~ 0
Fosc
Text Label 7475 4375 0    39   ~ 0
Fosc
$Comp
L R R5
U 1 1 5983ABA7
P 7775 4475
F 0 "R5" V 7855 4475 50  0000 C CNN
F 1 "470" V 7775 4475 50  0000 C CNN
F 2 "" V 7705 4475 50  0001 C CNN
F 3 "" H 7775 4475 50  0001 C CNN
	1    7775 4475
	0    1    1    0   
$EndComp
$Comp
L C C12
U 1 1 5983AC44
P 8175 4625
F 0 "C12" H 8050 4525 50  0000 L CNN
F 1 "100nF" H 7925 4725 50  0000 L CNN
F 2 "" H 8213 4475 50  0001 C CNN
F 3 "" H 8175 4625 50  0001 C CNN
	1    8175 4625
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR12
U 1 1 5983AD2E
P 8175 4775
F 0 "#PWR12" H 8175 4525 50  0001 C CNN
F 1 "GND" H 8175 4625 50  0000 C CNN
F 2 "" H 8175 4775 50  0001 C CNN
F 3 "" H 8175 4775 50  0001 C CNN
	1    8175 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	7475 4475 7625 4475
Wire Wire Line
	7925 4475 8325 4475
$Comp
L R R8
U 1 1 5983AF50
P 8475 4475
F 0 "R8" V 8555 4475 50  0000 C CNN
F 1 "10K" V 8475 4475 50  0000 C CNN
F 2 "" V 8405 4475 50  0001 C CNN
F 3 "" H 8475 4475 50  0001 C CNN
	1    8475 4475
	0    1    1    0   
$EndComp
Connection ~ 8175 4475
Text Label 8625 4475 0    39   ~ 0
Vdd
Text Label 7475 4475 0    39   ~ 0
Vpp
Text Label 7475 4175 0    39   ~ 0
PGDAT
Text Label 7475 4275 0    39   ~ 0
PGCLK/SYSCLK
$Comp
L CONN_01X05 J5
U 1 1 5983B173
P 5675 5175
F 0 "J5" H 5675 5475 50  0000 C CNN
F 1 "ICSP" V 5775 5175 50  0000 C CNN
F 2 "" H 5675 5175 50  0001 C CNN
F 3 "" H 5675 5175 50  0001 C CNN
	1    5675 5175
	-1   0    0    1   
$EndComp
Text Label 5875 5375 0    39   ~ 0
Vpp
Text Label 5875 5275 0    39   ~ 0
Vdd
Text Label 5875 5175 0    39   ~ 0
Vss
Text Label 5875 5075 0    39   ~ 0
PGDAT
Text Label 5875 4975 0    39   ~ 0
PGCLK
Text Label 6275 4575 2    39   ~ 0
Vss
$Comp
L R R6
U 1 1 5983B418
P 7850 3925
F 0 "R6" V 7930 3925 50  0000 C CNN
F 1 "470" V 7850 3925 50  0000 C CNN
F 2 "" V 7780 3925 50  0001 C CNN
F 3 "" H 7850 3925 50  0001 C CNN
	1    7850 3925
	0    1    1    0   
$EndComp
Wire Wire Line
	7475 4175 7700 4175
$Comp
L CP C13
U 1 1 5983B4AF
P 8575 3925
F 0 "C13" H 8600 4025 50  0000 L CNN
F 1 "470µF" H 8600 3825 50  0000 L CNN
F 2 "" H 8613 3775 50  0001 C CNN
F 3 "" H 8575 3925 50  0001 C CNN
	1    8575 3925
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8000 3925 8425 3925
$Comp
L Earphone LS1
U 1 1 5983B5F6
P 9775 4150
F 0 "LS1" H 9875 4300 50  0000 L CNN
F 1 "Earphone" H 9875 4225 50  0000 L CNN
F 2 "" V 9775 4250 50  0001 C CNN
F 3 "" V 9775 4250 50  0001 C CNN
	1    9775 4150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J4
U 1 1 5983B7E5
P 9025 3975
F 0 "J4" H 9025 4125 50  0000 C CNN
F 1 "audio out" V 9125 3975 50  0000 C CNN
F 2 "" H 9025 3975 50  0001 C CNN
F 3 "" H 9025 3975 50  0001 C CNN
	1    9025 3975
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR13
U 1 1 5983B8A2
P 8825 4025
F 0 "#PWR13" H 8825 3775 50  0001 C CNN
F 1 "GND" H 8825 3875 50  0000 C CNN
F 2 "" H 8825 4025 50  0001 C CNN
F 3 "" H 8825 4025 50  0001 C CNN
	1    8825 4025
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02_FEMALE P4
U 1 1 5983B974
P 9450 4050
F 0 "P4" H 9450 4250 50  0000 C CNN
F 1 "plug" H 9525 3850 50  0000 C CNN
F 2 "" H 9450 4150 50  0001 C CNN
F 3 "" H 9450 4150 50  0001 C CNN
	1    9450 4050
	-1   0    0    1   
$EndComp
Wire Wire Line
	9550 3950 9775 3950
Wire Wire Line
	9775 4250 9550 4250
Wire Wire Line
	9550 4250 9550 4150
$Comp
L C C7
U 1 1 5983CEAF
P 5775 1700
F 0 "C7" H 5800 1800 50  0000 L CNN
F 1 "2n2" H 5800 1600 50  0000 L CNN
F 2 "" H 5813 1550 50  0001 C CNN
F 3 "" H 5775 1700 50  0001 C CNN
	1    5775 1700
	1    0    0    -1  
$EndComp
Connection ~ 5525 1550
Connection ~ 5775 1875
$Comp
L MXO45HS X1
U 1 1 59848659
P 7500 3300
F 0 "X1" H 7500 3150 39  0000 C CNN
F 1 "MXO45HS" H 7500 3450 39  0000 C CNN
F 2 "" H 7500 3300 60  0001 C CNN
F 3 "" H 7500 3300 60  0001 C CNN
	1    7500 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR10
U 1 1 598487B1
P 7250 3450
F 0 "#PWR10" H 7250 3200 50  0001 C CNN
F 1 "GND" H 7250 3300 50  0000 C CNN
F 2 "" H 7250 3450 50  0001 C CNN
F 3 "" H 7250 3450 50  0001 C CNN
	1    7250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3350 7250 3450
NoConn ~ 7250 3250
Text Label 7750 3250 0    39   ~ 0
+5v
Text Label 8050 3350 0    39   ~ 0
SYSCLK
$Comp
L R R7
U 1 1 59848A90
P 7900 3350
F 0 "R7" V 7980 3350 50  0000 C CNN
F 1 "470" V 7900 3350 50  0000 C CNN
F 2 "" V 7830 3350 50  0001 C CNN
F 3 "" H 7900 3350 50  0001 C CNN
	1    7900 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 4175 7700 3925
$Comp
L LM7805_TO220 U1
U 1 1 5984937D
P 4425 4175
F 0 "U1" H 4275 4300 50  0000 C CNN
F 1 "LM7805" H 4375 4300 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 4425 4400 50  0001 C CIN
F 3 "" H 4425 4125 50  0001 C CNN
	1    4425 4175
	1    0    0    -1  
$EndComp
Text Label 4825 4175 0    39   ~ 0
+5v
$Comp
L C C3
U 1 1 5984952A
P 4800 4325
F 0 "C3" H 4675 4225 50  0000 L CNN
F 1 "100nF" H 4825 4400 50  0000 L CNN
F 2 "" H 4838 4175 50  0001 C CNN
F 3 "" H 4800 4325 50  0001 C CNN
	1    4800 4325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4475 4425 4475
Connection ~ 4800 4175
Text Notes 7350 3100 0    39   ~ 0
14,3181Mhz\n
$Comp
L CP C1
U 1 1 59849AEF
P 3925 1725
F 0 "C1" H 3950 1825 50  0000 L CNN
F 1 "47µF" H 3950 1625 50  0000 L CNN
F 2 "" H 3963 1575 50  0001 C CNN
F 3 "" H 3925 1725 50  0001 C CNN
	1    3925 1725
	1    0    0    -1  
$EndComp
Wire Wire Line
	3925 1550 3925 1575
Connection ~ 3925 1550
$Comp
L GND #PWR3
U 1 1 59849D72
P 3925 1875
F 0 "#PWR3" H 3925 1625 50  0001 C CNN
F 1 "GND" H 3925 1725 50  0000 C CNN
F 2 "" H 3925 1875 50  0001 C CNN
F 3 "" H 3925 1875 50  0001 C CNN
	1    3925 1875
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 59849FBE
P 8450 4250
F 0 "D1" H 8450 4350 50  0000 C CNN
F 1 "1N4148" H 8450 4150 50  0000 C CNN
F 2 "" H 8450 4250 50  0001 C CNN
F 3 "" H 8450 4250 50  0001 C CNN
	1    8450 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	8300 4250 8175 4250
Wire Wire Line
	8175 4250 8175 4475
Wire Wire Line
	8600 4250 8625 4250
Wire Wire Line
	8625 4250 8625 4475
$Comp
L C C11
U 1 1 5985202C
P 8050 4075
F 0 "C11" H 8075 3975 50  0000 L CNN
F 1 "100nF" H 8075 4175 50  0000 L CNN
F 2 "" H 8088 3925 50  0001 C CNN
F 3 "" H 8050 4075 50  0001 C CNN
	1    8050 4075
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR11
U 1 1 598521D2
P 8050 4225
F 0 "#PWR11" H 8050 3975 50  0001 C CNN
F 1 "GND" H 8050 4075 50  0000 C CNN
F 2 "" H 8050 4225 50  0001 C CNN
F 3 "" H 8050 4225 50  0001 C CNN
	1    8050 4225
	1    0    0    -1  
$EndComp
Connection ~ 8050 3925
Wire Wire Line
	8725 3925 8825 3925
Text Notes 6450 1175 0    39   ~ 0
detector coil\nL1 15cm diameter\n17 turns magnet wire 22 AWG
$Comp
L C C10
U 1 1 59870CC9
P 6575 2350
F 0 "C10" H 6600 2450 50  0000 L CNN
F 1 "10pF" H 6600 2250 50  0000 L CNN
F 2 "" H 6613 2200 50  0001 C CNN
F 3 "" H 6575 2350 50  0001 C CNN
	1    6575 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR9
U 1 1 59870D5F
P 6575 2500
F 0 "#PWR9" H 6575 2250 50  0001 C CNN
F 1 "GND" H 6575 2350 50  0000 C CNN
F 2 "" H 6575 2500 50  0001 C CNN
F 3 "" H 6575 2500 50  0001 C CNN
	1    6575 2500
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5993023B
P 2525 2825
F 0 "R9" V 2605 2825 50  0000 C CNN
F 1 "1K" V 2525 2825 50  0000 C CNN
F 2 "" V 2455 2825 50  0001 C CNN
F 3 "" H 2525 2825 50  0001 C CNN
	1    2525 2825
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 59930375
P 3675 3325
F 0 "D2" H 3675 3425 50  0000 C CNN
F 1 "Power" V 3675 3150 50  0000 C CNN
F 2 "" H 3675 3325 50  0001 C CNN
F 3 "" H 3675 3325 50  0001 C CNN
	1    3675 3325
	0    -1   -1   0   
$EndComp
Text Label 2525 2675 0    39   ~ 0
+9v
$Comp
L CONN_01X02_FEMALE P2
U 1 1 59931823
P 3150 3275
F 0 "P2" H 3150 3475 50  0000 C CNN
F 1 "plug" H 3225 3075 50  0000 C CNN
F 2 "" H 3150 3375 50  0001 C CNN
F 3 "" H 3150 3375 50  0001 C CNN
	1    3150 3275
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 3175 3675 3175
Wire Wire Line
	3250 3375 3250 3475
Wire Wire Line
	3250 3475 3675 3475
$Comp
L CONN_01X02 J2
U 1 1 59931CC1
P 2725 3250
F 0 "J2" H 2725 3400 50  0000 C CNN
F 1 "power LED" V 2825 3250 50  0000 C CNN
F 2 "" H 2725 3250 50  0001 C CNN
F 3 "" H 2725 3250 50  0001 C CNN
	1    2725 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 59931FC3
P 2525 3300
F 0 "#PWR1" H 2525 3050 50  0001 C CNN
F 1 "GND" H 2525 3150 50  0000 C CNN
F 2 "" H 2525 3300 50  0001 C CNN
F 3 "" H 2525 3300 50  0001 C CNN
	1    2525 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2525 2975 2525 3200
$Comp
L CONN_01X02 J3
U 1 1 599327AC
P 5050 2050
F 0 "J3" H 5050 2200 50  0000 C CNN
F 1 "detector coil" V 5150 2050 50  0000 C CNN
F 2 "" H 5050 2050 50  0001 C CNN
F 3 "" H 5050 2050 50  0001 C CNN
	1    5050 2050
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02_FEMALE P3
U 1 1 59932C13
P 6425 1450
F 0 "P3" H 6425 1650 50  0000 C CNN
F 1 "plug" H 6500 1250 50  0000 C CNN
F 2 "" H 6425 1550 50  0001 C CNN
F 3 "" H 6425 1550 50  0001 C CNN
	1    6425 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6525 1350 6775 1350
Wire Wire Line
	6525 1550 6525 1650
Wire Wire Line
	6525 1650 6775 1650
$Comp
L CONN_01X02_FEMALE P1
U 1 1 5993378D
P 2750 2250
F 0 "P1" H 2750 2450 50  0000 C CNN
F 1 "plug" H 2825 2050 50  0000 C CNN
F 2 "" H 2750 2350 50  0001 C CNN
F 3 "" H 2750 2350 50  0001 C CNN
	1    2750 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 2350 3100 2350
Wire Wire Line
	3100 2350 3100 2275
Wire Wire Line
	3550 2225 3550 2000
Wire Wire Line
	3550 2000 2850 2000
Wire Wire Line
	2850 2000 2850 2150
$Comp
L CONN_01X02 J1
U 1 1 59933CD8
P 2925 1750
F 0 "J1" H 2925 1900 50  0000 C CNN
F 1 "power switch" V 3025 1750 50  0000 C CNN
F 2 "" H 2925 1750 50  0001 C CNN
F 3 "" H 2925 1750 50  0001 C CNN
	1    2925 1750
	0    1    1    0   
$EndComp
$EndSCHEMATC
