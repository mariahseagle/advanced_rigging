//Maya ASCII 2015 scene
//Name: parent_rig_03.ma
//Last modified: Wed, Sep 02, 2015 09:34:14 PM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -12.212926978822315 16.253539198300693 9.3896460668710233 ;
	setAttr ".r" -type "double3" 324.26164728809533 670.5999999994616 -2.4436698605401888e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 19.089615937619662;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "r_arm";
createNode mesh -n "r_armShape" -p "r_arm";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.63737383484840393 0.13288925588130951 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "l_arm";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
createNode mesh -n "l_armShape" -p "l_arm";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.63737383484840393 0.13288925588130951 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "l_arm";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.63737383484840393 0.13288925588130951 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 118 ".uvst[0].uvsp[0:117]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.125 0.17943445 0.375 0.57056552 0.375 0.17943445
		 0.625 0.17943445 0.625 0.57056552 0.875 0.17943445 0.125 0.086344063 0.375 0.66365588
		 0.375 0.086344063 0.625 0.086344063 0.625 0.66365588 0.875 0.086344063 0.15456939
		 0.17943445 0.15456939 0.25 0.375 0.47043061 0.625 0.47043061 0.84543061 0.25 0.84543061
		 0.17943445 0.84543061 0.086344063 0.625 0.77956939 0.84543061 0 0.15456939 0 0.375
		 0.77956939 0.15456939 0.086344063 0.3502523 0.17943445 0.3502523 0.25 0.375 0.27474767
		 0.625 0.27474767 0.64974767 0.25 0.64974767 0.17943445 0.64974767 0.086344063 0.625
		 0.97525233 0.64974767 0 0.3502523 0 0.375 0.97525233 0.3502523 0.086344063 0.18904965
		 0.17943445 0.18904966 0.25 0.375 0.43595034 0.625 0.43595034 0.81095034 0.25 0.81095034
		 0.17943445 0.81095034 0.086344063 0.625 0.81404966 0.81095034 0 0.18904965 0 0.37499997
		 0.81404966 0.18904965 0.086344056 0.31616008 0.17943445 0.31616008 0.25 0.375 0.30883986
		 0.625 0.30883986 0.68383986 0.25 0.68383986 0.17943445 0.68383986 0.086344063 0.625
		 0.94116014 0.68383986 0 0.31616008 0 0.375 0.94116014 0.31616008 0.086344063 0.25351626
		 0.17943445 0.25351629 0.25 0.375 0.37148368 0.625 0.37148368 0.74648368 0.25 0.74648368
		 0.17943445 0.74648368 0.086344063 0.625 0.87851632 0.74648368 0 0.25351626 0 0.375
		 0.87851632 0.25351626 0.086344063 0.3502523 0.17943445 0.3502523 0.086344063 0.375
		 0.086344063 0.375 0.17943445 0.3502523 0.17943445 0.3502523 0.086344063 0.375 0.086344063
		 0.375 0.17943445 0.3502523 0.17943445 0.3502523 0.086344063 0.375 0.086344063 0.375
		 0.17943445 0.3502523 0.17943445 0.3502523 0.086344063 0.375 0.086344063 0.375 0.17943445
		 0.625 0.086344063 0.64974767 0.086344063 0.64974767 0.17943445 0.625 0.17943445 0.625
		 0.086344063 0.64974767 0.086344063 0.64974767 0.17943445 0.625 0.17943445 0.625 0.086344063
		 0.64974767 0.086344063 0.64974767 0.17943445 0.625 0.17943445 0.625 0.086344063 0.64974767
		 0.086344063 0.64974767 0.17943445 0.625 0.17943445;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 88 ".vt[0:87]"  -2.29764891 4.79317284 2.7921834 -1.87804484 4.79317284 2.6834054
		 -2.29764891 5.62230015 2.7921834 -1.87804484 5.62230015 2.6834054 -3.00038814545 5.62230015 0.081409454
		 -2.58078432 5.62230015 -0.027368426 -3.00038814545 4.79317284 0.081409454 -2.58078432 4.79317284 -0.027368426
		 -3.055753708 5.41045904 -0.13215983 -2.24228311 5.41045904 3.0057528019 -1.82267928 5.41045904 2.89697504
		 -2.63614988 5.41045904 -0.24093771 -3.055753708 5.0071091652 -0.13215983 -2.24228311 5.0071091652 3.0057528019
		 -1.82267928 5.0071091652 2.89697504 -2.63614988 5.0071091652 -0.24093771 -2.93113852 5.41045904 0.34853566
		 -2.89649725 5.62230015 0.48216271 -2.47689319 5.62230015 0.37338483 -2.51153469 5.41045904 0.23975778
		 -2.51153469 5.0071091652 0.23975778 -2.47689319 4.79317284 0.37338483 -2.89649725 4.79317284 0.48216271
		 -2.93113852 5.0071091652 0.34853566 -2.36954856 5.41045904 2.5148344 -2.40479088 5.62230015 2.3788898
		 -1.98518682 5.62230015 2.2701118 -1.94994462 5.41045904 2.40605664 -1.94994462 5.0071091652 2.40605664
		 -1.98518682 4.79317284 2.2701118 -2.40479088 4.79317284 2.3788898 -2.36954856 5.0071091652 2.5148344
		 -2.79064322 5.41045904 0.89048779 -2.7781415 5.62230015 0.93871295 -2.35853744 5.62230015 0.82993507
		 -2.37103939 5.41045904 0.78170991 -2.37103939 5.0071091652 0.78170991 -2.35853744 4.79317284 0.82993507
		 -2.7781415 4.79317284 0.93871295 -2.79064322 5.0071091652 0.89048779 -2.50710511 5.41045904 1.98421848
		 -2.52317214 5.62230015 1.92224157 -2.10356808 5.62230015 1.81346369 -2.087501287 5.41045904 1.8754406
		 -2.087501287 5.0071091652 1.8754406 -2.10356808 4.79317284 1.81346369 -2.52317214 4.79317284 1.92224157
		 -2.50710511 5.0071091652 1.98421848 -2.64899969 5.41045904 1.43686867 -2.64920616 5.62230015 1.43607306
		 -2.2296021 5.62230015 1.32729506 -2.22939587 5.41045904 1.32809079 -2.22939587 5.0071091652 1.32809079
		 -2.2296021 4.79317284 1.32729506 -2.64920616 4.79317284 1.43607306 -2.64899969 5.0071091652 1.43686867
		 -2.71296787 5.0071091652 2.76036525 -2.71296787 5.41045904 2.76036525 -2.28651309 5.0071091652 3.034833431
		 -2.28651309 5.41045904 3.034833431 -2.81598973 5.0071091652 3.2008357 -2.81598973 5.41045904 3.2008357
		 -2.31587315 5.0071091652 3.11669207 -2.31587315 5.41045904 3.11669207 -2.57688475 5.0071091652 3.67283249
		 -2.57688475 5.41045904 3.67283249 -2.29073668 5.0071091652 3.2541244 -2.29073668 5.41045904 3.2541244
		 -2.12550282 5.0071091652 3.81741881 -2.12550282 5.41045904 3.81741881 -2.22103715 5.0071091652 3.31935215
		 -2.22103715 5.41045904 3.31935215 -1.77430367 5.0071091652 2.9031353 -1.56502438 5.0071091652 2.44118309
		 -1.56502438 5.41045904 2.44118309 -1.77430367 5.41045904 2.9031353 -1.72938538 5.0071091652 2.95179749
		 -1.25347328 5.0071091652 2.7765708 -1.25347328 5.41045904 2.7765708 -1.72938538 5.41045904 2.95179749
		 -1.69279253 5.0071091652 3.055567503 -1.23562789 5.0071091652 3.27510786 -1.23562789 5.41045904 3.27510786
		 -1.69279253 5.41045904 3.055567503 -1.70918822 5.0071091652 3.18648577 -1.51581216 5.0071091652 3.65531754
		 -1.51581216 5.41045904 3.65531754 -1.70918822 5.41045904 3.18648577;
	setAttr -s 172 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 3 0 4 5 0 6 7 0 0 13 0 1 14 0 2 25 0 3 26 0
		 4 8 0 5 11 0 6 22 0 7 21 0 8 12 0 9 2 0 8 16 1 10 3 0 9 10 1 11 15 0 10 27 0 11 8 1
		 12 6 0 13 9 1 12 23 1 14 10 1 13 14 1 15 7 0 14 28 0 15 12 1 16 32 1 17 4 0 16 17 1
		 18 5 0 17 18 1 19 11 1 18 19 1 20 15 1 19 20 1 21 37 0 20 21 1 22 38 0 21 22 1 23 39 1
		 22 23 1 23 16 1 24 9 0 25 41 0 24 25 1 26 42 0 25 26 1 27 43 1 26 27 1 28 44 1 27 28 0
		 29 1 0 28 29 1 30 0 0 29 30 1 31 13 0 30 31 1 31 24 0 32 48 1 33 17 0 32 33 1 34 18 0
		 33 34 1 35 19 1 34 35 1 36 20 1 35 36 1 37 53 0 36 37 1 38 54 0 37 38 1 39 55 1 38 39 1
		 39 32 1 40 24 1 41 49 0 40 41 1 42 50 0 41 42 1 43 51 1 42 43 1 44 52 1 43 44 1 45 29 0
		 44 45 1 46 30 0 45 46 1 47 31 1 46 47 1 47 40 1 48 40 1 49 33 0 48 49 1 50 34 0 49 50 1
		 51 35 1 50 51 1 52 36 1 51 52 1 53 45 0 52 53 1 54 46 0 53 54 1 55 47 1 54 55 1 55 48 1
		 31 56 0 24 57 0 56 57 1 13 58 0 56 58 1 9 59 0 58 59 1 57 59 1 56 60 0 57 61 0 60 61 1
		 58 62 0 60 62 1 59 63 0 62 63 1 61 63 1 60 64 0 61 65 0 64 65 1 62 66 0 64 66 1 63 67 0
		 66 67 0 65 67 1 64 68 0 65 69 0 68 69 0 66 70 0 68 70 0 67 71 0 70 71 0 69 71 0 14 72 0
		 28 73 0 72 73 1 27 74 0 74 73 1 10 75 0 75 74 1 72 75 1 72 76 0 73 77 0 76 77 1 74 78 0
		 78 77 1 75 79 0 79 78 1 76 79 1 76 80 0 77 81 0 80 81 1 78 82 0 82 81 1 79 83 0 83 82 1
		 80 83 0 80 84 0 81 85 0;
	setAttr ".ed[166:171]" 84 85 0 82 86 0 86 85 0 83 87 0 87 86 0 84 87 0;
	setAttr -s 86 -ch 344 ".fc[0:85]" -type "polyFaces" 
		f 4 16 15 -2 -14
		mu 0 4 16 17 3 2
		f 4 32 31 -3 -30
		mu 0 4 28 29 5 4
		f 4 2 9 19 -9
		mu 0 4 4 5 18 15
		f 4 3 11 40 -11
		mu 0 4 6 7 33 36
		f 4 33 -10 -32 34
		mu 0 4 31 19 11 30
		f 4 14 30 29 8
		mu 0 4 14 26 27 13
		f 4 22 43 -15 12
		mu 0 4 20 37 26 14
		f 4 24 23 -17 -22
		mu 0 4 22 23 17 16
		f 4 35 -18 -34 36
		mu 0 4 32 25 19 31
		f 4 -20 17 27 -13
		mu 0 4 15 18 24 21
		f 4 10 42 -23 20
		mu 0 4 12 35 37 20
		f 4 0 5 -25 -5
		mu 0 4 0 1 23 22
		f 4 -12 -26 -36 38
		mu 0 4 34 10 25 32
		f 4 -28 25 -4 -21
		mu 0 4 21 24 7 6
		f 4 28 62 61 -31
		mu 0 4 26 50 51 27
		f 4 64 63 -33 -62
		mu 0 4 52 53 29 28
		f 4 65 -35 -64 66
		mu 0 4 55 31 30 54
		f 4 67 -37 -66 68
		mu 0 4 56 32 31 55
		f 4 -38 -39 -68 70
		mu 0 4 58 34 32 56
		f 4 -41 37 72 -40
		mu 0 4 36 33 57 60
		f 4 -43 39 74 -42
		mu 0 4 37 35 59 61
		f 4 -44 41 75 -29
		mu 0 4 26 37 61 50
		f 4 44 13 6 -47
		mu 0 4 38 16 2 39
		f 4 1 7 -49 -7
		mu 0 4 2 3 41 40
		f 4 18 -51 -8 -16
		mu 0 4 17 43 42 3
		f 4 166 -169 -171 -172
		mu 0 4 114 115 116 117
		f 4 -54 -55 -27 -6
		mu 0 4 1 46 44 23
		f 4 -57 53 -1 -56
		mu 0 4 48 45 9 8
		f 4 -59 55 4 -58
		mu 0 4 49 47 0 22
		f 4 -135 136 138 -140
		mu 0 4 98 99 100 101
		f 4 60 94 93 -63
		mu 0 4 50 74 75 51
		f 4 96 95 -65 -94
		mu 0 4 76 77 53 52
		f 4 97 -67 -96 98
		mu 0 4 79 55 54 78
		f 4 99 -69 -98 100
		mu 0 4 80 56 55 79
		f 4 -70 -71 -100 102
		mu 0 4 82 58 56 80
		f 4 -73 69 104 -72
		mu 0 4 60 57 81 84
		f 4 -75 71 106 -74
		mu 0 4 61 59 83 85
		f 4 -76 73 107 -61
		mu 0 4 50 61 85 74
		f 4 76 46 45 -79
		mu 0 4 62 38 39 63
		f 4 48 47 -81 -46
		mu 0 4 40 41 65 64
		f 4 49 -83 -48 50
		mu 0 4 43 67 66 42
		f 4 51 -85 -50 52
		mu 0 4 44 68 67 43
		f 4 -86 -87 -52 54
		mu 0 4 46 70 68 44
		f 4 -89 85 56 -88
		mu 0 4 72 69 45 48
		f 4 -91 87 58 -90
		mu 0 4 73 71 47 49
		f 4 -92 89 59 -77
		mu 0 4 62 73 49 38
		f 4 92 78 77 -95
		mu 0 4 74 62 63 75
		f 4 80 79 -97 -78
		mu 0 4 64 65 77 76
		f 4 81 -99 -80 82
		mu 0 4 67 79 78 66
		f 4 83 -101 -82 84
		mu 0 4 68 80 79 67
		f 4 -102 -103 -84 86
		mu 0 4 70 82 80 68
		f 4 -105 101 88 -104
		mu 0 4 84 81 69 72
		f 4 -107 103 90 -106
		mu 0 4 85 83 71 73
		f 4 -108 105 91 -93
		mu 0 4 74 85 73 62
		f 4 -60 108 110 -110
		mu 0 4 38 49 87 86
		f 4 57 111 -113 -109
		mu 0 4 49 22 88 87
		f 4 21 113 -115 -112
		mu 0 4 22 16 89 88
		f 4 -45 109 115 -114
		mu 0 4 16 38 86 89
		f 4 -111 116 118 -118
		mu 0 4 86 87 91 90
		f 4 112 119 -121 -117
		mu 0 4 87 88 92 91
		f 4 114 121 -123 -120
		mu 0 4 88 89 93 92
		f 4 -116 117 123 -122
		mu 0 4 89 86 90 93
		f 4 -119 124 126 -126
		mu 0 4 90 91 95 94
		f 4 120 127 -129 -125
		mu 0 4 91 92 96 95
		f 4 122 129 -131 -128
		mu 0 4 92 93 97 96
		f 4 -124 125 131 -130
		mu 0 4 93 90 94 97
		f 4 -127 132 134 -134
		mu 0 4 94 95 99 98
		f 4 128 135 -137 -133
		mu 0 4 95 96 100 99
		f 4 130 137 -139 -136
		mu 0 4 96 97 101 100
		f 4 -132 133 139 -138
		mu 0 4 97 94 98 101
		f 4 26 141 -143 -141
		mu 0 4 23 44 103 102
		f 4 -53 143 144 -142
		mu 0 4 44 43 104 103
		f 4 -19 145 146 -144
		mu 0 4 43 17 105 104
		f 4 -24 140 147 -146
		mu 0 4 17 23 102 105
		f 4 142 149 -151 -149
		mu 0 4 102 103 107 106
		f 4 -145 151 152 -150
		mu 0 4 103 104 108 107
		f 4 -147 153 154 -152
		mu 0 4 104 105 109 108
		f 4 -148 148 155 -154
		mu 0 4 105 102 106 109
		f 4 150 157 -159 -157
		mu 0 4 106 107 111 110
		f 4 -153 159 160 -158
		mu 0 4 107 108 112 111
		f 4 -155 161 162 -160
		mu 0 4 108 109 113 112
		f 4 -156 156 163 -162
		mu 0 4 109 106 110 113
		f 4 158 165 -167 -165
		mu 0 4 110 111 115 114
		f 4 -161 167 168 -166
		mu 0 4 111 112 116 115
		f 4 -163 169 170 -168
		mu 0 4 112 113 117 116
		f 4 -164 164 171 -170
		mu 0 4 113 110 114 117;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "body";
	setAttr ".rp" -type "double3" 0.01627895202221552 4.1150851191119742 -0.011374028024472073 ;
	setAttr ".sp" -type "double3" 0.01627895202221552 4.1150851191119742 -0.011374028024472073 ;
createNode mesh -n "bodyShape" -p "body";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 1\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 1\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n"
		+ "                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 1\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 1\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polySplitRing -n "polySplitRing19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 3.1387035413221356 -0.011374028024472072 1;
	setAttr ".wt" 0.57336169481277466;
	setAttr ".dr" no;
	setAttr ".re" 32;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[0:11]" -type "float3"  -0.24662547 0 0.14238934 -0.14238934
		 0 0.24662547 0 0 0.28477868 0.14238934 0 0.24662547 0.24662547 0 0.14238934 0.28477868
		 0 0 0.24662547 0 -0.14238934 0.14238934 0 -0.24662547 0 0 -0.28477868 -0.14238934
		 0 -0.24662547 -0.24662547 0 -0.14238934 -0.28477868 0 0;
createNode polySplitRing -n "polySplitRing18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 3.1387035413221356 -0.011374028024472072 1;
	setAttr ".wt" 0.18899548053741455;
	setAttr ".re" 31;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 97 ".tk";
	setAttr ".tk[0]" -type "float3" -1.1588587 0.77151746 0.66906714 ;
	setAttr ".tk[1]" -type "float3" -0.66906714 0.77151746 1.1588587 ;
	setAttr ".tk[2]" -type "float3" 0 0.77151746 1.3381343 ;
	setAttr ".tk[3]" -type "float3" 0.66906714 0.77151746 1.1588587 ;
	setAttr ".tk[4]" -type "float3" 1.1588587 0.77151746 0.66906714 ;
	setAttr ".tk[5]" -type "float3" 1.3381343 0.77151746 0 ;
	setAttr ".tk[6]" -type "float3" 1.1588587 0.77151746 -0.66906714 ;
	setAttr ".tk[7]" -type "float3" 0.66906714 0.77151746 -1.1588587 ;
	setAttr ".tk[8]" -type "float3" 0 0.77151746 -1.3381343 ;
	setAttr ".tk[9]" -type "float3" -0.66906714 0.77151746 -1.1588587 ;
	setAttr ".tk[10]" -type "float3" -1.1588587 0.77151746 -0.66906714 ;
	setAttr ".tk[11]" -type "float3" -1.3381343 0.77151746 0 ;
	setAttr ".tk[24]" -type "float3" 0 0.77151746 0 ;
	setAttr ".tk[146]" -type "float3" 0 2.6554102e-005 0.097701862 ;
	setAttr ".tk[147]" -type "float3" -0.048850931 2.6554102e-005 0.084612295 ;
	setAttr ".tk[148]" -type "float3" -0.084612295 2.6554102e-005 0.048850931 ;
	setAttr ".tk[149]" -type "float3" -0.097701862 2.6554102e-005 0 ;
	setAttr ".tk[150]" -type "float3" -0.084612295 2.6554102e-005 -0.048850931 ;
	setAttr ".tk[151]" -type "float3" -0.048850931 2.6554102e-005 -0.084612295 ;
	setAttr ".tk[152]" -type "float3" 0 2.6554102e-005 -0.097701862 ;
	setAttr ".tk[153]" -type "float3" 0.048850931 2.6554102e-005 -0.084612295 ;
	setAttr ".tk[154]" -type "float3" 0.084612295 2.6554102e-005 -0.048850931 ;
	setAttr ".tk[155]" -type "float3" 0.097701862 2.6554102e-005 0 ;
	setAttr ".tk[156]" -type "float3" 0.084612295 2.6554102e-005 0.048850931 ;
	setAttr ".tk[157]" -type "float3" 0.048850931 2.6554102e-005 0.084612295 ;
	setAttr ".tk[158]" -type "float3" 0 -0.01068405 0.038073599 ;
	setAttr ".tk[159]" -type "float3" -0.0190368 -0.01068405 0.032972693 ;
	setAttr ".tk[160]" -type "float3" -0.032972693 -0.01068405 0.0190368 ;
	setAttr ".tk[161]" -type "float3" -0.038073599 -0.01068405 0 ;
	setAttr ".tk[162]" -type "float3" -0.032972693 -0.01068405 -0.0190368 ;
	setAttr ".tk[163]" -type "float3" -0.0190368 -0.01068405 -0.032972693 ;
	setAttr ".tk[164]" -type "float3" 0 -0.01068405 -0.038073599 ;
	setAttr ".tk[165]" -type "float3" 0.0190368 -0.01068405 -0.032972693 ;
	setAttr ".tk[166]" -type "float3" 0.032972693 -0.01068405 -0.0190368 ;
	setAttr ".tk[167]" -type "float3" 0.038073599 -0.01068405 0 ;
	setAttr ".tk[168]" -type "float3" 0.032972693 -0.01068405 0.0190368 ;
	setAttr ".tk[169]" -type "float3" 0.0190368 -0.01068405 0.032972693 ;
	setAttr ".tk[170]" -type "float3" 0 -0.011816641 0.075327434 ;
	setAttr ".tk[171]" -type "float3" -0.037663717 -0.011816641 0.065235451 ;
	setAttr ".tk[172]" -type "float3" -0.065235451 -0.011816641 0.037663717 ;
	setAttr ".tk[173]" -type "float3" -0.075327434 -0.011816641 0 ;
	setAttr ".tk[174]" -type "float3" -0.065235451 -0.011816641 -0.037663717 ;
	setAttr ".tk[175]" -type "float3" -0.037663717 -0.011816641 -0.065235451 ;
	setAttr ".tk[176]" -type "float3" 0 -0.011816641 -0.075327434 ;
	setAttr ".tk[177]" -type "float3" 0.037663717 -0.011816641 -0.065235451 ;
	setAttr ".tk[178]" -type "float3" 0.065235451 -0.011816641 -0.037663717 ;
	setAttr ".tk[179]" -type "float3" 0.075327434 -0.011816641 0 ;
	setAttr ".tk[180]" -type "float3" 0.065235451 -0.011816641 0.037663717 ;
	setAttr ".tk[181]" -type "float3" 0.037663717 -0.011816641 0.065235451 ;
	setAttr ".tk[182]" -type "float3" 0 -0.017576491 0.036387634 ;
	setAttr ".tk[183]" -type "float3" -0.018193817 -0.017576491 0.031512611 ;
	setAttr ".tk[184]" -type "float3" -0.031512611 -0.017576491 0.018193817 ;
	setAttr ".tk[185]" -type "float3" -0.036387634 -0.017576491 0 ;
	setAttr ".tk[186]" -type "float3" -0.031512611 -0.017576491 -0.018193817 ;
	setAttr ".tk[187]" -type "float3" -0.018193817 -0.017576491 -0.031512611 ;
	setAttr ".tk[188]" -type "float3" 0 -0.017576491 -0.036387634 ;
	setAttr ".tk[189]" -type "float3" 0.018193817 -0.017576491 -0.031512611 ;
	setAttr ".tk[190]" -type "float3" 0.031512611 -0.017576491 -0.018193817 ;
	setAttr ".tk[191]" -type "float3" 0.036387634 -0.017576491 0 ;
	setAttr ".tk[192]" -type "float3" 0.031512611 -0.017576491 0.018193817 ;
	setAttr ".tk[193]" -type "float3" 0.018193817 -0.017576491 0.031512611 ;
	setAttr ".tk[194]" -type "float3" 0 -0.023967156 0.072174497 ;
	setAttr ".tk[195]" -type "float3" -0.036087219 -0.023967156 0.062504947 ;
	setAttr ".tk[196]" -type "float3" -0.062504888 -0.023967156 0.036087248 ;
	setAttr ".tk[197]" -type "float3" -0.072174437 -0.023967156 0 ;
	setAttr ".tk[198]" -type "float3" -0.062504888 -0.023967156 -0.036087248 ;
	setAttr ".tk[199]" -type "float3" -0.036087219 -0.023967156 -0.062504947 ;
	setAttr ".tk[200]" -type "float3" 0 -0.023967156 -0.072174497 ;
	setAttr ".tk[201]" -type "float3" 0.036087219 -0.023967156 -0.062504947 ;
	setAttr ".tk[202]" -type "float3" 0.062504888 -0.023967156 -0.036087248 ;
	setAttr ".tk[203]" -type "float3" 0.072174437 -0.023967156 0 ;
	setAttr ".tk[204]" -type "float3" 0.062504888 -0.023967156 0.036087248 ;
	setAttr ".tk[205]" -type "float3" 0.036087219 -0.023967156 0.062504947 ;
	setAttr ".tk[206]" -type "float3" 0 -0.015615216 0.087976903 ;
	setAttr ".tk[207]" -type "float3" -0.043988451 -0.015615216 0.076190226 ;
	setAttr ".tk[208]" -type "float3" -0.076190226 -0.015615216 0.043988451 ;
	setAttr ".tk[209]" -type "float3" -0.087976903 -0.015615216 0 ;
	setAttr ".tk[210]" -type "float3" -0.076190226 -0.015615216 -0.043988451 ;
	setAttr ".tk[211]" -type "float3" -0.043988451 -0.015615216 -0.076190226 ;
	setAttr ".tk[212]" -type "float3" 0 -0.015615216 -0.087976903 ;
	setAttr ".tk[213]" -type "float3" 0.043988451 -0.015615216 -0.076190226 ;
	setAttr ".tk[214]" -type "float3" 0.076190226 -0.015615216 -0.043988451 ;
	setAttr ".tk[215]" -type "float3" 0.087976903 -0.015615216 0 ;
	setAttr ".tk[216]" -type "float3" 0.076190226 -0.015615216 0.043988451 ;
	setAttr ".tk[217]" -type "float3" 0.043988451 -0.015615216 0.076190226 ;
	setAttr ".tk[218]" -type "float3" 0 0.029977258 0.62417912 ;
	setAttr ".tk[219]" -type "float3" -0.31208956 0.029977258 0.54055494 ;
	setAttr ".tk[220]" -type "float3" -0.54055494 0.029977258 0.31208956 ;
	setAttr ".tk[221]" -type "float3" -0.62417912 0.029977258 0 ;
	setAttr ".tk[222]" -type "float3" -0.54055494 0.029977258 -0.31208956 ;
	setAttr ".tk[223]" -type "float3" -0.31208956 0.029977258 -0.54055494 ;
	setAttr ".tk[224]" -type "float3" 0 0.029977258 -0.62417912 ;
	setAttr ".tk[225]" -type "float3" 0.31208956 0.029977258 -0.54055494 ;
	setAttr ".tk[226]" -type "float3" 0.54055494 0.029977258 -0.31208956 ;
	setAttr ".tk[227]" -type "float3" 0.62417912 0.029977258 0 ;
	setAttr ".tk[228]" -type "float3" 0.54055494 0.029977258 0.31208956 ;
	setAttr ".tk[229]" -type "float3" 0.31208956 0.029977258 0.54055494 ;
createNode polySplitRing -n "polySplitRing17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 3.1387035413221356 -0.011374028024472072 1;
	setAttr ".wt" 0.56120973825454712;
	setAttr ".re" 26;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[146]" -type "float3" 0 0 -0.12479369 ;
	setAttr ".tk[147]" -type "float3" 0.062396843 0 -0.1080745 ;
	setAttr ".tk[148]" -type "float3" 0.1080745 0 -0.062396843 ;
	setAttr ".tk[149]" -type "float3" 0.12479369 0 0 ;
	setAttr ".tk[150]" -type "float3" 0.1080745 0 0.062396843 ;
	setAttr ".tk[151]" -type "float3" 0.062396843 0 0.1080745 ;
	setAttr ".tk[152]" -type "float3" 0 0 0.12479369 ;
	setAttr ".tk[153]" -type "float3" -0.062396843 0 0.1080745 ;
	setAttr ".tk[154]" -type "float3" -0.1080745 0 0.062396843 ;
	setAttr ".tk[155]" -type "float3" -0.12479369 0 0 ;
	setAttr ".tk[156]" -type "float3" -0.1080745 0 -0.062396843 ;
	setAttr ".tk[157]" -type "float3" -0.062396843 0 -0.1080745 ;
	setAttr ".tk[206]" -type "float3" 0 0.05202134 0.13661563 ;
	setAttr ".tk[207]" -type "float3" -0.068307817 0.05202134 0.11831259 ;
	setAttr ".tk[208]" -type "float3" -0.11831259 0.05202134 0.068307817 ;
	setAttr ".tk[209]" -type "float3" -0.13661563 0.05202134 0 ;
	setAttr ".tk[210]" -type "float3" -0.11831259 0.05202134 -0.068307817 ;
	setAttr ".tk[211]" -type "float3" -0.068307817 0.05202134 -0.11831259 ;
	setAttr ".tk[212]" -type "float3" 0 0.05202134 -0.13661563 ;
	setAttr ".tk[213]" -type "float3" 0.068307817 0.05202134 -0.11831259 ;
	setAttr ".tk[214]" -type "float3" 0.11831259 0.05202134 -0.068307817 ;
	setAttr ".tk[215]" -type "float3" 0.13661563 0.05202134 0 ;
	setAttr ".tk[216]" -type "float3" 0.11831259 0.05202134 0.068307817 ;
	setAttr ".tk[217]" -type "float3" 0.068307817 0.05202134 0.11831259 ;
createNode polySplitRing -n "polySplitRing16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[300:301]" "e[303]" "e[305]" "e[307]" "e[309]" "e[311]" "e[313]" "e[315]" "e[317]" "e[319]" "e[321]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 3.1387035413221356 -0.011374028024472072 1;
	setAttr ".wt" 0.76737266778945923;
	setAttr ".dr" no;
	setAttr ".re" 300;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[194:205]" -type "float3"  0 0.066030346 0.12368599 -0.061843891
		 0.066030346 0.10711494 -0.10711674 0.066030346 0.061842993 -0.12368778 0.066030346
		 0 -0.10711674 0.066030346 -0.061842993 -0.061843891 0.066030346 -0.10711494 0 0.066030346
		 -0.12368599 0.061843891 0.066030346 -0.10711494 0.10711674 0.066030346 -0.061842993
		 0.12368778 0.066030346 0 0.10711674 0.066030346 0.061842993 0.061843891 0.066030346
		 0.10711494;
createNode polySplitRing -n "polySplitRing15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[348:349]" "e[351]" "e[353]" "e[355]" "e[357]" "e[359]" "e[361]" "e[363]" "e[365]" "e[367]" "e[369]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 3.1387035413221356 -0.011374028024472072 1;
	setAttr ".wt" 0.72685277462005615;
	setAttr ".dr" no;
	setAttr ".re" 348;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[182:193]" -type "float3"  0 0.1187893 0.13078795 -0.065393977
		 0.1187893 0.11326568 -0.11326568 0.1187893 0.065393977 -0.13078795 0.1187893 0 -0.11326568
		 0.1187893 -0.065393977 -0.065393977 0.1187893 -0.11326568 0 0.1187893 -0.13078795
		 0.065393977 0.1187893 -0.11326568 0.11326568 0.1187893 -0.065393977 0.13078795 0.1187893
		 0 0.11326568 0.1187893 0.065393977 0.065393977 0.1187893 0.11326568;
createNode polySplitRing -n "polySplitRing14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[324:325]" "e[327]" "e[329]" "e[331]" "e[333]" "e[335]" "e[337]" "e[339]" "e[341]" "e[343]" "e[345]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 3.1387035413221356 -0.011374028024472072 1;
	setAttr ".wt" 0.65034693479537964;
	setAttr ".re" 324;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[300:301]" "e[303]" "e[305]" "e[307]" "e[309]" "e[311]" "e[313]" "e[315]" "e[317]" "e[319]" "e[321]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 3.1387035413221356 -0.011374028024472072 1;
	setAttr ".wt" 0.50653064250946045;
	setAttr ".re" 300;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[300:301]" "e[303]" "e[305]" "e[307]" "e[309]" "e[311]" "e[313]" "e[315]" "e[317]" "e[319]" "e[321]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 3.1387035413221356 -0.011374028024472072 1;
	setAttr ".wt" 0.64568555355072021;
	setAttr ".dr" no;
	setAttr ".re" 300;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[146:157]" -type "float3"  0 -0.3602922 0.36789557 -0.18394779
		 -0.3602922 0.31860679 -0.31860679 -0.3602922 0.18394779 -0.36789557 -0.3602922 0
		 -0.31860679 -0.3602922 -0.18394779 -0.18394779 -0.3602922 -0.31860679 0 -0.3602922
		 -0.36789557 0.18394779 -0.3602922 -0.31860679 0.31860679 -0.3602922 -0.18394779 0.36789557
		 -0.3602922 0 0.31860679 -0.3602922 0.18394779 0.18394779 -0.3602922 0.31860679;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 3.1387035413221356 -0.011374028024472072 1;
	setAttr ".wt" 0.68744653463363647;
	setAttr ".dr" no;
	setAttr ".re" 26;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 3.1387035413221356 -0.011374028024472072 1;
	setAttr ".wt" 0.89184057712554932;
	setAttr ".dr" no;
	setAttr ".re" 26;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[122:133]" -type "float3"  0 0.13167159 0.28749838 -0.14374919
		 0.13167159 0.24898086 -0.24898086 0.13167159 0.14374919 -0.28749838 0.13167159 0
		 -0.24898086 0.13167159 -0.14374919 -0.14374919 0.13167159 -0.24898086 0 0.13167159
		 -0.28749838 0.14374919 0.13167159 -0.24898086 0.24898086 0.13167159 -0.14374919 0.28749838
		 0.13167159 0 0.24898086 0.13167159 0.14374919 0.14374919 0.13167159 0.24898086;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 3.1387035413221356 -0.011374028024472072 1;
	setAttr ".wt" 0.92071932554244995;
	setAttr ".dr" no;
	setAttr ".re" 26;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[86:121]" -type "float3"  0 -0.024153711 0 0 -0.024153711
		 0 0 -0.024153711 0 0 -0.024153711 0 0 -0.024153711 0 0 -0.024153711 0 0 -0.024153711
		 0 0 -0.024153711 0 0 -0.024153711 0 0 -0.024153711 0 0 -0.024153711 0 0 -0.024153711
		 0 0 -0.13700834 0 0 -0.13700834 0 0 -0.13700834 0 0 -0.13700834 0 0 -0.13700834 0
		 0 -0.13700834 0 0 -0.13700834 0 0 -0.13700834 0 0 -0.13700834 0 0 -0.13700834 0 0
		 -0.13700834 0 0 -0.13700834 0 0 -0.26316708 0.19323334 -0.09661667 -0.26316708 0.16734493
		 -0.16734493 -0.26316708 0.09661667 -0.19323334 -0.26316708 0 -0.16734493 -0.26316708
		 -0.09661667 -0.09661667 -0.26316708 -0.16734493 0 -0.26316708 -0.19323334 0.09661667
		 -0.26316708 -0.16734493 0.16734493 -0.26316708 -0.09661667 0.19323334 -0.26316708
		 0 0.16734493 -0.26316708 0.09661667 0.09661667 -0.26316708 0.16734493;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 3.1387035413221356 -0.011374028024472072 1;
	setAttr ".wt" 0.86302238702774048;
	setAttr ".dr" no;
	setAttr ".re" 26;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 3.1387035413221356 -0.011374028024472072 1;
	setAttr ".wt" 0.8908427357673645;
	setAttr ".dr" no;
	setAttr ".re" 26;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[86:97]" -type "float3"  0 0 -0.23470071 0.11735035
		 0 -0.20325671 0.20325671 0 -0.11735035 0.23470071 0 0 0.20325671 0 0.11735035 0.11735035
		 0 0.20325671 0 0 0.23470071 -0.11735035 0 0.20325671 -0.20325671 0 0.11735035 -0.23470071
		 0 0 -0.20325671 0 -0.11735035 -0.11735035 0 -0.20325671;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 3.1387035413221356 -0.011374028024472072 1;
	setAttr ".wt" 0.90633088350296021;
	setAttr ".dr" no;
	setAttr ".re" 26;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[74:85]" -type "float3"  0 0 -0.20348643 0.10174321
		 0 -0.17622422 0.17622422 0 -0.10174321 0.20348643 0 0 0.17622422 0 0.10174321 0.10174321
		 0 0.17622422 0 0 0.20348643 -0.10174321 0 0.17622422 -0.17622422 0 0.10174321 -0.20348643
		 0 0 -0.17622422 0 -0.10174321 -0.10174321 0 -0.17622422;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 3.1387035413221356 -0.011374028024472072 1;
	setAttr ".wt" 0.9833793044090271;
	setAttr ".dr" no;
	setAttr ".re" 26;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 3.1387035413221356 -0.011374028024472072 1;
	setAttr ".wt" 0.95132642984390259;
	setAttr ".dr" no;
	setAttr ".re" 26;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 49 ".tk";
	setAttr ".tk[12]" -type "float3" -0.51242697 0.12934744 0.29584971 ;
	setAttr ".tk[13]" -type "float3" -0.29584971 0.12934744 0.51242697 ;
	setAttr ".tk[14]" -type "float3" 0 0.12934744 0.59169942 ;
	setAttr ".tk[15]" -type "float3" 0.29584971 0.12934744 0.51242697 ;
	setAttr ".tk[16]" -type "float3" 0.51242697 0.12934744 0.29584971 ;
	setAttr ".tk[17]" -type "float3" 0.59169942 0.12934744 0 ;
	setAttr ".tk[18]" -type "float3" 0.51242697 0.12934744 -0.29584971 ;
	setAttr ".tk[19]" -type "float3" 0.29584971 0.12934744 -0.51242697 ;
	setAttr ".tk[20]" -type "float3" 0 0.12934744 -0.59169942 ;
	setAttr ".tk[21]" -type "float3" -0.29584971 0.12934744 -0.51242697 ;
	setAttr ".tk[22]" -type "float3" -0.51242697 0.12934744 -0.29584971 ;
	setAttr ".tk[23]" -type "float3" -0.59169942 0.12934744 0 ;
	setAttr ".tk[25]" -type "float3" 0 0.12934744 0 ;
	setAttr ".tk[26]" -type "float3" 0 1.4724243 1.867029 ;
	setAttr ".tk[27]" -type "float3" -0.93351448 1.4724243 1.6168957 ;
	setAttr ".tk[28]" -type "float3" -1.6168957 1.4724243 0.93351448 ;
	setAttr ".tk[29]" -type "float3" -1.867029 1.4724243 0 ;
	setAttr ".tk[30]" -type "float3" -1.6168957 1.4724243 -0.93351448 ;
	setAttr ".tk[31]" -type "float3" -0.93351448 1.4724243 -1.6168957 ;
	setAttr ".tk[32]" -type "float3" 0 1.4724243 -1.867029 ;
	setAttr ".tk[33]" -type "float3" 0.93351448 1.4724243 -1.6168957 ;
	setAttr ".tk[34]" -type "float3" 1.6168957 1.4724243 -0.93351448 ;
	setAttr ".tk[35]" -type "float3" 1.867029 1.4724243 0 ;
	setAttr ".tk[36]" -type "float3" 1.6168957 1.4724243 0.93351448 ;
	setAttr ".tk[37]" -type "float3" 0.93351448 1.4724243 1.6168957 ;
	setAttr ".tk[38]" -type "float3" 0 0.7255339 1.6829062 ;
	setAttr ".tk[39]" -type "float3" -0.84145308 0.7255339 1.4574392 ;
	setAttr ".tk[40]" -type "float3" -1.4574392 0.7255339 0.84145308 ;
	setAttr ".tk[41]" -type "float3" -1.6829062 0.7255339 0 ;
	setAttr ".tk[42]" -type "float3" -1.4574392 0.7255339 -0.84145308 ;
	setAttr ".tk[43]" -type "float3" -0.84145308 0.7255339 -1.4574392 ;
	setAttr ".tk[44]" -type "float3" 0 0.7255339 -1.6829062 ;
	setAttr ".tk[45]" -type "float3" 0.84145308 0.7255339 -1.4574392 ;
	setAttr ".tk[46]" -type "float3" 1.4574392 0.7255339 -0.84145308 ;
	setAttr ".tk[47]" -type "float3" 1.6829062 0.7255339 0 ;
	setAttr ".tk[48]" -type "float3" 1.4574392 0.7255339 0.84145308 ;
	setAttr ".tk[49]" -type "float3" 0.84145308 0.7255339 1.4574392 ;
	setAttr ".tk[50]" -type "float3" 0 0.33863622 0.76751471 ;
	setAttr ".tk[51]" -type "float3" -0.38375735 0.33863622 0.66468722 ;
	setAttr ".tk[52]" -type "float3" -0.66468722 0.33863622 0.38375735 ;
	setAttr ".tk[53]" -type "float3" -0.76751471 0.33863622 0 ;
	setAttr ".tk[54]" -type "float3" -0.66468722 0.33863622 -0.38375735 ;
	setAttr ".tk[55]" -type "float3" -0.38375735 0.33863622 -0.66468722 ;
	setAttr ".tk[56]" -type "float3" 0 0.33863622 -0.76751471 ;
	setAttr ".tk[57]" -type "float3" 0.38375735 0.33863622 -0.66468722 ;
	setAttr ".tk[58]" -type "float3" 0.66468722 0.33863622 -0.38375735 ;
	setAttr ".tk[59]" -type "float3" 0.76751471 0.33863622 0 ;
	setAttr ".tk[60]" -type "float3" 0.66468722 0.33863622 0.38375735 ;
	setAttr ".tk[61]" -type "float3" 0.38375735 0.33863622 0.66468722 ;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[84:85]" "e[87]" "e[89]" "e[91]" "e[93]" "e[95]" "e[97]" "e[99]" "e[101]" "e[103]" "e[105]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 3.1387035413221356 -0.011374028024472072 1;
	setAttr ".wt" 0.62648838758468628;
	setAttr ".dr" no;
	setAttr ".re" 84;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[12]" -type "float3" -1.4673445 0.20350397 0.84717202 ;
	setAttr ".tk[13]" -type "float3" -0.84717202 0.20350397 1.4673445 ;
	setAttr ".tk[14]" -type "float3" 0 0.20350397 1.694344 ;
	setAttr ".tk[15]" -type "float3" 0.84717202 0.20350397 1.4673445 ;
	setAttr ".tk[16]" -type "float3" 1.4673445 0.20350397 0.84717202 ;
	setAttr ".tk[17]" -type "float3" 1.694344 0.20350397 0 ;
	setAttr ".tk[18]" -type "float3" 1.4673445 0.20350397 -0.84717202 ;
	setAttr ".tk[19]" -type "float3" 0.84717202 0.20350397 -1.4673445 ;
	setAttr ".tk[20]" -type "float3" 0 0.20350397 -1.694344 ;
	setAttr ".tk[21]" -type "float3" -0.84717202 0.20350397 -1.4673445 ;
	setAttr ".tk[22]" -type "float3" -1.4673445 0.20350397 -0.84717202 ;
	setAttr ".tk[23]" -type "float3" -1.694344 0.20350397 0 ;
	setAttr ".tk[25]" -type "float3" 0 0.20350397 0 ;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[60:61]" "e[63]" "e[65]" "e[67]" "e[69]" "e[71]" "e[73]" "e[75]" "e[77]" "e[79]" "e[81]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 3.1387035413221356 -0.011374028024472072 1;
	setAttr ".wt" 0.52537411451339722;
	setAttr ".re" 60;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[26:37]" -type "float3"  0 0.98778152 -0.7611478 0.3805739
		 0.98778152 -0.65917349 0.65917349 0.98778152 -0.3805739 0.7611478 0.98778152 0 0.65917349
		 0.98778152 0.3805739 0.3805739 0.98778152 0.65917349 0 0.98778152 0.7611478 -0.3805739
		 0.98778152 0.65917349 -0.65917349 0.98778152 0.3805739 -0.7611478 0.98778152 0 -0.65917349
		 0.98778152 -0.3805739 -0.3805739 0.98778152 -0.65917349;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 3.1387035413221356 -0.011374028024472072 1;
	setAttr ".wt" 0.48413538932800293;
	setAttr ".dr" no;
	setAttr ".re" 26;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".r" 3.0371962277664042;
	setAttr ".h" 6.2774070826442712;
	setAttr ".sa" 12;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 0.33060425272339172 0 -0.085705653552823308 0 0 0.61013395558941352 0 0
		 0.15310955335277507 0 0.59061062336813597 0 -2.3352814336649326 5.2077363878378824 1.7833296815302513 1;
createNode polyTweak -n "polyTweak32";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[84:87]" -type "float3"  0.2936579 0 -0.088209398 -0.6371634
		 0 0.19880657 -0.6371634 0 0.19880657 0.2936579 0 -0.088209398;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 0.55976685762613132 0 0 0 0 1 0 0 0 0 1 0 -6.6295536989658954 0.67946364022748496 1.0125138140744463 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.8159757 0.6811806 3.5633895 ;
	setAttr ".rs" 48096;
	setAttr ".lt" -type "double3" -8.6042284408449632e-016 -2.2204460492503131e-016 
		0.37851487121857919 ;
	setAttr ".tp" 0;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.1334826650701837 0.35063840486066367 3.2952205515927568 ;
	setAttr ".cbx" -type "double3" -5.4984687225680133 1.011722818389106 3.8315586424893633 ;
createNode polyTweak -n "polyTweak31";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[80:83]" -type "float3"  -0.067263022 0 -0.35348371
		 -0.41045928 0 0.26511928 -0.41045928 0 0.26511928 -0.067263022 0 -0.35348371;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 0.55976685762613132 0 0 0 0 1 0 0 0 0 1 0 -6.6295536989658954 0.67946364022748496 1.0125138140744463 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.7352972 0.6811806 3.0744028 ;
	setAttr ".rs" 58874;
	setAttr ".lt" -type "double3" -9.783840404509192e-016 1.1102230246251565e-016 0.53579952161158517 ;
	setAttr ".tp" 0;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.1488588225985756 0.35063840486066367 3.0332702971524492 ;
	setAttr ".cbx" -type "double3" -5.3217352144470738 1.011722818389106 3.1155351973599688 ;
createNode polyTweak -n "polyTweak30";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[76:79]" -type "float3"  -0.52977616 0 -0.18501399
		 0.015267489 0 0.37955147 0.015267489 0 0.37955147 -0.52977616 0 -0.18501399;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 0.55976685762613132 0 0 0 0 1 0 0 0 0 1 0 -6.6295536989658954 0.67946364022748496 1.0125138140744463 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.9390945 0.6811806 2.6964407 ;
	setAttr ".rs" 57010;
	setAttr ".lt" -type "double3" 9.7144514654701197e-016 0 0.44693797652540729 ;
	setAttr ".ls" -type "double3" 1 1 1.6371111612733953 ;
	setAttr ".tp" 0;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.2001079432384811 0.35063840486066367 2.3730257130688921 ;
	setAttr ".cbx" -type "double3" -5.6780813377874306 1.011722818389106 3.0198559142178789 ;
createNode polyTweak -n "polyTweak29";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[72:75]" -type "float3"  -0.7865985 0 0.02967013 0.14598018
		 0 0.21404453 0.14598018 0 0.21404453 -0.7865985 0 0.02967013;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 0.55976685762613132 0 0 0 0 1 0 0 0 0 1 0 -6.6295536989658954 0.67946364022748496 1.0125138140744463 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -6.2743254 0.6811806 2.5745835 ;
	setAttr ".rs" 34879;
	setAttr ".lt" -type "double3" -4.8830905792343027e-016 1.7403393205858082e-016 0.51452900248411471 ;
	setAttr ".tp" 0;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.2743252932331837 0.35063840486066367 2.1589811421460405 ;
	setAttr ".cbx" -type "double3" -6.2743252932331837 1.011722818389106 2.9901857949322954 ;
createNode polyTweak -n "polyTweak28";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[68:71]" -type "float3"  0.51174384 0 -0.0090745958
		 0.51174384 0 -0.0090745958 -0.51174384 0 -0.29196367 -0.51174384 0 -0.29196367;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[29]";
	setAttr ".ix" -type "matrix" 0.55976685762613132 0 0 0 0 1 0 0 0 0 1 0 -6.6295536989658954 0.67946364022748496 1.0125138140744463 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.4769087 0.6811806 3.6376114 ;
	setAttr ".rs" 61657;
	setAttr ".lt" -type "double3" -5.5511151231257827e-016 -1.1102230246251565e-016 
		0.562966302286807 ;
	setAttr ".tp" 0;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.7900072226575912 0.35063840486066367 3.3643082953519121 ;
	setAttr ".cbx" -type "double3" -7.163809870009235 1.011722818389106 3.9109143591946856 ;
createNode polyTweak -n "polyTweak27";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[64:67]" -type "float3"  0.39373922 0 0.44366246 0.39373922
		 0 0.44366246 0.03311399 0 -0.17514104 0.03311399 0 -0.17514104;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[29]";
	setAttr ".ix" -type "matrix" 0.55976685762613132 0 0 0 0 1 0 0 0 0 1 0 -6.6295536989658954 0.67946364022748496 1.0125138140744463 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.5611959 0.6811806 3.0998297 ;
	setAttr ".rs" 54323;
	setAttr ".lt" -type "double3" -3.2612801348363973e-016 -1.1102230246251565e-016 
		0.40505169481074726 ;
	setAttr ".tp" 0;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.9752272436086908 0.35063840486066367 3.063730893237044 ;
	setAttr ".cbx" -type "double3" -7.1471639852785573 1.011722818389106 3.1359283305234209 ;
createNode polyTweak -n "polyTweak26";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[60:63]" -type "float3"  0.0080743283 0 0.33426934
		 0.0080743283 0 0.33426934 0.48034406 0 -0.2043857 0.48034406 0 -0.2043857;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[29]";
	setAttr ".ix" -type "matrix" 0.55976685762613132 0 0 0 0 1 0 0 0 0 1 0 -6.6295536989658954 0.67946364022748496 1.0125138140744463 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.3487649 0.6811806 2.7127056 ;
	setAttr ".rs" 62024;
	setAttr ".lt" -type "double3" -2.4702462297909733e-015 -1.1102230246251565e-016 
		0.47507204360964195 ;
	setAttr ".tp" 0;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.6306158872898351 0.35063840486066367 2.4072793103284136 ;
	setAttr ".cbx" -type "double3" -7.066913796202468 1.011722818389106 3.0181319094723955 ;
createNode polyTweak -n "polyTweak25";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[56]" -type "float3" -0.41068241 0 0.24062277 ;
	setAttr ".tk[57]" -type "float3" -0.41068241 0 0.24062277 ;
	setAttr ".tk[58]" -type "float3" 0.31228432 0 0.035621863 ;
	setAttr ".tk[59]" -type "float3" 0.31228432 0 0.035621863 ;
	setAttr ".tk[64]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".tk[65]" -type "float3" -1.4901161e-008 0 1.4901161e-008 ;
	setAttr ".tk[66]" -type "float3" 5.9604645e-008 0 1.4901161e-008 ;
	setAttr ".tk[67]" -type "float3" 5.9604645e-008 0 1.4901161e-008 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[29]";
	setAttr ".ix" -type "matrix" 0.55976685762613132 0 0 0 0 1 0 0 0 0 1 0 -6.6295536989658954 0.67946364022748496 1.0125138140744463 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -6.9847832 0.68118066 2.5745835 ;
	setAttr ".rs" 46936;
	setAttr ".lt" -type "double3" -7.0555669723650613e-016 -1.1102230246251565e-016 
		0.33644139393231054 ;
	setAttr ".lr" -type "double3" 0 11.028632090587291 0 ;
	setAttr ".tp" 0;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.9847831390044526 0.35063840486066367 2.1589811421460405 ;
	setAttr ".cbx" -type "double3" -6.9847831390044526 1.0117228779937508 2.9901857949322954 ;
createNode polyTweak -n "polyTweak24";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[1]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[2]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[3]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[9]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[10]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[13]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[14]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[24]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[25]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[26]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[27]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[28]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[29]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[30]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[31]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[40]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[41]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[42]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[43]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[44]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[45]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[46]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[47]" -type "float3" 0 0 -1.3576535 ;
	setAttr ".tk[48]" -type "float3" 0 0 -0.70265985 ;
	setAttr ".tk[49]" -type "float3" 0 0 -0.69102722 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.69102722 ;
	setAttr ".tk[51]" -type "float3" 0 0 -0.70265985 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.70265985 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.69102722 ;
	setAttr ".tk[54]" -type "float3" 0 0 -0.69102722 ;
	setAttr ".tk[55]" -type "float3" 0 0 -0.70265985 ;
createNode polySplitRing -n "polySplitRing40";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[60]" "e[69]" "e[71]" "e[73]" "e[77]" "e[79]" "e[81]" "e[83]";
	setAttr ".ix" -type "matrix" 0.55976685762613132 0 0 0 0 1 0 0 0 0 1 0 -6.6295536989658954 0.67946364022748496 1.0125138140744463 1;
	setAttr ".wt" 0.50717020034790039;
	setAttr ".dr" no;
	setAttr ".re" 60;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak23";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[40:47]" -type "float3"  0 0 -0.029645875 0 0 0.029645875
		 0 0 0.029645875 0 0 -0.029645875 0 0 -0.029645875 0 0 0.029645875 0 0 0.029645875
		 0 0 -0.029645875;
createNode polySplitRing -n "polySplitRing39";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[45]" "e[47]" "e[49]" "e[51]" "e[60]" "e[69]" "e[71]" "e[73]";
	setAttr ".ix" -type "matrix" 0.55976685762613132 0 0 0 0 1 0 0 0 0 1 0 -6.6295536989658954 0.67946364022748496 1.0125138140744463 1;
	setAttr ".wt" 0.7885134220123291;
	setAttr ".dr" no;
	setAttr ".re" 60;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak22";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[32:39]" -type "float3"  0 0 0.032087162 0 0 -0.032087162
		 0 0 -0.032087162 0 0 0.032087103 0 0 0.032087103 0 0 -0.032087103 0 0 -0.032087103
		 0 0 0.032087162;
createNode polySplitRing -n "polySplitRing38";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[28]" "e[37]" "e[39]" "e[41]" "e[45]" "e[47]" "e[49]" "e[51]";
	setAttr ".ix" -type "matrix" 0.55976685762613132 0 0 0 0 1 0 0 0 0 1 0 -6.6295536989658954 0.67946364022748496 1.0125138140744463 1;
	setAttr ".wt" 0.17620477080345154;
	setAttr ".re" 28;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak21";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[24:31]" -type "float3"  0 0 -0.17366855 0 0 -0.10823607
		 0 0 -0.10823607 0 0 -0.17366855 0 0 -0.17366855 0 0 -0.10823607 0 0 -0.10823607 0
		 0 -0.17366855;
createNode polySplitRing -n "polySplitRing37";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[6:7]" "e[18]" "e[26]" "e[28]" "e[37]" "e[39]" "e[41]";
	setAttr ".ix" -type "matrix" 0.55976685762613132 0 0 0 0 1 0 0 0 0 1 0 -6.6295536989658954 0.67946364022748496 1.0125138140744463 1;
	setAttr ".wt" 0.88773030042648315;
	setAttr ".dr" no;
	setAttr ".re" 28;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[16:23]" -type "float3"  0 0 0.024907939 0 0 -0.024907939
		 0 0 -0.024907939 0 0 0.024907939 0 0 0.024907939 0 0 -0.024907939 0 0 -0.024907939
		 0 0 0.024907939;
createNode polySplitRing -n "polySplitRing36";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[6:7]" "e[10:11]" "e[14]" "e[18]" "e[22]" "e[26]";
	setAttr ".ix" -type "matrix" 0.55976685762613132 0 0 0 0 1 0 0 0 0 1 0 -6.6295536989658954 0.67946364022748496 1.0125138140744463 1;
	setAttr ".wt" 0.11827755719423294;
	setAttr ".re" 14;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[8:15]" -type "float3"  0 0.036369462 -0.36160773
		 0 0.036369447 0.36160773 0 0.036369447 0.36160773 0 0.036369462 -0.36160773 0 -0.11870279
		 -0.36160773 0 -0.11870281 0.36160773 0 -0.11870281 0.36160773 0 -0.11870279 -0.36160773;
createNode polySplitRing -n "polySplitRing35";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[12]" "e[17]";
	setAttr ".ix" -type "matrix" 0.55976685762613132 0 0 0 0 1 0 0 0 0 1 0 -6.6295536989658954 0.67946364022748496 1.0125138140744463 1;
	setAttr ".wt" 0.518798828125;
	setAttr ".dr" no;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing34";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 0.55976685762613132 0 0 0 0 1 0 0 0 0 1 0 -6.6295536989658954 0.67946364022748496 1.0125138140744463 1;
	setAttr ".wt" 0.2822621762752533;
	setAttr ".re" 8;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyCube -n "polyCube2";
	setAttr ".w" 1.2692049759977975;
	setAttr ".h" 1.3589272804549699;
	setAttr ".d" 5.9474352044935834;
	setAttr ".cuv" 4;
createNode polyNormal -n "polyNormal1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyTweak -n "polyTweak33";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[0]" -type "float3" 0.17266814 0.62206185 -0.099690057 ;
	setAttr ".tk[1]" -type "float3" 0.099690057 0.62206185 -0.17266814 ;
	setAttr ".tk[2]" -type "float3" 0 0.62206185 -0.19938011 ;
	setAttr ".tk[3]" -type "float3" -0.099690057 0.62206185 -0.17266814 ;
	setAttr ".tk[4]" -type "float3" -0.17266814 0.62206185 -0.099690057 ;
	setAttr ".tk[5]" -type "float3" -0.19938011 0.62206185 0 ;
	setAttr ".tk[6]" -type "float3" -0.17266814 0.62206185 0.099690057 ;
	setAttr ".tk[7]" -type "float3" -0.099690057 0.62206185 0.17266814 ;
	setAttr ".tk[8]" -type "float3" 0 0.62206185 0.19938011 ;
	setAttr ".tk[9]" -type "float3" 0.099690057 0.62206185 0.17266814 ;
	setAttr ".tk[10]" -type "float3" 0.17266814 0.62206185 0.099690057 ;
	setAttr ".tk[11]" -type "float3" 0.19938011 0.62206185 0 ;
	setAttr ".tk[24]" -type "float3" 0 0.62206185 0 ;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "f[12:23]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[7:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 4.1150851191119742 -0.011374028024472073 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.016278952 2.3699608 1.4941941 ;
	setAttr ".rs" 56304;
	setAttr ".lt" -type "double3" 0 8.3266726846886741e-017 1.768425415748736 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.79055270586428961 2.3699608982638907 1.3860990688230621 ;
	setAttr ".cbx" -type "double3" 0.82311060990872065 2.3699608982638907 1.6022892877485382 ;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[254]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 4.1150851191119742 -0.011374028024472073 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[254]";
createNode polyTweak -n "polyTweak34";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[253]" -type "float3" -0.45769072 -0.012852192 -1.0868237 ;
	setAttr ".tk[254]" -type "float3" 0 -0.012852192 -1.519204 ;
	setAttr ".tk[255]" -type "float3" 0.45769072 -0.012852192 -1.0868237 ;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[254]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 4.1150851191119742 -0.011374028024472073 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[254]";
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[253]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 4.1150851191119742 -0.011374028024472073 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[253]";
createNode polyCloseBorder -n "polyCloseBorder1";
	setAttr ".ics" -type "componentList" 2 "e[3:6]" "e[504]";
createNode polyCloseBorder -n "polyCloseBorder2";
	setAttr ".ics" -type "componentList" 3 "e[0]" "e[9:11]" "e[506]";
createNode transformGeometry -n "transformGeometry2";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.01627895202221552 4.1150851191119742 -0.011374028024472073 1;
createNode polySplit -n "polySplit1";
	setAttr -s 5 ".e[0:4]"  0 0.5 0.5 0.5 0;
	setAttr -s 5 ".d[0:4]"  -2147483643 -2147483144 -2147483143 -2147483142 -2147483637;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 1 "f[252:259]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.016278982 2.3699608 -0.011373937 ;
	setAttr ".rs" 64021;
	setAttr ".lt" -type "double3" 0.0023460387673800431 -6.3440718988405924e-016 -3.8380697978243492 ;
	setAttr ".ls" -type "double3" 1 1 5.3058675872060226 ;
	setAttr ".tp" 0;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5973843336105347 2.3699605464935303 -1.6250371932983398 ;
	setAttr ".cbx" -type "double3" 1.6299422979354858 2.3699607849121094 1.6022893190383911 ;
createNode polyTweak -n "polyTweak35";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[253]" -type "float3" -0.40556425 -0.54483056 0.70245689 ;
	setAttr ".tk[254]" -type "float3" 4.494083e-008 -0.54483229 0.8111285 ;
	setAttr ".tk[255]" -type "float3" -0.40556425 -0.54483122 -7.911953e-008 ;
	setAttr ".tk[256]" -type "float3" 1.1418694e-007 -0.54483122 1.5455663e-008 ;
	setAttr ".tk[257]" -type "float3" 0.40556425 -0.54483229 0.70245695 ;
	setAttr ".tk[258]" -type "float3" 0.40556425 -0.54483122 -5.3841831e-008 ;
	setAttr ".tk[259]" -type "float3" -0.8111285 -0.54483193 -7.5859006e-008 ;
	setAttr ".tk[260]" -type "float3" -0.70245695 -0.54483014 0.40556401 ;
	setAttr ".tk[261]" -type "float3" 0.8111285 -0.54483193 -1.3388255e-007 ;
	setAttr ".tk[262]" -type "float3" 0.70245695 -0.54483122 0.40556413 ;
	setAttr ".tk[263]" -type "float3" -0.40556425 -0.54483122 -0.70245689 ;
	setAttr ".tk[264]" -type "float3" -0.70245695 -0.54483122 -0.40556413 ;
	setAttr ".tk[265]" -type "float3" 1.8254195e-007 -0.54483122 -0.8111285 ;
	setAttr ".tk[266]" -type "float3" 0.40556425 -0.54483193 -0.70245695 ;
	setAttr ".tk[267]" -type "float3" 0.70245689 -0.54483229 -0.40556425 ;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "f[12:23]";
createNode polyCloseBorder -n "polyCloseBorder3";
	setAttr ".ics" -type "componentList" 1 "e[12:23]";
createNode polySplit -n "polySplit2";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483635 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483634 -2147483630;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483636 -2147483628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	setAttr -s 5 ".e[0:4]"  1 0.5 0.5 0.5 1;
	setAttr -s 5 ".d[0:4]"  -2147483632 -2147483121 -2147483122 -2147483120 -2147483626;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "transformGeometry1.og" "r_armShape.i";
connectAttr "polyNormal1.out" "l_armShape.i";
connectAttr "polySplit5.out" "bodyShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak13.out" "polySplitRing19.ip";
connectAttr "bodyShape.wm" "polySplitRing19.mp";
connectAttr "polySplitRing18.out" "polyTweak13.ip";
connectAttr "polyTweak12.out" "polySplitRing18.ip";
connectAttr "bodyShape.wm" "polySplitRing18.mp";
connectAttr "polySplitRing17.out" "polyTweak12.ip";
connectAttr "polyTweak11.out" "polySplitRing17.ip";
connectAttr "bodyShape.wm" "polySplitRing17.mp";
connectAttr "polySplitRing16.out" "polyTweak11.ip";
connectAttr "polyTweak10.out" "polySplitRing16.ip";
connectAttr "bodyShape.wm" "polySplitRing16.mp";
connectAttr "polySplitRing15.out" "polyTweak10.ip";
connectAttr "polyTweak9.out" "polySplitRing15.ip";
connectAttr "bodyShape.wm" "polySplitRing15.mp";
connectAttr "polySplitRing14.out" "polyTweak9.ip";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "bodyShape.wm" "polySplitRing14.mp";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "bodyShape.wm" "polySplitRing13.mp";
connectAttr "polyTweak8.out" "polySplitRing12.ip";
connectAttr "bodyShape.wm" "polySplitRing12.mp";
connectAttr "polySplitRing11.out" "polyTweak8.ip";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "bodyShape.wm" "polySplitRing11.mp";
connectAttr "polyTweak7.out" "polySplitRing10.ip";
connectAttr "bodyShape.wm" "polySplitRing10.mp";
connectAttr "polySplitRing9.out" "polyTweak7.ip";
connectAttr "polyTweak6.out" "polySplitRing9.ip";
connectAttr "bodyShape.wm" "polySplitRing9.mp";
connectAttr "polySplitRing8.out" "polyTweak6.ip";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "bodyShape.wm" "polySplitRing8.mp";
connectAttr "polyTweak5.out" "polySplitRing7.ip";
connectAttr "bodyShape.wm" "polySplitRing7.mp";
connectAttr "polySplitRing6.out" "polyTweak5.ip";
connectAttr "polyTweak4.out" "polySplitRing6.ip";
connectAttr "bodyShape.wm" "polySplitRing6.mp";
connectAttr "polySplitRing5.out" "polyTweak4.ip";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "bodyShape.wm" "polySplitRing5.mp";
connectAttr "polyTweak3.out" "polySplitRing4.ip";
connectAttr "bodyShape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing3.out" "polyTweak3.ip";
connectAttr "polyTweak2.out" "polySplitRing3.ip";
connectAttr "bodyShape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing2.out" "polyTweak2.ip";
connectAttr "polyTweak1.out" "polySplitRing2.ip";
connectAttr "bodyShape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak1.ip";
connectAttr "polyCylinder1.out" "polySplitRing1.ip";
connectAttr "bodyShape.wm" "polySplitRing1.mp";
connectAttr "polyTweak32.out" "transformGeometry1.ig";
connectAttr "polyExtrudeFace10.out" "polyTweak32.ip";
connectAttr "polyTweak31.out" "polyExtrudeFace10.ip";
connectAttr "r_armShape.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak31.ip";
connectAttr "polyTweak30.out" "polyExtrudeFace9.ip";
connectAttr "r_armShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak30.ip";
connectAttr "polyTweak29.out" "polyExtrudeFace8.ip";
connectAttr "r_armShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak29.ip";
connectAttr "polyTweak28.out" "polyExtrudeFace7.ip";
connectAttr "r_armShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak28.ip";
connectAttr "polyTweak27.out" "polyExtrudeFace6.ip";
connectAttr "r_armShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak27.ip";
connectAttr "polyTweak26.out" "polyExtrudeFace5.ip";
connectAttr "r_armShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak26.ip";
connectAttr "polyTweak25.out" "polyExtrudeFace4.ip";
connectAttr "r_armShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak25.ip";
connectAttr "polyTweak24.out" "polyExtrudeFace3.ip";
connectAttr "r_armShape.wm" "polyExtrudeFace3.mp";
connectAttr "polySplitRing40.out" "polyTweak24.ip";
connectAttr "polyTweak23.out" "polySplitRing40.ip";
connectAttr "r_armShape.wm" "polySplitRing40.mp";
connectAttr "polySplitRing39.out" "polyTweak23.ip";
connectAttr "polyTweak22.out" "polySplitRing39.ip";
connectAttr "r_armShape.wm" "polySplitRing39.mp";
connectAttr "polySplitRing38.out" "polyTweak22.ip";
connectAttr "polyTweak21.out" "polySplitRing38.ip";
connectAttr "r_armShape.wm" "polySplitRing38.mp";
connectAttr "polySplitRing37.out" "polyTweak21.ip";
connectAttr "polyTweak20.out" "polySplitRing37.ip";
connectAttr "r_armShape.wm" "polySplitRing37.mp";
connectAttr "polySplitRing36.out" "polyTweak20.ip";
connectAttr "polyTweak19.out" "polySplitRing36.ip";
connectAttr "r_armShape.wm" "polySplitRing36.mp";
connectAttr "polySplitRing35.out" "polyTweak19.ip";
connectAttr "polySplitRing34.out" "polySplitRing35.ip";
connectAttr "r_armShape.wm" "polySplitRing35.mp";
connectAttr "polyCube2.out" "polySplitRing34.ip";
connectAttr "r_armShape.wm" "polySplitRing34.mp";
connectAttr "polySurfaceShape1.o" "polyNormal1.ip";
connectAttr "polySplitRing19.out" "polyTweak33.ip";
connectAttr "polyTweak33.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyExtrudeEdge1.ip";
connectAttr "bodyShape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak34.out" "polyMergeVert1.ip";
connectAttr "bodyShape.wm" "polyMergeVert1.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak34.ip";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "bodyShape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polyMergeVert3.ip";
connectAttr "bodyShape.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert3.out" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polyCloseBorder2.ip";
connectAttr "polyCloseBorder2.out" "transformGeometry2.ig";
connectAttr "transformGeometry2.og" "polySplit1.ip";
connectAttr "polySplit1.out" "polyExtrudeFace11.ip";
connectAttr "bodyShape.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak35.ip";
connectAttr "polyTweak35.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyCloseBorder3.ip";
connectAttr "polyCloseBorder3.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "bodyShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "r_armShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "l_armShape.iog" ":initialShadingGroup.dsm" -na;
// End of parent_rig_03.ma
