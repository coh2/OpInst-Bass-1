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
L Audio:AS3310 U?
U 1 1 5E97F24C
P 5050 3950
F 0 "U?" H 5200 4750 50  0000 C CNN
F 1 "AS3310" H 5300 4650 50  0000 C CNN
F 2 "" H 5650 3650 50  0001 C CNN
F 3 "http://www.alfarzpp.lv/eng/sc/AS3310.pdf" H 5700 3450 50  0001 C CNN
	1    5050 3950
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR?
U 1 1 5E98057E
P 5050 4900
F 0 "#PWR?" H 5050 5000 50  0001 C CNN
F 1 "-5V" H 5065 5073 50  0000 C CNN
F 2 "" H 5050 4900 50  0001 C CNN
F 3 "" H 5050 4900 50  0001 C CNN
	1    5050 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5050 4650 5050 4900
Wire Wire Line
	5150 4650 5150 4800
$Comp
L power:GND #PWR?
U 1 1 5E981036
P 5250 4900
F 0 "#PWR?" H 5250 4650 50  0001 C CNN
F 1 "GND" H 5255 4727 50  0000 C CNN
F 2 "" H 5250 4900 50  0001 C CNN
F 3 "" H 5250 4900 50  0001 C CNN
	1    5250 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4650 5250 4800
$Comp
L power:+12V #PWR?
U 1 1 5E981A59
P 5050 3000
F 0 "#PWR?" H 5050 2850 50  0001 C CNN
F 1 "+12V" H 5065 3173 50  0000 C CNN
F 2 "" H 5050 3000 50  0001 C CNN
F 3 "" H 5050 3000 50  0001 C CNN
	1    5050 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3000 5050 3250
$Comp
L Device:R_POT_TRIM_US RV?
U 1 1 5E986508
P 2300 2300
F 0 "RV?" V 2095 2300 50  0000 C CNN
F 1 "10K" V 2186 2300 50  0000 C CNN
F 2 "" H 2300 2300 50  0001 C CNN
F 3 "~" H 2300 2300 50  0001 C CNN
	1    2300 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT_TRIM_US RV?
U 1 1 5E987712
P 2700 2650
F 0 "RV?" V 2495 2650 50  0000 C CNN
F 1 "10K" V 2586 2650 50  0000 C CNN
F 2 "" H 2700 2650 50  0001 C CNN
F 3 "~" H 2700 2650 50  0001 C CNN
	1    2700 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT_TRIM_US RV?
U 1 1 5E9882B7
P 3100 2950
F 0 "RV?" V 2895 2950 50  0000 C CNN
F 1 "10K" V 2986 2950 50  0000 C CNN
F 2 "" H 3100 2950 50  0001 C CNN
F 3 "~" H 3100 2950 50  0001 C CNN
	1    3100 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 3100 3100 3400
Wire Wire Line
	3100 3750 3250 3750
$Comp
L Device:R_POT_TRIM_US RV?
U 1 1 5E989338
P 1900 1900
F 0 "RV?" V 1695 1900 50  0000 C CNN
F 1 "10K" V 1786 1900 50  0000 C CNN
F 2 "" H 1900 1900 50  0001 C CNN
F 3 "~" H 1900 1900 50  0001 C CNN
	1    1900 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 2800 2700 3400
Wire Wire Line
	2700 3850 2850 3850
Wire Wire Line
	2300 2450 2300 3400
Wire Wire Line
	1900 2050 1900 3400
Wire Wire Line
	1900 4050 2050 4050
Wire Wire Line
	4650 3650 4000 3650
Wire Wire Line
	3650 3650 3650 2250
$Comp
L Device:C_Small C?
U 1 1 5E992843
P 4500 4700
F 0 "C?" H 4592 4746 50  0000 L CNN
F 1 "39nF" H 4592 4655 50  0000 L CNN
F 2 "" H 4500 4700 50  0001 C CNN
F 3 "~" H 4500 4700 50  0001 C CNN
	1    4500 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4350 4200 4350
Wire Wire Line
	4200 4350 4200 4600
Wire Wire Line
	4650 4450 4500 4450
Wire Wire Line
	4500 4450 4500 4600
$Comp
L Device:C_Small C?
U 1 1 5E993261
P 4200 4700
F 0 "C?" H 4400 4650 50  0000 R CNN
F 1 "10nF" H 4300 4750 50  0000 L CNN
F 2 "" H 4200 4700 50  0001 C CNN
F 3 "~" H 4200 4700 50  0001 C CNN
	1    4200 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5450 3850 5600 3850
Wire Wire Line
	5600 3850 5600 5500
Wire Wire Line
	5600 5500 3800 5500
Wire Wire Line
	3800 4150 3900 4150
Wire Wire Line
	3800 4150 3800 5500
$Comp
L Device:R_Small_US R?
U 1 1 5E998E94
P 4000 4150
F 0 "R?" V 4100 4150 50  0000 C CNN
F 1 "30K" V 4200 4150 50  0000 C CNN
F 2 "" H 4000 4150 50  0001 C CNN
F 3 "~" H 4000 4150 50  0001 C CNN
	1    4000 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 4150 4650 4150
$Comp
L Device:R_Small_US R?
U 1 1 5E99DCF7
P 3100 3500
F 0 "R?" H 3168 3546 50  0000 L CNN
F 1 "10K" H 3168 3455 50  0000 L CNN
F 2 "" H 3100 3500 50  0001 C CNN
F 3 "~" H 3100 3500 50  0001 C CNN
	1    3100 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3600 3100 3750
Wire Wire Line
	2700 3600 2700 3850
$Comp
L Device:R_Small_US R?
U 1 1 5E99E6B8
P 2700 3500
F 0 "R?" H 2768 3546 50  0000 L CNN
F 1 "10K" H 2768 3455 50  0000 L CNN
F 2 "" H 2700 3500 50  0001 C CNN
F 3 "~" H 2700 3500 50  0001 C CNN
	1    2700 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3600 2300 3950
$Comp
L Device:R_Small_US R?
U 1 1 5E99EF8B
P 2300 3500
F 0 "R?" H 2368 3546 50  0000 L CNN
F 1 "1.2K" H 2368 3455 50  0000 L CNN
F 2 "" H 2300 3500 50  0001 C CNN
F 3 "~" H 2300 3500 50  0001 C CNN
	1    2300 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E99FA52
P 1900 3500
F 0 "R?" H 1968 3546 50  0000 L CNN
F 1 "10K" H 1968 3455 50  0000 L CNN
F 2 "" H 1900 3500 50  0001 C CNN
F 3 "~" H 1900 3500 50  0001 C CNN
	1    1900 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3600 1900 4050
$Comp
L Device:R_Small_US R?
U 1 1 5E9A03F8
P 2050 4300
F 0 "R?" H 2118 4346 50  0000 L CNN
F 1 "470R" H 2118 4255 50  0000 L CNN
F 2 "" H 2050 4300 50  0001 C CNN
F 3 "~" H 2050 4300 50  0001 C CNN
	1    2050 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4200 2050 4050
Connection ~ 2050 4050
Wire Wire Line
	2050 4050 4650 4050
$Comp
L power:GND #PWR?
U 1 1 5E9A0EFE
P 2050 4500
F 0 "#PWR?" H 2050 4250 50  0001 C CNN
F 1 "GND" H 2055 4327 50  0000 C CNN
F 2 "" H 2050 4500 50  0001 C CNN
F 3 "" H 2050 4500 50  0001 C CNN
	1    2050 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4400 2050 4500
$Comp
L Device:R_Small_US R?
U 1 1 5E9A35E9
P 2850 4300
F 0 "R?" H 2918 4346 50  0000 L CNN
F 1 "470R" H 2918 4255 50  0000 L CNN
F 2 "" H 2850 4300 50  0001 C CNN
F 3 "~" H 2850 4300 50  0001 C CNN
	1    2850 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R?
U 1 1 5E9A4C17
P 3250 4300
F 0 "R?" H 3318 4346 50  0000 L CNN
F 1 "470R" H 3318 4255 50  0000 L CNN
F 2 "" H 3250 4300 50  0001 C CNN
F 3 "~" H 3250 4300 50  0001 C CNN
	1    3250 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4200 3250 3750
Connection ~ 3250 3750
Wire Wire Line
	3250 3750 4650 3750
$Comp
L power:GND #PWR?
U 1 1 5E9A7D49
P 2850 4500
F 0 "#PWR?" H 2850 4250 50  0001 C CNN
F 1 "GND" H 2855 4327 50  0000 C CNN
F 2 "" H 2850 4500 50  0001 C CNN
F 3 "" H 2850 4500 50  0001 C CNN
	1    2850 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4400 2850 4500
$Comp
L power:GND #PWR?
U 1 1 5E9A882B
P 3250 4500
F 0 "#PWR?" H 3250 4250 50  0001 C CNN
F 1 "GND" H 3255 4327 50  0000 C CNN
F 2 "" H 3250 4500 50  0001 C CNN
F 3 "" H 3250 4500 50  0001 C CNN
	1    3250 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4400 3250 4500
Wire Wire Line
	2300 3950 4650 3950
Wire Wire Line
	2850 4200 2850 3850
Connection ~ 2850 3850
Wire Wire Line
	2850 3850 4650 3850
Wire Wire Line
	5600 3850 6500 3850
Connection ~ 5600 3850
Wire Wire Line
	2050 1900 2050 1700
$Comp
L power:-5V #PWR?
U 1 1 5E9AB739
P 2050 1700
F 0 "#PWR?" H 2050 1800 50  0001 C CNN
F 1 "-5V" H 2065 1873 50  0000 C CNN
F 2 "" H 2050 1700 50  0001 C CNN
F 3 "" H 2050 1700 50  0001 C CNN
	1    2050 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9AE750
P 1750 2100
F 0 "#PWR?" H 1750 1850 50  0001 C CNN
F 1 "GND" H 1755 1927 50  0000 C CNN
F 2 "" H 1750 2100 50  0001 C CNN
F 3 "" H 1750 2100 50  0001 C CNN
	1    1750 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1900 1750 2100
$Comp
L power:-5V #PWR?
U 1 1 5E9AFD2F
P 2850 2450
F 0 "#PWR?" H 2850 2550 50  0001 C CNN
F 1 "-5V" H 2865 2623 50  0000 C CNN
F 2 "" H 2850 2450 50  0001 C CNN
F 3 "" H 2850 2450 50  0001 C CNN
	1    2850 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9B0AAF
P 2550 2850
F 0 "#PWR?" H 2550 2600 50  0001 C CNN
F 1 "GND" H 2555 2677 50  0000 C CNN
F 2 "" H 2550 2850 50  0001 C CNN
F 3 "" H 2550 2850 50  0001 C CNN
	1    2550 2850
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR?
U 1 1 5E9B180E
P 3250 2750
F 0 "#PWR?" H 3250 2850 50  0001 C CNN
F 1 "-5V" H 3265 2923 50  0000 C CNN
F 2 "" H 3250 2750 50  0001 C CNN
F 3 "" H 3250 2750 50  0001 C CNN
	1    3250 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9B1F95
P 2950 3150
F 0 "#PWR?" H 2950 2900 50  0001 C CNN
F 1 "GND" H 2955 2977 50  0000 C CNN
F 2 "" H 2950 3150 50  0001 C CNN
F 3 "" H 2950 3150 50  0001 C CNN
	1    2950 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2650 2550 2850
Wire Wire Line
	2950 2950 2950 3150
Wire Wire Line
	3250 2750 3250 2950
Wire Wire Line
	2850 2450 2850 2650
$Comp
L power:+5V #PWR?
U 1 1 5E9B68DA
P 2450 2100
F 0 "#PWR?" H 2450 1950 50  0001 C CNN
F 1 "+5V" H 2465 2273 50  0000 C CNN
F 2 "" H 2450 2100 50  0001 C CNN
F 3 "" H 2450 2100 50  0001 C CNN
	1    2450 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9B76B9
P 2150 2500
F 0 "#PWR?" H 2150 2250 50  0001 C CNN
F 1 "GND" H 2155 2327 50  0000 C CNN
F 2 "" H 2150 2500 50  0001 C CNN
F 3 "" H 2150 2500 50  0001 C CNN
	1    2150 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2300 2150 2500
Wire Wire Line
	2450 2100 2450 2300
Text GLabel 4150 2250 1    50   Input ~ 0
Gate
Wire Wire Line
	4150 2250 4150 2900
Wire Wire Line
	4150 3550 4650 3550
$Comp
L Device:R_Small_US R?
U 1 1 5E9CB5AB
P 4300 3000
F 0 "R?" H 4368 3046 50  0000 L CNN
F 1 "10K" H 4368 2955 50  0000 L CNN
F 2 "" H 4300 3000 50  0001 C CNN
F 3 "~" H 4300 3000 50  0001 C CNN
	1    4300 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9CC13E
P 4300 3200
F 0 "#PWR?" H 4300 2950 50  0001 C CNN
F 1 "GND" H 4305 3027 50  0000 C CNN
F 2 "" H 4300 3200 50  0001 C CNN
F 3 "" H 4300 3200 50  0001 C CNN
	1    4300 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3100 4300 3200
Wire Wire Line
	4150 2900 4300 2900
Connection ~ 4150 2900
Wire Wire Line
	4150 2900 4150 3550
$Comp
L Device:C_Small C?
U 1 1 5E9CFAA1
P 3900 3650
F 0 "C?" V 3671 3650 50  0000 C CNN
F 1 "3nF" V 3762 3650 50  0000 C CNN
F 2 "" H 3900 3650 50  0001 C CNN
F 3 "~" H 3900 3650 50  0001 C CNN
	1    3900 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 3650 3650 3650
Text GLabel 3650 2250 1    50   Input ~ 0
Trig
Text GLabel 7100 4050 2    50   Input ~ 0
Envelope
$Comp
L power:GND #PWR?
U 1 1 5E9D30C9
P 4200 4900
F 0 "#PWR?" H 4200 4650 50  0001 C CNN
F 1 "GND" H 4205 4727 50  0000 C CNN
F 2 "" H 4200 4900 50  0001 C CNN
F 3 "" H 4200 4900 50  0001 C CNN
	1    4200 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4800 4200 4900
$Comp
L power:GND #PWR?
U 1 1 5E9D413A
P 4500 4900
F 0 "#PWR?" H 4500 4650 50  0001 C CNN
F 1 "GND" H 4505 4727 50  0000 C CNN
F 2 "" H 4500 4900 50  0001 C CNN
F 3 "" H 4500 4900 50  0001 C CNN
	1    4500 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4800 4500 4900
Wire Wire Line
	5150 4800 5250 4800
Connection ~ 5250 4800
Wire Wire Line
	5250 4800 5250 4900
$Comp
L power:GND #PWR?
U 1 1 5E9D3742
P 6500 4300
F 0 "#PWR?" H 6500 4050 50  0001 C CNN
F 1 "GND" H 6505 4127 50  0000 C CNN
F 2 "" H 6500 4300 50  0001 C CNN
F 3 "" H 6500 4300 50  0001 C CNN
	1    6500 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4200 6500 4300
Wire Wire Line
	6500 3850 6500 3900
Wire Wire Line
	6650 4050 7100 4050
$Comp
L Device:R_POT_TRIM_US RV?
U 1 1 5E9D1244
P 6500 4050
F 0 "RV?" H 6432 4096 50  0000 R CNN
F 1 "100K" H 6432 4005 50  0000 R CNN
F 2 "" H 6500 4050 50  0001 C CNN
F 3 "~" H 6500 4050 50  0001 C CNN
	1    6500 4050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
