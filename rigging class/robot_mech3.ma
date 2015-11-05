//Maya ASCII 2015 scene
//Name: robot_mech3.ma
//Last modified: Tue, Sep 01, 2015 01:24:46 AM
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
	setAttr ".t" -type "double3" 12.612209878807089 6.3299016631169351 2.6871434443123241 ;
	setAttr ".r" -type "double3" 340.46164727075774 -643.00000000011903 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 13.967331411618817;
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
	setAttr ".t" -type "double3" -0.13497146609778521 3.5936152848535503 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 16.437380275992059;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 4.3688719720781162 2.646468434532228 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 3.0470840857230375;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	setAttr ".rp" -type "double3" 0 4.2043492252942487 0 ;
	setAttr ".sp" -type "double3" 0 4.2043492252942487 0 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 283 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[1]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[2]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[3]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[4]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[5]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[6]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[7]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[8]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[9]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[10]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[11]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[12]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[13]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[14]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[15]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[16]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[17]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[18]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[19]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[20]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[28]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[29]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[30]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[31]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[32]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[33]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[34]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[36]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[37]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[38]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[39]" -type "float3" 0 0 -1.7330838 ;
	setAttr ".pt[40]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[41]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[42]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[43]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[44]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[45]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[46]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[47]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[48]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[49]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[50]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[51]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[52]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[54]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[55]" -type "float3" 0 0 -1.7330838 ;
	setAttr ".pt[56]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[58]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[59]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[60]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[61]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[62]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[63]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[64]" -type "float3" 0 0 -1.7330838 ;
	setAttr ".pt[65]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[67]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[68]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[69]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[70]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[71]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[72]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[73]" -type "float3" 0 0 -1.7330838 ;
	setAttr ".pt[74]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[75]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[76]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[77]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[78]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[79]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[80]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[81]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[82]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[83]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[84]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[85]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[86]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[87]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[88]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[89]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[90]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[91]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[92]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[93]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[94]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[95]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[96]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[97]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[98]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[99]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[100]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[101]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[111]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[112]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[113]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[114]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[115]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[116]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[117]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[118]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[119]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[120]" -type "float3" 0 0 -1.7330838 ;
	setAttr ".pt[121]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[122]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[123]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[124]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[125]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[126]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[127]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[128]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[129]" -type "float3" 0 0 -1.7330838 ;
	setAttr ".pt[130]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[131]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[132]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[133]" -type "float3" 0 0 -1.7330838 ;
	setAttr ".pt[134]" -type "float3" 0 0 -1.7330838 ;
	setAttr ".pt[135]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[136]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[137]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[138]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[139]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[140]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[141]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[142]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[143]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[144]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[145]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[146]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[147]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[148]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[149]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[150]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[151]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[152]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[153]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[154]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[155]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[156]" -type "float3" 0 0 -1.7330838 ;
	setAttr ".pt[157]" -type "float3" 0 0 -1.7330838 ;
	setAttr ".pt[158]" -type "float3" 0 0 -1.7330838 ;
	setAttr ".pt[159]" -type "float3" 0 0 -1.7330838 ;
	setAttr ".pt[160]" -type "float3" 0 0 -1.7330841 ;
	setAttr ".pt[161]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[162]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[163]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[164]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[165]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[166]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[167]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[168]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[169]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[170]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[171]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[172]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[173]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[174]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[175]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[176]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[177]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[178]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[179]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[180]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[181]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[182]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[183]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[184]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[185]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[186]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[187]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[188]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[189]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[190]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[191]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[192]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[193]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[194]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[195]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[196]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[197]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[198]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[199]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[200]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[201]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[202]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[203]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[204]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[205]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[206]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[207]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[208]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[209]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[210]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[211]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[212]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[213]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[214]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[215]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[216]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[217]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[218]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[219]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[220]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[221]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[222]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[223]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[224]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[225]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[226]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[227]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[228]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[229]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[230]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[231]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[232]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[233]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[234]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[235]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[236]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[237]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[238]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[239]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[240]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[241]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[242]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[243]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[244]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[245]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[246]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[247]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[248]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[249]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[250]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[251]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[252]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[253]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[254]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[255]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[256]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[257]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[258]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[259]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[260]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[261]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[262]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[263]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[264]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[265]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[266]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[267]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[268]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[269]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[270]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[271]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[272]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[273]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[274]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[275]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[277]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[278]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[279]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[280]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[281]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[282]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[283]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[284]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[285]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[286]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[287]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[288]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[289]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[290]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[291]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[292]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[293]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[294]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[295]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[296]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[297]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[298]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[299]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[300]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[301]" -type "float3" 0 0 1.6925904 ;
	setAttr ".pt[302]" -type "float3" 0 0 1.6925904 ;
createNode transform -n "pCube1" -p "pCylinder1";
	setAttr ".t" -type "double3" -0.075555962790700981 3.0468190791317569 1.3231197126413692 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.54968052912429399 0.54968052912429399 0.54968052912429399 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 174 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[1]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[2]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[3]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[4]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[5]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[6]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[7]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[8]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[9]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[10]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[11]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[12]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[13]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[14]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[15]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[16]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[17]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[18]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[19]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[20]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[21]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[22]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[23]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[24]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[25]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[26]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[27]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[28]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[29]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[30]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[31]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[32]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[33]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[34]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[35]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[36]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[37]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[38]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[39]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[40]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[41]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[42]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[43]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[44]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[45]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[46]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[47]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[48]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[49]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[50]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[51]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[52]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[53]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[54]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[55]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[56]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[57]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[58]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[59]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[60]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[61]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[62]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[63]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[64]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[65]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[66]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[67]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[68]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[69]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[70]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[71]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[72]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[73]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[74]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[75]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[76]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[77]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[78]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[79]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[80]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[81]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[82]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[83]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[84]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[85]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[86]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[87]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[88]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[89]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[90]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[91]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[92]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[93]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[94]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[95]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[96]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[97]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[98]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[99]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[100]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[101]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[102]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[103]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[104]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[105]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[106]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[107]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[108]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[109]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[110]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[111]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[112]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[113]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[114]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[115]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[116]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[117]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[118]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[119]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[120]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[121]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[122]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[123]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[124]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[125]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[126]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[127]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[128]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[129]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[130]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[131]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[132]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[133]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[134]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[135]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[136]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[137]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[138]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[139]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[146]" -type "float3" -0.019262994 -0.2896167 -0.066001661 ;
	setAttr ".pt[147]" -type "float3" 0.16631548 -0.22050178 -0.066001944 ;
	setAttr ".pt[150]" -type "float3" 0.16614312 -0.22050178 0.06600187 ;
	setAttr ".pt[151]" -type "float3" -0.019723453 -0.2896167 0.066001944 ;
	setAttr ".pt[152]" -type "float3" -0.16606387 -0.22050178 0.066001944 ;
	setAttr ".pt[153]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[154]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[155]" -type "float3" -0.16571844 -0.22050178 -0.066001721 ;
	setAttr ".pt[156]" -type "float3" 0.2822994 -0.0028123558 -0.066001944 ;
	setAttr ".pt[159]" -type "float3" 0.28199965 -0.0028123558 0.06600187 ;
	setAttr ".pt[160]" -type "float3" -0.2822994 -0.0028123558 0.066001944 ;
	setAttr ".pt[161]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[162]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[163]" -type "float3" -0.28169867 -0.0028123558 -0.066001721 ;
	setAttr ".pt[164]" -type "float3" -0.019262986 0.2896167 -0.066001721 ;
	setAttr ".pt[165]" -type "float3" 0.18256225 0.22441202 -0.066001944 ;
	setAttr ".pt[168]" -type "float3" 0.182373 0.22441202 0.06600187 ;
	setAttr ".pt[169]" -type "float3" -0.019723453 0.2896167 0.066001944 ;
	setAttr ".pt[170]" -type "float3" -0.18231058 0.22441202 0.066001944 ;
	setAttr ".pt[171]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[172]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[173]" -type "float3" -0.18193141 0.22441202 -0.066001721 ;
	setAttr ".pt[181]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[182]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[184]" -type "float3" 0 -0.68920588 0 ;
	setAttr ".pt[185]" -type "float3" 0 -0.68920588 0 ;
	setAttr ".pt[186]" -type "float3" 0 -0.68920588 0 ;
	setAttr ".pt[187]" -type "float3" 0 -0.68920588 0 ;
	setAttr ".pt[188]" -type "float3" 0 -0.68920588 0 ;
	setAttr ".pt[189]" -type "float3" 0 -0.68920588 0 ;
	setAttr ".pt[190]" -type "float3" 0 -0.68920588 0 ;
	setAttr ".pt[191]" -type "float3" 0.040108599 -0.68920588 0 ;
	setAttr ".pt[192]" -type "float3" 0.040108599 -0.68920588 0 ;
	setAttr ".pt[193]" -type "float3" 0 -0.68920588 0 ;
createNode transform -n "pCube2" -p "pCylinder1";
	setAttr ".t" -type "double3" -0.075555962790700981 2.0522930943540474 -1.3342751373765278 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 0.54968052912429399 0.54968052912429399 0.54968052912429399 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 261 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.625 0 0.375 0.25
		 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.625 0.32511112 0.70011109 0.25 0.29988891 0.25 0.375 0.32511112
		 0.29988891 0 0.375 0.92488885 0.625 0.92488885 0.70011109 0 0.625 0.42651045 0.80151039
		 0.25 0.19848958 0.25 0.375 0.42651045 0.19848958 0 0.375 0.82348955 0.625 0.82348955
		 0.80151039 0 0.625 0.37851977 0.75351977 0.25 0.24648026 0.25 0.375 0.37851977 0.24648026
		 0 0.375 0.87148023 0.625 0.87148023 0.75351977 0 0.625 0.28477514 0.65977514 0.25
		 0.34022486 0.25 0.375 0.28477514 0.34022486 0 0.375 0.96522486 0.625 0.96522486 0.65977514
		 0 0.625 0.46561542 0.84061539 0.25 0.15938459 0.25 0.375 0.46561542 0.15938459 0
		 0.375 0.78438461 0.625 0.78438461 0.84061539 0 0.625 0 0.65977514 0 0.65977514 0.25
		 0.625 0.25 0.70011109 0 0.70011109 0.25 0.80151039 0.25 0.80151039 0 0.84061539 0
		 0.84061539 0.25 0.875 0 0.875 0.25 0.58965653 0.32511112 0.58965653 0.28477514 0.58965653
		 0.25 0.58965653 0 0.58965653 1 0.58965653 0.96522486 0.58965653 0.92488885 0.58965653
		 0.87148023 0.58965653 0.82348955 0.58965653 0.78438461 0.58965653 0.75 0.58965653
		 0.5 0.58965653 0.46561542 0.58965653 0.42651045 0.58965653 0.37851977 0.55679327
		 0.25 0.55679327 0.28477514 0.55679327 0.32511112 0.55679327 0.37851977 0.55679327
		 0.42651045 0.55679327 0.46561545 0.55679327 0.5 0.55679327 0.75 0.55679327 0.78438461
		 0.55679327 0.82348955 0.55679327 0.87148023 0.55679327 0.92488885 0.55679327 0.96522486
		 0.55679327 0 0.55679327 1 0.84061539 0.25 0.875 0.25 0.875 0 0.84061539 0 0.80151045
		 0 0.80151045 0.25 0.65977514 0.25 0.70011109 0.25 0.70011109 0 0.65977514 0 0.625
		 0 0.625 0.25 0.51437062 0.25 0.51437062 0.28477514 0.51437062 0.32511112 0.51437062
		 0.37851977 0.51437062 0.42651045 0.51437062 0.46561545 0.51437062 0.5 0.51437062
		 0.75 0.51437062 0.78438461 0.51437062 0.82348955 0.51437062 0.87148023 0.51437062
		 0.92488885 0.51437062 0.96522486 0.51437062 0 0.51437062 1 0.41274175 0.25 0.41274175
		 0.28477514 0.41274175 0.32511112 0.41274175 0.37851977 0.41274175 0.42651045 0.41274175
		 0.46561542 0.41274175 0.5 0.41274175 0.75 0.41274175 0.78438461 0.41274175 0.82348955
		 0.41274175 0.87148023 0.41274175 0.92488885 0.41274175 0.96522486 0.41274175 0 0.41274175
		 1 0.46573919 0.25 0.46573919 0.28477514 0.46573919 0.32511112 0.46573919 0.37851977
		 0.46573919 0.42651045 0.46573919 0.46561545 0.46573919 0.5 0.46573919 0.75 0.46573919
		 0.78438461 0.46573919 0.82348955 0.46573919 0.87148023 0.46573919 0.92488885 0.46573919
		 0.96522486 0.46573919 0 0.46573919 1 0.51437062 0.39528698 0.46573919 0.39528698
		 0.41274178 0.39528698 0.22971307 0.25 0.375 0.39528698 0.22971307 0 0.375 0.85471308
		 0.41274178 0.85471308 0.46573919 0.85471308 0.51437062 0.85471308 0.55679327 0.85471308
		 0.58965653 0.85471308 0.625 0.85471308 0.77028692 0 0.625 0.39528698 0.77028692 0.25
		 0.58965653 0.39528698 0.55679327 0.39528698 0.55679327 0.37851977 0.58965653 0.37851977
		 0.58965653 0.39528698 0.55679327 0.39528698 0.51437062 0.39528698 0.51437062 0.37851977
		 0.41274178 0.39528698 0.41274175 0.37851977 0.46573919 0.37851977 0.46573919 0.39528698
		 0.51437062 0.37851977 0.46573919 0.37851977 0.41274175 0.37851977 0.41274178 0.39528698
		 0.46573919 0.39528698 0.51437062 0.39528698 0.55679327 0.39528698 0.58965653 0.39528698
		 0.58965653 0.37851977 0.55679327 0.37851977 0.46573919 0.37851977 0.41274175 0.37851977
		 0.41274178 0.39528698 0.46573919 0.39528698 0.55679327 0.39528698 0.58965653 0.39528698
		 0.58965653 0.37851977 0.55679327 0.37851977 0.51437062 0.37851977 0.46573919 0.37851977
		 0.41274178 0.37851977 0.41274178 0.39528698 0.46573919 0.39528698 0.51437062 0.39528698
		 0.55679327 0.39528698 0.58965653 0.39528698 0.58965653 0.37851977 0.55679327 0.37851977
		 0.51437062 0.37851977 0.46573919 0.37851977 0.41274178 0.37851977 0.41274178 0.39528698
		 0.46573919 0.39528698 0.51437062 0.39528698 0.55679327 0.39528698 0.58965653 0.39528698
		 0.58965653 0.37851977 0.55679327 0.37851977 0.51437062 0.37851977 0.46573919 0.37851977
		 0.41274178 0.37851977 0.41274178 0.39528698 0.46573919 0.39528698 0.51437062 0.39528698
		 0.55679327 0.39528698 0.58965653 0.39528698 0.58965653 0.37851977 0.55679327 0.37851977
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0;
	setAttr ".uvst[0].uvsp[250:260]" 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 174 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[1]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[2]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[3]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[4]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[5]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[6]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[7]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[8]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[9]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[10]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[11]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[12]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[13]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[14]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[15]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[16]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[17]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[18]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[19]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[20]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[21]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[22]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[23]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[24]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[25]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[26]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[27]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[28]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[29]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[30]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[31]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[32]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[33]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[34]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[35]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[36]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[37]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[38]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[39]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[40]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[41]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[42]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[43]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[44]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[45]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[46]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[47]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[48]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[49]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[50]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[51]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[52]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[53]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[54]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[55]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[56]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[57]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[58]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[59]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[60]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[61]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[62]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[63]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[64]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[65]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[66]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[67]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[68]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[69]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[70]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[71]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[72]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[73]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[74]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[75]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[76]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[77]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[78]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[79]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[80]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[81]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[82]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[83]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[84]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[85]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[86]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[87]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[88]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[89]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[90]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[91]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[92]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[93]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[94]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[95]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[96]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[97]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[98]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[99]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[100]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[101]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[102]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[103]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[104]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[105]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[106]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[107]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[108]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[109]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[110]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[111]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[112]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[113]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[114]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[115]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[116]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[117]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[118]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[119]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[120]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[121]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[122]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[123]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[124]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[125]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[126]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[127]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[128]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[129]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[130]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[131]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[132]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[133]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[134]" -type "float3" 0.040108599 -1.1795694 0 ;
	setAttr ".pt[135]" -type "float3" 0 -1.1795694 0 ;
	setAttr ".pt[136]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[137]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[138]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[139]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[146]" -type "float3" -0.019262994 -0.2896167 -0.066001661 ;
	setAttr ".pt[147]" -type "float3" 0.16631548 -0.22050178 -0.066001944 ;
	setAttr ".pt[150]" -type "float3" 0.16614312 -0.22050178 0.06600187 ;
	setAttr ".pt[151]" -type "float3" -0.019723453 -0.2896167 0.066001944 ;
	setAttr ".pt[152]" -type "float3" -0.16606387 -0.22050178 0.066001944 ;
	setAttr ".pt[153]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[154]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[155]" -type "float3" -0.16571844 -0.22050178 -0.066001721 ;
	setAttr ".pt[156]" -type "float3" 0.2822994 -0.0028123558 -0.066001944 ;
	setAttr ".pt[159]" -type "float3" 0.28199965 -0.0028123558 0.06600187 ;
	setAttr ".pt[160]" -type "float3" -0.2822994 -0.0028123558 0.066001944 ;
	setAttr ".pt[161]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[162]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[163]" -type "float3" -0.28169867 -0.0028123558 -0.066001721 ;
	setAttr ".pt[164]" -type "float3" -0.019262986 0.2896167 -0.066001721 ;
	setAttr ".pt[165]" -type "float3" 0.18256225 0.22441202 -0.066001944 ;
	setAttr ".pt[168]" -type "float3" 0.182373 0.22441202 0.06600187 ;
	setAttr ".pt[169]" -type "float3" -0.019723453 0.2896167 0.066001944 ;
	setAttr ".pt[170]" -type "float3" -0.18231058 0.22441202 0.066001944 ;
	setAttr ".pt[171]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[172]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[173]" -type "float3" -0.18193141 0.22441202 -0.066001721 ;
	setAttr ".pt[181]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[182]" -type "float3" 0.040108599 0 0 ;
	setAttr ".pt[184]" -type "float3" 0 -0.68920588 0 ;
	setAttr ".pt[185]" -type "float3" 0 -0.68920588 0 ;
	setAttr ".pt[186]" -type "float3" 0 -0.68920588 0 ;
	setAttr ".pt[187]" -type "float3" 0 -0.68920588 0 ;
	setAttr ".pt[188]" -type "float3" 0 -0.68920588 0 ;
	setAttr ".pt[189]" -type "float3" 0 -0.68920588 0 ;
	setAttr ".pt[190]" -type "float3" 0 -0.68920588 0 ;
	setAttr ".pt[191]" -type "float3" 0.040108599 -0.68920588 0 ;
	setAttr ".pt[192]" -type "float3" 0.040108599 -0.68920588 0 ;
	setAttr ".pt[193]" -type "float3" 0 -0.68920588 0 ;
	setAttr -s 194 ".vt";
	setAttr ".vt[0:165]"  -1.55314684 -0.22278525 1.052129269 1.72900558 -0.22278525 1.052129269
		 -1.55314684 0.084700108 1.052129269 1.72900558 0.084700108 1.052129269 -1.55314684 0.084700108 -1.052129269
		 1.72900558 0.084700108 -1.052129269 -1.55314684 -0.22278525 -1.052129269 1.72900558 -0.22278525 -1.052129269
		 1.83123493 0.084700108 0.41991663 -1.5531466 0.084700108 0.41991663 -1.5531466 -0.22278525 0.41991663
		 1.83123493 -0.22278525 0.41991663 1.83123493 0.084700108 -0.43356514 -1.5531466 0.084700108 -0.43356514
		 -1.5531466 -0.22278525 -0.43356514 1.83123493 -0.22278525 -0.43356514 1.59795189 0.084700108 0.090526581
		 -1.5531466 0.084700108 0.090526581 -1.5531466 -0.22278525 0.090526581 1.59795189 -0.22278525 0.090526581
		 1.73057652 0.084700108 0.75942564 -1.5531466 0.084700108 0.75942564 -1.5531466 -0.22278525 0.75942564
		 1.73057652 -0.22278525 0.75942564 1.73057652 0.084700108 -0.76271296 -1.5531466 0.084700108 -0.76271296
		 -1.5531466 -0.22278525 -0.76271296 1.73057652 -0.22278525 -0.76271296 3.23738146 -0.22278525 0.75942564
		 3.23738146 -0.22278525 1.052129269 3.23738146 0.084700108 0.75942564 3.23738146 0.084700108 1.052129269
		 3.23738146 -0.22278525 0.41991663 3.23738146 0.084700108 0.41991663 3.23738146 -0.22278525 -0.43356514
		 3.23738146 0.084700108 -0.43356514 3.23738146 -0.22278525 -0.76271296 3.23738146 0.084700108 -0.76271296
		 3.23738146 -0.22278525 -1.052129269 3.23738146 0.084700108 -1.052129269 1.28795052 0.084700108 0.41991663
		 1.21019614 0.084700108 0.75942564 1.17881906 0.084700108 1.052129269 1.17881906 -0.22278525 1.052129269
		 1.21019614 -0.22278525 0.75942564 1.28795052 -0.22278525 0.41991663 1.19496179 -0.22278525 0.090526581
		 1.28795052 -0.22278525 -0.43356514 1.21019614 -0.22278525 -0.76271296 1.17881906 -0.22278525 -1.052129269
		 1.17881906 0.084700108 -1.052129269 1.21019614 0.084700108 -0.76271296 1.28795052 0.084700108 -0.43356514
		 1.19496179 0.084700108 0.090526581 0.70175648 0.084700108 1.052129269 0.70272315 0.084700108 0.75942564
		 0.70511854 0.084700108 0.41991663 0.70175648 0.084700108 0.090526581 0.70511854 0.084700108 -0.43356514
		 0.70272315 0.084700108 -0.76271296 0.70175648 0.084700108 -1.052129269 0.70175648 -0.22278525 -1.052129269
		 0.70272315 -0.22278525 -0.76271296 0.70511854 -0.22278525 -0.43356514 0.70175648 -0.22278525 0.090526581
		 0.70511854 -0.22278525 0.41991663 0.70272315 -0.22278525 0.75942564 0.70175648 -0.22278525 1.052129269
		 2.27015138 0.084700108 -0.76271296 2.26755786 0.084700108 -1.052129269 2.26755786 -0.22278525 -1.052129269
		 2.27015138 -0.22278525 -0.76271296 2.27657843 -0.22278525 -0.43356514 2.27657843 0.084700108 -0.43356514
		 2.26761127 0.084700108 0.75942564 2.27435207 0.084700108 0.41991663 2.27435207 -0.22278525 0.41991663
		 2.26761127 -0.22278525 0.75942564 2.26489115 -0.22278525 1.052129269 2.26489115 0.084700108 1.052129269
		 0.17555988 0.084700108 1.052129269 0.17630106 0.084700108 0.75942564 0.17813748 0.084700108 0.41991663
		 0.17555994 0.084700108 0.090526581 0.17813748 0.084700108 -0.43356514 0.17630106 0.084700108 -0.76271296
		 0.17555988 0.084700108 -1.052129269 0.17555988 -0.22278525 -1.052129269 0.17630106 -0.22278525 -0.76271296
		 0.17813748 -0.22278525 -0.43356514 0.17555994 -0.22278525 0.090526581 0.17813748 -0.22278525 0.41991663
		 0.17630106 -0.22278525 0.75942564 0.17555988 -0.22278525 1.052129269 -1.085010767 0.084700108 1.052129269
		 -1.08480978 0.084700108 0.75942564 -1.084312677 0.084700108 0.41991663 -1.085010529 0.084700108 0.090526581
		 -1.084312677 0.084700108 -0.43356514 -1.08480978 0.084700108 -0.76271296 -1.085010767 0.084700108 -1.052129269
		 -1.085010767 -0.22278525 -1.052129269 -1.08480978 -0.22278525 -0.76271296 -1.084312677 -0.22278525 -0.43356514
		 -1.085010529 -0.22278525 0.090526581 -1.084312677 -0.22278525 0.41991663 -1.08480978 -0.22278525 0.75942564
		 -1.085010767 -0.22278525 1.052129269 -0.42764837 0.084700108 1.052129269 -0.42716575 0.084700108 0.75942564
		 -0.42597014 0.084700108 0.41991663 -0.42764825 0.084700108 0.090526581 -0.42597014 0.084700108 -0.43356514
		 -0.42716575 0.084700108 -0.76271296 -0.42764837 0.084700108 -1.052129269 -0.42764837 -0.22278525 -1.052129269
		 -0.42716575 -0.22278525 -0.76271296 -0.42597014 -0.22278525 -0.43356514 -0.42764825 -0.22278525 0.090526581
		 -0.42597014 -0.22278525 0.41991663 -0.42716575 -0.22278525 0.75942564 -0.42764837 -0.22278525 1.052129269
		 0.17646049 0.084700108 -0.16763139 -0.42706198 0.084700108 -0.16763139 -1.084766626 0.084700108 -0.16763139
		 -1.5531466 0.084700108 -0.16763139 -1.5531466 -0.22278525 -0.16763139 -1.084766626 -0.22278525 -0.16763139
		 -0.42706198 -0.22278525 -0.16763139 0.17646049 -0.22278525 -0.16763139 0.70293117 -0.22278525 -0.16763139
		 1.20080519 -0.22278525 -0.16763139 1.60550141 -0.22278525 -0.16763139 1.60550141 0.084700108 -0.16763139
		 1.20080519 0.084700108 -0.16763139 0.70293117 0.084700108 -0.16763139 0.54962307 4.092498302 0.090526581
		 0.55052018 4.092498302 -0.16763139 0.926292 3.70783567 0.090526581 0.93075466 3.70783567 -0.16763139
		 0.17646049 4.092498302 -0.16763139 0.17555994 4.092498302 0.090526581 -0.81496006 3.70783567 0.090527534
		 -0.81477374 3.70783567 -0.16763091 -0.3129217 4.092498302 0.090527058 -0.31247395 4.092498302 -0.16763115
		 0.17555995 3.59205484 0.090526462 -0.18737358 3.45688725 0.090527058 -1.085010529 3.25686073 0.090527534
		 -1.084766626 3.25686073 -0.16763091 -0.18703651 3.45688725 -0.16763115 0.17646049 3.59205484 -0.16763139
		 0.4626565 3.45688725 -0.16763139 1.20080519 3.25686073 -0.16763139 1.19496179 3.25686073 0.090526581
		 0.46198112 3.45688725 0.090526581 -0.41420203 3.031154871 0.090527058 -1.085010529 2.85159755 0.090527058
		 -1.084766626 2.85159755 -0.16763115 -0.41361576 3.031154871 -0.16763115 0.68997717 3.031154871 -0.16763139
		 1.20080519 2.85159755 -0.16763139 1.19496179 2.85159755 0.090526581 0.68880248 3.031154871 0.090526581
		 0.17555994 2.45925474 0.090526581 -0.21914715 2.58677506 0.090527058;
	setAttr ".vt[166:193]" -1.085010529 2.30073214 0.090527058 -1.084766626 2.30073214 -0.16763115
		 -0.21877706 2.58677506 -0.16763115 0.1764605 2.45925474 -0.16763139 0.49443007 2.58677506 -0.16763139
		 1.20080519 2.30073214 -0.16763139 1.19496179 2.30073214 0.090526581 0.49368852 2.58677506 0.090526581
		 0.17555994 1.63876605 0.090526581 -0.42764825 1.63876605 0.090526581 -1.085010529 1.63805461 0.090527058
		 -1.084766626 1.63805461 -0.16763115 -0.42706198 1.63876605 -0.16763139 0.1764605 1.63876605 -0.16763139
		 0.70293117 1.63876605 -0.16763139 1.20080519 1.63805461 -0.16763139 1.19496179 1.63805461 0.090526581
		 0.70175648 1.63876605 0.090526581 0.17555994 0.87975663 0.090526581 -0.42764825 0.87975663 0.090526581
		 -1.085010529 0.87939507 0.090526581 -1.084766626 0.87939507 -0.16763139 -0.42706198 0.87975663 -0.16763139
		 0.1764605 0.87975663 -0.16763139 0.70293117 0.87975663 -0.16763139 1.20080519 0.87939507 -0.16763139
		 1.19496179 0.87939507 0.090526581 0.70175648 0.87975663 0.090526581;
	setAttr -s 388 ".ed";
	setAttr ".ed[0:165]"  0 107 0 2 94 0 4 100 0 6 101 0 0 2 0 1 3 1 2 21 0 3 20 1
		 4 6 0 5 7 1 6 26 0 7 27 1 8 16 0 9 17 0 8 40 1 10 22 0 9 10 1 11 23 1 10 105 1 11 8 0
		 12 24 1 13 25 0 12 52 1 14 126 0 13 14 1 15 132 0 14 103 1 15 12 0 16 133 0 17 125 0
		 16 53 1 18 10 0 17 18 1 19 11 0 18 104 1 19 16 1 20 8 1 21 9 0 20 41 1 22 0 0 21 22 1
		 23 1 1 22 106 1 24 5 1 25 4 0 24 51 1 26 14 0 25 26 1 27 15 1 26 102 1 23 77 1 1 78 0
		 28 29 0 20 74 1 28 30 1 3 79 0 31 30 0 29 31 0 11 76 0 32 28 0 8 75 0 32 33 0 30 33 0
		 15 72 0 12 73 0 34 35 0 27 71 1 36 34 0 24 68 1 36 37 1 35 37 0 7 70 0 38 36 0 5 69 0
		 39 38 0 37 39 0 40 56 1 41 55 1 40 41 1 42 3 0 41 42 1 43 1 0 42 43 1 44 23 1 43 44 1
		 45 11 1 44 45 1 46 19 1 45 46 1 47 15 1 46 131 1 48 27 1 47 48 1 49 7 0 48 49 1 50 5 0
		 49 50 1 51 59 1 50 51 1 52 58 1 51 52 1 53 57 0 52 134 1 53 40 1 54 42 0 55 81 1
		 54 55 1 56 82 1 55 56 1 57 83 0 56 57 1 58 84 1 59 85 1 58 59 1 60 50 0 59 60 1 61 49 0
		 60 61 1 62 48 1 61 62 1 63 47 1 62 63 1 64 46 1 63 130 1 65 45 1 64 65 1 66 44 1
		 65 66 1 67 43 0 66 67 1 67 54 1 68 37 1 69 39 0 68 69 1 70 38 0 69 70 1 71 36 1 70 71 1
		 72 34 0 71 72 1 73 35 0 72 73 1 73 68 1 74 30 1 75 33 0 74 75 1 76 32 0 75 76 1 77 28 1
		 76 77 1 78 29 0 77 78 1 79 31 0 78 79 1 79 74 1 80 54 0 81 109 1 80 81 1 82 110 1
		 81 82 1 83 111 0 82 83 1 84 112 1 85 113 1 84 85 1 86 60 0;
	setAttr ".ed[166:331]" 85 86 1 87 61 0 86 87 1 88 62 1 87 88 1 89 63 1 88 89 1
		 90 64 1 89 129 1 91 65 1 90 91 1 92 66 1 91 92 1 93 67 0 92 93 1 93 80 1 94 108 0
		 95 21 1 94 95 1 96 9 1 95 96 1 97 17 1 96 97 1 98 13 1 97 124 0 99 25 1 98 99 1 100 114 0
		 99 100 1 101 115 0 100 101 1 102 116 1 101 102 1 103 117 1 102 103 1 104 118 1 103 127 1
		 105 119 1 104 105 1 106 120 1 105 106 1 107 121 0 106 107 1 107 94 1 108 80 0 109 95 1
		 108 109 1 110 96 1 109 110 1 111 97 0 110 111 1 112 98 1 113 99 1 112 113 1 114 86 0
		 113 114 1 115 87 0 114 115 1 116 88 1 115 116 1 117 89 1 116 117 1 118 90 1 117 128 1
		 119 91 1 118 119 1 120 92 1 119 120 1 121 93 0 120 121 1 121 108 1 122 84 1 123 112 1
		 122 123 0 124 98 1 123 124 0 125 13 0 124 125 1 126 18 0 125 126 1 127 104 1 126 127 1
		 128 118 1 127 128 1 129 90 1 128 129 1 130 64 1 129 130 1 131 47 1 130 131 1 132 19 0
		 131 132 1 133 12 0 132 133 1 134 53 0 133 134 1 135 58 1 134 135 0 135 122 0 57 193 1
		 135 190 1 136 137 1 53 192 0 138 136 0 134 191 0 139 138 0 139 137 0 122 189 1 137 140 0
		 83 184 1 141 140 1 136 141 0 97 186 0 124 187 0 142 143 0 111 185 1 144 142 0 123 188 1
		 144 145 1 145 143 0 141 144 0 140 145 0 146 141 1 147 144 1 146 147 0 148 142 0 147 148 1
		 149 143 0 148 149 1 150 145 1 149 150 1 151 140 1 150 151 0 152 137 1 151 152 0 153 139 0
		 152 153 1 154 138 0 153 154 1 155 136 1 154 155 1 155 146 0 156 147 0 157 148 0 156 157 1
		 158 149 0 157 158 1 159 150 0 158 159 1 160 152 0 161 153 0 160 161 1 162 154 0 161 162 1
		 163 155 0 162 163 1 165 156 0 164 165 0 166 157 0 165 166 1 167 158 0 166 167 1 168 159 0
		 167 168 1 168 169 0 170 160 0;
	setAttr ".ed[332:387]" 169 170 0 171 161 0 170 171 1 172 162 0 171 172 1 173 163 0
		 172 173 1 173 164 0 174 164 1 175 165 1 174 175 1 176 166 0 175 176 1 177 167 0 176 177 1
		 178 168 1 177 178 1 179 169 1 178 179 1 180 170 1 179 180 1 181 171 0 180 181 1 182 172 0
		 181 182 1 183 173 1 182 183 1 183 174 1 184 174 1 185 175 1 184 185 1 186 176 0 185 186 1
		 187 177 0 186 187 1 188 178 1 187 188 1 189 179 1 188 189 1 190 180 1 189 190 1 191 181 0
		 190 191 1 192 182 0 191 192 1 193 183 1 192 193 1 193 184 1 150 147 0 151 146 0 152 155 0
		 159 156 0 160 163 0 168 165 0 169 164 0 170 173 0;
	setAttr -s 194 -ch 776 ".fc[0:193]" -type "polyFaces" 
		f 4 81 5 -80 82
		mu 0 4 69 1 3 68
		f 4 79 7 38 80
		mu 0 4 68 3 38 67
		f 4 95 9 -94 96
		mu 0 4 77 5 7 76
		f 4 83 41 -82 84
		mu 0 4 71 44 9 70
		f 4 -53 54 -57 -58
		mu 0 4 54 55 56 57
		f 4 39 4 6 40
		mu 0 4 42 0 2 40
		f 4 103 -15 12 30
		mu 0 4 80 66 14 30
		f 4 31 -17 13 32
		mu 0 4 34 18 16 32
		f 4 87 33 -86 88
		mu 0 4 73 36 20 72
		f 4 -20 -34 35 -13
		mu 0 4 15 21 37 31
		f 4 -23 20 45 100
		mu 0 4 79 22 46 78
		f 4 46 -25 21 47
		mu 0 4 50 26 24 48
		f 4 91 48 -90 92
		mu 0 4 75 52 28 74
		f 4 -66 -68 69 -71
		mu 0 4 60 61 62 63
		f 4 -31 28 261 260
		mu 0 4 80 30 167 169
		f 4 244 -33 29 245
		mu 0 4 158 34 32 156
		f 4 257 256 -88 90
		mu 0 4 164 165 36 73
		f 4 -36 -257 259 -29
		mu 0 4 31 37 166 168
		f 4 -39 36 14 78
		mu 0 4 67 38 14 66
		f 4 15 -41 37 16
		mu 0 4 18 42 40 16
		f 4 85 17 -84 86
		mu 0 4 72 20 44 71
		f 4 -55 -60 61 -63
		mu 0 4 56 55 58 59
		f 4 -46 43 -96 98
		mu 0 4 78 46 5 77
		f 4 10 -48 44 8
		mu 0 4 12 50 48 13
		f 4 93 11 -92 94
		mu 0 4 76 7 52 75
		f 4 -70 -73 -75 -76
		mu 0 4 63 62 64 65
		f 4 -42 50 151 -52
		mu 0 4 1 45 105 106
		f 4 -8 55 154 -54
		mu 0 4 39 3 107 102
		f 4 -6 51 153 -56
		mu 0 4 3 1 106 107
		f 4 -18 58 149 -51
		mu 0 4 45 21 104 105
		f 4 19 60 147 -59
		mu 0 4 21 15 103 104
		f 4 -37 53 145 -61
		mu 0 4 15 39 102 103
		f 4 -28 63 141 -65
		mu 0 4 23 29 100 101
		f 4 -49 66 139 -64
		mu 0 4 29 53 99 100
		f 4 -21 64 142 -69
		mu 0 4 47 23 101 96
		f 4 -12 71 137 -67
		mu 0 4 53 10 98 99
		f 4 -10 73 135 -72
		mu 0 4 10 11 97 98
		f 4 -44 68 133 -74
		mu 0 4 11 47 96 97
		f 4 -184 186 185 -38
		mu 0 4 41 124 125 17
		f 4 1 184 183 -7
		mu 0 4 2 123 124 41
		f 4 0 209 -2 -5
		mu 0 4 0 136 123 2
		f 4 42 208 -1 -40
		mu 0 4 43 135 137 8
		f 4 18 206 -43 -16
		mu 0 4 19 134 135 43
		f 4 34 204 -19 -32
		mu 0 4 35 133 134 19
		f 4 247 246 -35 -245
		mu 0 4 159 160 133 35
		f 4 49 200 -27 -47
		mu 0 4 51 131 132 27
		f 4 3 198 -50 -11
		mu 0 4 6 130 131 51
		f 4 2 196 -4 -9
		mu 0 4 4 129 130 6
		f 4 -192 194 -3 -45
		mu 0 4 49 128 129 4
		f 4 -190 192 191 -22
		mu 0 4 25 127 128 49
		f 4 -188 190 243 -30
		mu 0 4 33 126 155 157
		f 4 -186 188 187 -14
		mu 0 4 17 125 126 33
		f 4 104 -81 77 -107
		mu 0 4 81 68 67 82
		f 4 -109 -78 -79 76
		mu 0 4 83 82 67 66
		f 4 -111 -77 -104 101
		mu 0 4 84 83 66 80
		f 4 -268 -270 -272 272
		mu 0 4 174 171 172 173
		f 4 -114 -100 -101 97
		mu 0 4 86 85 79 78
		f 4 -116 -98 -99 -115
		mu 0 4 87 86 78 77
		f 4 -118 114 -97 -117
		mu 0 4 88 87 77 76
		f 4 -120 116 -95 -119
		mu 0 4 89 88 76 75
		f 4 -122 118 -93 -121
		mu 0 4 90 89 75 74
		f 4 -253 255 -91 -123
		mu 0 4 91 163 164 73
		f 4 -126 122 -89 -125
		mu 0 4 92 91 73 72
		f 4 -128 124 -87 -127
		mu 0 4 93 92 72 71
		f 4 -130 126 -85 -129
		mu 0 4 95 93 71 70
		f 4 -131 128 -83 -105
		mu 0 4 81 94 69 68
		f 4 -134 131 75 -133
		mu 0 4 97 96 63 65
		f 4 -136 132 74 -135
		mu 0 4 98 97 65 64
		f 4 -138 134 72 -137
		mu 0 4 99 98 64 62
		f 4 -140 136 67 -139
		mu 0 4 100 99 62 61
		f 4 -142 138 65 -141
		mu 0 4 101 100 61 60
		f 4 -143 140 70 -132
		mu 0 4 96 101 60 63
		f 4 -146 143 62 -145
		mu 0 4 103 102 56 59
		f 4 -148 144 -62 -147
		mu 0 4 104 103 59 58
		f 4 -150 146 59 -149
		mu 0 4 105 104 58 55
		f 4 -152 148 52 -151
		mu 0 4 106 105 55 54
		f 4 -154 150 57 -153
		mu 0 4 107 106 54 57
		f 4 -155 152 56 -144
		mu 0 4 102 107 57 56
		f 4 155 106 105 -158
		mu 0 4 108 81 82 109
		f 4 -160 -106 108 107
		mu 0 4 110 109 82 83
		f 4 -162 -108 110 109
		mu 0 4 111 110 83 84
		f 4 274 -277 -278 267
		mu 0 4 174 175 176 171
		f 4 -165 -112 113 112
		mu 0 4 113 112 85 86
		f 4 -167 -113 115 -166
		mu 0 4 114 113 86 87
		f 4 -169 165 117 -168
		mu 0 4 115 114 87 88
		f 4 -171 167 119 -170
		mu 0 4 116 115 88 89
		f 4 -173 169 121 -172
		mu 0 4 117 116 89 90
		f 4 -251 253 252 -174
		mu 0 4 118 162 163 91
		f 4 -177 173 125 -176
		mu 0 4 119 118 91 92
		f 4 -179 175 127 -178
		mu 0 4 120 119 92 93
		f 4 -181 177 129 -180
		mu 0 4 122 120 93 95
		f 4 -182 179 130 -156
		mu 0 4 108 121 94 81
		f 4 182 212 211 -185
		mu 0 4 123 138 139 124
		f 4 -187 -212 214 213
		mu 0 4 125 124 139 140
		f 4 -189 -214 216 215
		mu 0 4 126 125 140 141
		f 4 -281 -283 284 285
		mu 0 4 177 178 179 180
		f 4 -193 -218 219 218
		mu 0 4 128 127 142 143
		f 4 -195 -219 221 -194
		mu 0 4 129 128 143 144
		f 4 -197 193 223 -196
		mu 0 4 130 129 144 145
		f 4 -199 195 225 -198
		mu 0 4 131 130 145 146
		f 4 -201 197 227 -200
		mu 0 4 132 131 146 147
		f 4 -247 249 248 -202
		mu 0 4 133 160 161 148
		f 4 -205 201 231 -204
		mu 0 4 134 133 148 149
		f 4 -207 203 233 -206
		mu 0 4 135 134 149 150
		f 4 -209 205 235 -208
		mu 0 4 137 135 150 152
		f 4 -210 207 236 -183
		mu 0 4 123 136 151 138
		f 4 210 157 156 -213
		mu 0 4 138 108 109 139
		f 4 -215 -157 159 158
		mu 0 4 140 139 109 110
		f 4 -217 -159 161 160
		mu 0 4 141 140 110 111
		f 4 -285 -287 276 287
		mu 0 4 180 179 176 175
		f 4 -220 -163 164 163
		mu 0 4 143 142 112 113
		f 4 -222 -164 166 -221
		mu 0 4 144 143 113 114
		f 4 -224 220 168 -223
		mu 0 4 145 144 114 115
		f 4 -226 222 170 -225
		mu 0 4 146 145 115 116
		f 4 -228 224 172 -227
		mu 0 4 147 146 116 117
		f 4 -249 251 250 -229
		mu 0 4 148 161 162 118
		f 4 -232 228 176 -231
		mu 0 4 149 148 118 119
		f 4 -234 230 178 -233
		mu 0 4 150 149 119 120
		f 4 -236 232 180 -235
		mu 0 4 152 150 120 122
		f 4 -237 234 181 -211
		mu 0 4 138 151 121 108
		f 4 -239 -240 237 162
		mu 0 4 142 154 153 112
		f 4 -241 -242 238 217
		mu 0 4 127 155 154 142
		f 4 -244 240 189 -243
		mu 0 4 157 155 127 25
		f 4 23 -246 242 24
		mu 0 4 26 158 156 24
		f 4 26 202 -248 -24
		mu 0 4 27 132 160 159
		f 4 -250 -203 199 229
		mu 0 4 161 160 132 147
		f 4 -252 -230 226 174
		mu 0 4 162 161 147 117
		f 4 -254 -175 171 123
		mu 0 4 163 162 117 90
		f 4 -256 -124 120 -255
		mu 0 4 164 163 90 74
		f 4 89 25 -258 254
		mu 0 4 74 28 165 164
		f 4 -260 -26 27 -259
		mu 0 4 168 166 29 23
		f 4 -262 258 22 102
		mu 0 4 169 167 22 79
		f 4 -263 -264 -103 99
		mu 0 4 85 170 169 79
		f 4 -238 -265 262 111
		mu 0 4 112 153 170 85
		f 4 -102 268 378 -266
		mu 0 4 84 80 227 228
		f 4 -261 270 376 -269
		mu 0 4 80 169 226 227
		f 4 263 266 374 -271
		mu 0 4 169 170 225 226
		f 4 264 273 372 -267
		mu 0 4 170 153 224 225
		f 4 -110 265 379 -276
		mu 0 4 111 84 228 219
		f 4 -191 278 366 -280
		mu 0 4 155 126 221 222
		f 4 -216 281 364 -279
		mu 0 4 126 141 220 221
		f 4 241 279 368 -284
		mu 0 4 154 155 222 223
		f 4 -161 275 362 -282
		mu 0 4 141 111 219 220
		f 4 239 283 370 -274
		mu 0 4 153 154 223 224
		f 4 -291 288 286 -290
		mu 0 4 182 181 176 179
		f 4 -293 289 282 -292
		mu 0 4 183 182 179 178
		f 4 -295 291 280 -294
		mu 0 4 184 183 178 177
		f 4 -297 293 -286 -296
		mu 0 4 185 184 177 180
		f 4 -299 295 -288 -298
		mu 0 4 186 185 180 175
		f 4 -301 297 -275 -300
		mu 0 4 187 186 175 174
		f 4 -303 299 -273 -302
		mu 0 4 188 187 174 173
		f 4 -305 301 271 -304
		mu 0 4 189 188 173 172
		f 4 -307 303 269 -306
		mu 0 4 190 189 172 171
		f 4 -308 305 277 -289
		mu 0 4 181 190 171 176
		f 4 -311 308 292 -310
		mu 0 4 192 191 182 183
		f 4 -313 309 294 -312
		mu 0 4 193 192 183 184
		f 4 -315 311 296 -314
		mu 0 4 194 193 184 185
		f 4 -318 315 302 -317
		mu 0 4 196 195 187 188
		f 4 -320 316 304 -319
		mu 0 4 197 196 188 189
		f 4 -322 318 306 -321
		mu 0 4 198 197 189 190
		f 4 -326 322 310 -325
		mu 0 4 201 200 191 192
		f 4 -328 324 312 -327
		mu 0 4 202 201 192 193
		f 4 -330 326 314 -329
		mu 0 4 203 202 193 194
		f 4 -335 331 317 -334
		mu 0 4 206 205 195 196
		f 4 -337 333 319 -336
		mu 0 4 207 206 196 197
		f 4 -339 335 321 -338
		mu 0 4 208 207 197 198
		f 4 -343 340 323 -342
		mu 0 4 210 209 199 200
		f 4 -345 341 325 -344
		mu 0 4 211 210 200 201
		f 4 -347 343 327 -346
		mu 0 4 212 211 201 202
		f 4 -349 345 329 -348
		mu 0 4 213 212 202 203
		f 4 -351 347 330 -350
		mu 0 4 214 213 203 204
		f 4 -353 349 332 -352
		mu 0 4 215 214 204 205
		f 4 -355 351 334 -354
		mu 0 4 216 215 205 206
		f 4 -357 353 336 -356
		mu 0 4 217 216 206 207
		f 4 -359 355 338 -358
		mu 0 4 218 217 207 208
		f 4 -360 357 339 -341
		mu 0 4 209 218 208 199
		f 4 -363 360 342 -362
		mu 0 4 220 219 209 210
		f 4 -365 361 344 -364
		mu 0 4 221 220 210 211
		f 4 -367 363 346 -366
		mu 0 4 222 221 211 212
		f 4 -369 365 348 -368
		mu 0 4 223 222 212 213
		f 4 -371 367 350 -370
		mu 0 4 224 223 213 214
		f 4 -373 369 352 -372
		mu 0 4 225 224 214 215
		f 4 -375 371 354 -374
		mu 0 4 226 225 215 216
		f 4 -377 373 356 -376
		mu 0 4 227 226 216 217
		f 4 -379 375 358 -378
		mu 0 4 228 227 217 218
		f 4 -380 377 359 -361
		mu 0 4 219 228 218 209
		f 4 298 381 290 -381
		mu 0 4 229 230 231 232
		f 4 300 382 307 -382
		mu 0 4 233 234 235 236
		f 4 313 380 -309 -384
		mu 0 4 237 238 239 240
		f 4 -316 384 320 -383
		mu 0 4 241 242 243 244
		f 4 328 383 -323 -386
		mu 0 4 245 246 247 248
		f 4 -331 385 -324 -387
		mu 0 4 249 250 251 252
		f 4 -332 387 337 -385
		mu 0 4 253 254 255 256
		f 4 -333 386 -340 -388
		mu 0 4 257 258 259 260;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".h" 8.4086984505884974;
	setAttr ".sa" 12;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 0.25363321172507619 0 0 0 0 0.75685231848735979 0 0
		 0 0 0.25363321172507619 0 0 4.2043492252942487 0 1;
	setAttr ".wt" 0.035986945033073425;
	setAttr ".re" 35;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[60:61]" "e[63]" "e[65]" "e[67]" "e[69]" "e[71]" "e[73]" "e[75]" "e[77]" "e[79]" "e[81]";
	setAttr ".ix" -type "matrix" 0.25363321172507619 0 0 0 0 0.75685231848735979 0 0
		 0 0 0.25363321172507619 0 0 4.2043492252942487 0 1;
	setAttr ".wt" 0.95952850580215454;
	setAttr ".dr" no;
	setAttr ".re" 60;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[60:61]" "e[63]" "e[65]" "e[67]" "e[69]" "e[71]" "e[73]" "e[75]" "e[77]" "e[79]" "e[81]";
	setAttr ".ix" -type "matrix" 0.25363321172507619 0 0 0 0 0.75685231848735979 0 0
		 0 0 0.25363321172507619 0 0 4.2043492252942487 0 1;
	setAttr ".wt" 0.97490054368972778;
	setAttr ".dr" no;
	setAttr ".re" 60;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
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
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n"
		+ "                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.485\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.485\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[60:61]" "e[63]" "e[65]" "e[67]" "e[69]" "e[71]" "e[73]" "e[75]" "e[77]" "e[79]" "e[81]";
	setAttr ".ix" -type "matrix" 0.25363321172507619 0 0 0 0 1.6805497404511977e-016 0.75685231848735979 0
		 0 -0.25363321172507619 5.6317886293361361e-017 0 0 4.2043492252942487 0 1;
	setAttr ".wt" 0.54143476486206055;
	setAttr ".dr" no;
	setAttr ".re" 60;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 25 ".tk";
	setAttr ".tk[12]" -type "float3" 1.1551574 -0.25166851 -0.66693014 ;
	setAttr ".tk[13]" -type "float3" 0.66693014 -0.25166851 -1.1551574 ;
	setAttr ".tk[14]" -type "float3" 0 -0.25166851 -1.3338603 ;
	setAttr ".tk[15]" -type "float3" -0.66693014 -0.25166851 -1.1551574 ;
	setAttr ".tk[16]" -type "float3" -1.1551574 -0.25166851 -0.66693014 ;
	setAttr ".tk[17]" -type "float3" -1.3338603 -0.25166851 0 ;
	setAttr ".tk[18]" -type "float3" -1.1551574 -0.25166851 0.66693014 ;
	setAttr ".tk[19]" -type "float3" -0.66693014 -0.25166851 1.1551574 ;
	setAttr ".tk[20]" -type "float3" 0 -0.25166851 1.3338603 ;
	setAttr ".tk[21]" -type "float3" 0.66693014 -0.25166851 1.1551574 ;
	setAttr ".tk[22]" -type "float3" 1.1551574 -0.25166851 0.66693014 ;
	setAttr ".tk[23]" -type "float3" 1.3338603 -0.25166851 0 ;
	setAttr ".tk[25]" -type "float3" 0 -0.25166851 0 ;
	setAttr ".tk[38]" -type "float3" 1.3338603 -0.19522437 0 ;
	setAttr ".tk[39]" -type "float3" 1.1551574 -0.19522437 0.66693014 ;
	setAttr ".tk[40]" -type "float3" 0.66693014 -0.19522437 1.1551574 ;
	setAttr ".tk[41]" -type "float3" 0 -0.19522437 1.3338603 ;
	setAttr ".tk[42]" -type "float3" -0.66693014 -0.19522437 1.1551574 ;
	setAttr ".tk[43]" -type "float3" -1.1551574 -0.19522437 0.66693014 ;
	setAttr ".tk[44]" -type "float3" -1.3338603 -0.19522437 0 ;
	setAttr ".tk[45]" -type "float3" -1.1551574 -0.19522437 -0.66693014 ;
	setAttr ".tk[46]" -type "float3" -0.66693014 -0.19522437 -1.1551574 ;
	setAttr ".tk[47]" -type "float3" 0 -0.19522437 -1.3338603 ;
	setAttr ".tk[48]" -type "float3" 0.66693014 -0.19522437 -1.1551574 ;
	setAttr ".tk[49]" -type "float3" 1.1551574 -0.19522437 -0.66693014 ;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[84:85]" "e[87]" "e[89]" "e[91]" "e[93]" "e[95]" "e[97]" "e[99]" "e[101]" "e[103]" "e[105]";
	setAttr ".ix" -type "matrix" 0.25363321172507619 0 0 0 0 1.6805497404511977e-016 0.75685231848735979 0
		 0 -0.25363321172507619 5.6317886293361361e-017 0 0 4.2043492252942487 0 1;
	setAttr ".wt" 0.79824292659759521;
	setAttr ".dr" no;
	setAttr ".re" 105;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[62:73]" -type "float3"  0 -0.20384836 -1.3506798e-016
		 0 -0.20384836 -1.110223e-016 0 -0.20384836 -1.110223e-016 0 -0.20384836 -2.220446e-016
		 0 -0.20384836 -1.110223e-016 0 -0.20384836 -1.110223e-016 0 -0.20384836 -1.3506798e-016
		 0 -0.20384836 -1.6653345e-016 0 -0.20384836 -1.110223e-016 0 -0.20384836 -1.110223e-016
		 0 -0.20384836 -1.110223e-016 0 -0.20384836 -1.6653345e-016;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[12]" -type "float3" -0.34947336 -0.054801702 0.20176859 ;
	setAttr ".tk[13]" -type "float3" -0.20176859 -0.054801702 0.34947336 ;
	setAttr ".tk[14]" -type "float3" 0 -0.054801702 0.40353718 ;
	setAttr ".tk[15]" -type "float3" 0.20176859 -0.054801702 0.34947336 ;
	setAttr ".tk[16]" -type "float3" 0.34947336 -0.054801702 0.20176859 ;
	setAttr ".tk[17]" -type "float3" 0.40353718 -0.054801702 -3.6311085e-017 ;
	setAttr ".tk[18]" -type "float3" 0.34947336 -0.054801702 -0.20176859 ;
	setAttr ".tk[19]" -type "float3" 0.20176859 -0.054801702 -0.34947336 ;
	setAttr ".tk[20]" -type "float3" 0 -0.054801702 -0.40353718 ;
	setAttr ".tk[21]" -type "float3" -0.20176859 -0.054801702 -0.34947336 ;
	setAttr ".tk[22]" -type "float3" -0.34947336 -0.054801702 -0.20176859 ;
	setAttr ".tk[23]" -type "float3" -0.40353718 -0.054801702 -3.6311085e-017 ;
	setAttr ".tk[25]" -type "float3" 0 -0.054801702 -3.6311085e-017 ;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 2 "f[0:23]" "f[36:47]";
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 0.25363321172507619 0 0 0 0 1.6805497404511977e-016 0.75685231848735979 0
		 0 -0.25363321172507619 5.6317886293361361e-017 0 0 4.2043492252942487 0 1;
createNode polyMirror -n "polyMirror1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 0 4.2043489217758179 -5.6317883939068544e-017 ;
	setAttr ".d" 5;
	setAttr ".mm" 1;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[2]" "e[42]" "e[66]" "e[90]" "e[116]" "e[125]" "e[169:170]" "e[197]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.4776170551776886;
	setAttr ".re" 2;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
	setAttr ".tk[20]" -type "float3" 0 0.04304086 0 ;
	setAttr ".tk[21]" -type "float3" -0.0061693592 0.12051336 0 ;
	setAttr ".tk[22]" -type "float3" 0 0.13915674 0 ;
	setAttr ".tk[23]" -type "float3" 0.0061693592 0.12051336 0 ;
	setAttr ".tk[24]" -type "float3" 0 0.04304086 0 ;
	setAttr ".tk[48]" -type "float3" 0 0 -2.9802322e-008 ;
	setAttr ".tk[49]" -type "float3" 0 0.04304086 0 ;
	setAttr ".tk[57]" -type "float3" 0 0.04304086 0 ;
	setAttr ".tk[58]" -type "float3" -0.0061693592 0.12051336 0 ;
	setAttr ".tk[59]" -type "float3" 0 0.13915674 0 ;
	setAttr ".tk[60]" -type "float3" 0.0061693592 0.12051336 0 ;
	setAttr ".tk[74]" -type "float3" 0 -0.043040812 0 ;
	setAttr ".tk[77]" -type "float3" 0 -0.043040812 0 ;
	setAttr ".tk[78]" -type "float3" 0.0061693592 -0.12051332 0 ;
	setAttr ".tk[79]" -type "float3" 0.0061693592 -0.12051332 0 ;
	setAttr ".tk[80]" -type "float3" -6.5310885e-020 -0.13915674 0 ;
	setAttr ".tk[81]" -type "float3" 0 -0.13915674 0 ;
	setAttr ".tk[82]" -type "float3" -0.0061693592 -0.12051332 0 ;
	setAttr ".tk[83]" -type "float3" -0.0061693592 -0.12051332 0 ;
	setAttr ".tk[84]" -type "float3" 0 -0.043040812 0 ;
	setAttr ".tk[85]" -type "float3" 0 -0.043040812 0 ;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[1]" "e[44]" "e[68]" "e[92]" "e[118]" "e[123]" "e[172:173]" "e[199]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.49388724565505981;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplit -n "polySplit1";
	setAttr -s 3 ".e[0:2]"  1 1 1;
	setAttr -s 3 ".d[0:2]"  -2147483646 -2147483633 -2147483647;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[96:97]" "e[99]" "e[101]" "e[103]" "e[105]" "e[107]" "e[109]" "e[111]" "e[113]" "e[115]" "e[117]" "e[244]" "e[261]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.57274776697158813;
	setAttr ".dr" no;
	setAttr ".re" 244;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[0]" -type "float3" -0.060394142 -0.034868587 1.7630404e-008 ;
	setAttr ".tk[1]" -type "float3" -0.013525197 -0.029251674 1.7630404e-008 ;
	setAttr ".tk[2]" -type "float3" 0 -0.099106602 1.7630404e-008 ;
	setAttr ".tk[3]" -type "float3" 0.01362265 -0.037417531 1.7630404e-008 ;
	setAttr ".tk[4]" -type "float3" 0.060394142 -0.034868587 1.7630404e-008 ;
	setAttr ".tk[5]" -type "float3" 0.069737181 0 1.7630404e-008 ;
	setAttr ".tk[6]" -type "float3" 0.060394142 0.034868568 1.7630404e-008 ;
	setAttr ".tk[7]" -type "float3" 0.034868591 0.060394209 1.7630404e-008 ;
	setAttr ".tk[8]" -type "float3" 0 0.069737166 1.7630404e-008 ;
	setAttr ".tk[9]" -type "float3" -0.034868591 0.060394209 1.7630404e-008 ;
	setAttr ".tk[10]" -type "float3" -0.060394142 0.034868568 1.7630404e-008 ;
	setAttr ".tk[11]" -type "float3" -0.069737181 0 1.7630404e-008 ;
	setAttr ".tk[118]" -type "float3" 0.026376259 -0.010445759 -1.7630391e-008 ;
	setAttr ".tk[127]" -type "float3" -0.030714091 -0.021046454 1.7630404e-008 ;
	setAttr ".tk[128]" -type "float3" 0.041893546 0.0073275217 -0.013198133 ;
	setAttr ".tk[130]" -type "float3" -0.032656636 0 -0.061998416 ;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 2 "f[0:11]" "f[136:137]";
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[7]" "e[20]" "e[44]" "e[68]" "e[94]" "e[123]" "e[142:143]" "e[175]" "e[268]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.4554060697555542;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[8]" "e[18]" "e[42]" "e[66]" "e[92]" "e[125]" "e[139:140]" "e[173]" "e[266]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.49592670798301697;
	setAttr ".dr" no;
	setAttr ".re" 8;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1:2]" "e[231]" "e[248]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.8726797e-005 4.621551 2.9501188 ;
	setAttr ".rs" 62437;
	setAttr ".lt" -type "double3" 1.6616246383593202e-016 0.22790226596729798 3.0531133177191805e-016 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.23117437958717346 4.5909328460693359 2.9501187801361084 ;
	setAttr ".cbx" -type "double3" 0.23127183318138123 4.6521692276000977 2.9501190185546875 ;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[165]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[165]";
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[3]" -type "float3" 0 -0.18013316 0 ;
	setAttr ".tk[7]" -type "float3" 5.8207661e-011 0.13453151 3.6379788e-012 ;
	setAttr ".tk[141]" -type "float3" 0 0 -2.3841858e-007 ;
	setAttr ".tk[161]" -type "float3" 0.0411475 -0.54581046 -0.053465605 ;
	setAttr ".tk[162]" -type "float3" -0.0072345585 -0.61841583 -0.030253172 ;
	setAttr ".tk[163]" -type "float3" 0.011553198 -0.61144853 -0.0034644604 ;
	setAttr ".tk[164]" -type "float3" -0.0082692355 -0.63639712 -0.0050091743 ;
	setAttr ".tk[165]" -type "float3" -0.069650024 -0.40691352 -0.010129929 ;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[141]" "vtx[164]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[164]";
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[163]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[163]";
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 2 "vtx[151]" "vtx[162]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[162]";
createNode polyMergeVert -n "polyMergeVert5";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[161]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[161]";
createNode polyCloseBorder -n "polyCloseBorder1";
	setAttr ".ics" -type "componentList" 2 "e[3:6]" "e[320]";
createNode polySplit -n "polySplit2";
	setAttr -s 6 ".e[0:5]"  1 0.46845499 0.54100603 0.490049 0.536116
		 0.53986597;
	setAttr -s 6 ".d[0:5]"  -2147483644 -2147483328 -2147483329 -2147483330 -2147483331 -2147483332;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[4]" "e[26]" "e[50]" "e[74]" "e[100]" "e[117]" "e[151:152]" "e[181]" "e[274]" "e[316:320]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.53084361553192139;
	setAttr ".dr" no;
	setAttr ".re" 4;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[161]" -type "float3" 0 -0.0024266243 0 ;
	setAttr ".tk[162]" -type "float3" 0 0.0050253868 0 ;
	setAttr ".tk[163]" -type "float3" 0 0.0066208839 0 ;
	setAttr ".tk[164]" -type "float3" 0 0.0081849098 0 ;
	setAttr ".tk[165]" -type "float3" 0 0.014661312 0 ;
createNode polySplitRing -n "polySplitRing12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[5]" "e[24]" "e[48]" "e[72]" "e[98]" "e[119]" "e[148:149]" "e[179]" "e[272]" "e[321:325]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.44208580255508423;
	setAttr ".dr" no;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[3]" -type "float3" 0.0023295735 0.13455209 0 ;
	setAttr ".tk[4]" -type "float3" 0.014511971 0.039157111 0 ;
	setAttr ".tk[5]" -type "float3" 0.034760255 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.019713223 0 0 ;
	setAttr ".tk[7]" -type "float3" -0.029769536 -0.058619685 0 ;
	setAttr ".tk[8]" -type "float3" 0 0.083230399 0 ;
	setAttr ".tk[141]" -type "float3" 0 0.062206645 0 ;
	setAttr ".tk[175]" -type "float3" 0.02217715 0 0 ;
	setAttr ".tk[176]" -type "float3" 0 0.028235953 0 ;
	setAttr ".tk[177]" -type "float3" -0.0071114735 -0.016172051 0 ;
	setAttr ".tk[178]" -type "float3" 0 0.030120658 0 ;
	setAttr ".tk[190]" -type "float3" 0.031043103 0 0 ;
	setAttr ".tk[191]" -type "float3" 0 -0.014753912 0 ;
	setAttr ".tk[192]" -type "float3" 0 0.0084797731 0 ;
	setAttr ".tk[193]" -type "float3" 0 0.019430337 0 ;
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 17 "f[0:2]" "f[9:14]" "f[21:26]" "f[33:39]" "f[46:49]" "f[56:62]" "f[69:74]" "f[81:86]" "f[93:99]" "f[106:107]" "f[116:123]" "f[125:131]" "f[147:156]" "f[159]" "f[164:165]" "f[178:179]" "f[192:193]";
createNode polyMirror -n "polyMirror2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 3.7252902984619141e-009 4.2043489217758179 0 ;
	setAttr ".mm" 1;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[75]" -type "float3" 0 0.05639198 0 ;
	setAttr ".tk[76]" -type "float3" 0 0.057311058 0 ;
	setAttr ".tk[82]" -type "float3" 0 0.051275656 0 ;
createNode polySplitRing -n "polySplitRing13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[19:20]" "e[22]" "e[24]" "e[26]" "e[28]" "e[30]" "e[129]" "e[157]" "e[189]" "e[214]" "e[249]" "e[251:252]" "e[254:255]" "e[257:258]" "e[260]" "e[262]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.50421136617660522;
	setAttr ".dr" no;
	setAttr ".re" 262;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 44 ".tk";
	setAttr ".tk[8]" -type "float3" -0.02835026 0.025814224 0 ;
	setAttr ".tk[9]" -type "float3" 0.018677523 -0.047072299 0 ;
	setAttr ".tk[11]" -type "float3" 0.033415243 0.061748039 0 ;
	setAttr ".tk[12]" -type "float3" 0 -0.015689392 0 ;
	setAttr ".tk[29]" -type "float3" -0.02835026 0.025814224 0 ;
	setAttr ".tk[30]" -type "float3" 0.018677523 -0.047072299 0 ;
	setAttr ".tk[32]" -type "float3" 0.033415243 0.061748039 0 ;
	setAttr ".tk[33]" -type "float3" 0 -0.015689392 0 ;
	setAttr ".tk[70]" -type "float3" -2.3283064e-010 0.011592383 0 ;
	setAttr ".tk[71]" -type "float3" -2.3283064e-010 0.011592383 0 ;
	setAttr ".tk[77]" -type "float3" 0.040399693 0 0 ;
	setAttr ".tk[78]" -type "float3" 0.046649531 0 0 ;
	setAttr ".tk[79]" -type "float3" 0.06787242 0.061748039 0 ;
	setAttr ".tk[83]" -type "float3" -0.017632026 -0.011159493 0 ;
	setAttr ".tk[84]" -type "float3" -0.017632026 -0.011159493 0 ;
	setAttr ".tk[100]" -type "float3" 4.6566129e-010 0.041235536 0 ;
	setAttr ".tk[101]" -type "float3" 4.6566129e-010 0.041235536 0 ;
	setAttr ".tk[102]" -type "float3" 0.043717381 0 0 ;
	setAttr ".tk[113]" -type "float3" -0.017492279 -0.021224039 0 ;
	setAttr ".tk[114]" -type "float3" -0.017492279 -0.021224039 0 ;
	setAttr ".tk[115]" -type "float3" 0.043886576 0 0 ;
	setAttr ".tk[120]" -type "float3" 0.017632026 -0.011159493 0 ;
	setAttr ".tk[121]" -type "float3" 0.017632026 -0.011159493 0 ;
	setAttr ".tk[122]" -type "float3" -0.018677523 -0.047072299 0 ;
	setAttr ".tk[123]" -type "float3" 0.02835026 0.025814224 0 ;
	setAttr ".tk[124]" -type "float3" 0.02835026 0.025814224 0 ;
	setAttr ".tk[125]" -type "float3" -0.018677523 -0.047072299 0 ;
	setAttr ".tk[127]" -type "float3" 0.017492279 -0.021224039 0 ;
	setAttr ".tk[128]" -type "float3" 0.017492279 -0.021224039 0 ;
	setAttr ".tk[130]" -type "float3" -0.033415243 0.061748039 0 ;
	setAttr ".tk[131]" -type "float3" -4.6566129e-010 0.041235536 0 ;
	setAttr ".tk[132]" -type "float3" -4.6566129e-010 0.041235536 0 ;
	setAttr ".tk[133]" -type "float3" -0.033415243 0.061748039 0 ;
	setAttr ".tk[134]" -type "float3" 0 -0.015689392 0 ;
	setAttr ".tk[135]" -type "float3" 0 -0.015689392 0 ;
	setAttr ".tk[136]" -type "float3" 2.3283064e-010 0.011592383 0 ;
	setAttr ".tk[137]" -type "float3" 2.3283064e-010 0.011592383 0 ;
	setAttr ".tk[158]" -type "float3" -0.040399693 0 0 ;
	setAttr ".tk[159]" -type "float3" -0.043886576 0 0 ;
	setAttr ".tk[160]" -type "float3" -0.046649531 0 0 ;
	setAttr ".tk[161]" -type "float3" -0.043717381 0 0 ;
	setAttr ".tk[162]" -type "float3" -0.06787242 0.061748039 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 2 "f[62]" "f[170]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.7252903e-009 4.695982 2.9435201 ;
	setAttr ".rs" 40606;
	setAttr ".lt" -type "double3" 8.1532003370909933e-017 5.7766291750027676e-016 0.16865519047130276 ;
	setAttr ".tp" 0;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.090542986989021301 4.5948362350463867 2.9369208812713623 ;
	setAttr ".cbx" -type "double3" 0.090542994439601898 4.7971277236938477 2.9501190185546875 ;
createNode polyCube -n "polyCube1";
	setAttr ".w" 6.2652183427185157;
	setAttr ".h" 0.40219963722649371;
	setAttr ".d" 2.1042584711705365;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".wt" 0.30044448375701904;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[10:13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".wt" 0.57979279756546021;
	setAttr ".dr" no;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[23]" "e[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".wt" 0.52671611309051514;
	setAttr ".dr" no;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[6:7]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".wt" 0.4629826545715332;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[10:11]" "e[20:21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".wt" 0.53211605548858643;
	setAttr ".dr" no;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 2 "f[4]" "f[21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.326333 0.20109981 4.8730173 ;
	setAttr ".rs" 50137;
	setAttr ".lt" -type "double3" -1.1832376304895206e-016 -1.2822224878066804e-015 
		1.6842346326162723 ;
	setAttr ".ls" -type "double3" 1 1 2.5088638499879488 ;
	setAttr ".tp" 0;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.3263329897826512 5.6287803029686501e-009 4.5569110246015612 ;
	setAttr ".cbx" -type "double3" 1.3263331089919408 0.40219963159771344 5.1891239018751207 ;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk[0:27]" -type "float3"  1.57946229 -7.4505806e-009
		 0 -1.57946229 -7.4505806e-009 0 1.57946229 7.4505806e-009 0 -1.57946229 7.4505806e-009
		 0 1.57946229 7.4505806e-009 0 -1.57946229 7.4505806e-009 0 1.57946229 -7.4505806e-009
		 0 -1.57946229 -7.4505806e-009 0 -1.57946217 7.4505806e-009 0 1.57946217 7.4505806e-009
		 0 1.57946217 -7.4505806e-009 0 -1.57946217 -7.4505806e-009 0 -1.57946217 7.4505806e-009
		 0 1.57946217 7.4505806e-009 0 1.57946217 -7.4505806e-009 0 -1.57946217 -7.4505806e-009
		 0 -1.57946217 7.4505806e-009 0 1.57946217 7.4505806e-009 0 1.57946217 -7.4505806e-009
		 0 -1.57946217 -7.4505806e-009 0 -1.57946217 7.4505806e-009 0 1.57946217 7.4505806e-009
		 0 1.57946217 -7.4505806e-009 0 -1.57946217 -7.4505806e-009 0 -1.57946217 7.4505806e-009
		 0 1.57946217 7.4505806e-009 0 1.57946217 -7.4505806e-009 0 -1.57946217 -7.4505806e-009
		 0;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 2 "f[13]" "f[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.3263332 0.20109981 3.3941474 ;
	setAttr ".rs" 34430;
	setAttr ".lt" -type "double3" -7.7975237345736777e-017 3.539007635638204e-017 1.6488307501456139 ;
	setAttr ".tp" 0;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.3263331089919408 5.6287803029686501e-009 3.0848653645826403 ;
	setAttr ".cbx" -type "double3" 1.3263331089919408 0.40219963159771344 3.7034294934583727 ;
createNode polySplitRing -n "polySplitRing19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[26]" "e[30]" "e[34]" "e[38]" "e[42]" "e[45]" "e[49]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".wt" 0.14137394726276398;
	setAttr ".re" 14;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[8]" -type "float3" 0.27808803 0 0 ;
	setAttr ".tk[11]" -type "float3" 0.27808803 0 0 ;
	setAttr ".tk[12]" -type "float3" 0.27808803 0 0 ;
	setAttr ".tk[15]" -type "float3" 0.27808803 0 0 ;
	setAttr ".tk[20]" -type "float3" 0.079954974 0 0 ;
	setAttr ".tk[23]" -type "float3" 0.079954974 0 0 ;
	setAttr ".tk[24]" -type "float3" 0.079954974 0 0 ;
	setAttr ".tk[27]" -type "float3" 0.079954974 0 0 ;
	setAttr ".tk[34]" -type "float3" 0.035403654 0 0 ;
	setAttr ".tk[35]" -type "float3" 0.035403654 0 0 ;
	setAttr ".tk[36]" -type "float3" 0.035403654 0 0 ;
	setAttr ".tk[37]" -type "float3" 0.035403654 0 0 ;
	setAttr ".tk[38]" -type "float3" 0.035403654 0 0 ;
	setAttr ".tk[39]" -type "float3" 0.035403654 0 0 ;
createNode polySplitRing -n "polySplitRing20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[0:3]" "e[18]" "e[26]" "e[34]" "e[42]" "e[49]" "e[76:77]" "e[97]" "e[99]" "e[101]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".wt" 0.84690290689468384;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk[40:53]" -type "float3"  -0.050630476 0 0 0.021516254
		 0 0 0.050630473 0 0 0.050630473 0 0 0.021516254 0 0 -0.050630476 0 0 0.050630473
		 0 0 -0.050630476 0 0 0.021516254 0 0 0.050630473 0 0 0.050630473 0 0 0.021516254
		 0 0 -0.050630476 0 0 0.050630473 0 0;
createNode polySplitRing -n "polySplitRing21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[63:64]" "e[66]" "e[68]" "e[71]" "e[73]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".wt" 0.39062586426734924;
	setAttr ".re" 68;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk[40:67]" -type "float3"  -0.014190663 0 0 0.0060305647
		 0 0 0.014190663 0 0 0.014190663 0 0 0.0060305647 0 0 -0.014190663 0 0 0.014190663
		 0 0 -0.014190663 0 0 0.0060305647 0 0 0.014190663 0 0 0.014190663 0 0 0.0060305647
		 0 0 -0.014190663 0 0 0.014190663 0 0 0.056548934 0 0 0.024031494 0 0 -0.056548934
		 0 0 0.056548934 0 0 -0.056548934 0 0 0.024031494 0 0 0.056548934 0 0 0.056548934
		 0 0 0.024031494 0 0 -0.056548934 0 0 0.056548934 0 0 -0.056548934 0 0 0.024031494
		 0 0 0.056548934 0 0;
createNode polySplitRing -n "polySplitRing22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[50:51]" "e[53]" "e[55]" "e[58]" "e[60]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".wt" 0.36088234186172485;
	setAttr ".re" 53;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[0:3]" "e[18]" "e[26]" "e[34]" "e[42]" "e[49]" "e[105]" "e[107]" "e[109]" "e[111]" "e[113]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".wt" 0.76664340496063232;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 34 ".tk";
	setAttr ".tk[1]" -type "float3" 0.17585875 0 0 ;
	setAttr ".tk[3]" -type "float3" 0.17585875 0 0 ;
	setAttr ".tk[5]" -type "float3" 0.17585875 0 0 ;
	setAttr ".tk[7]" -type "float3" 0.17585875 0 0 ;
	setAttr ".tk[20]" -type "float3" 0.097474679 0 0 ;
	setAttr ".tk[23]" -type "float3" 0.097474679 0 0 ;
	setAttr ".tk[24]" -type "float3" 0.097474679 0 0 ;
	setAttr ".tk[27]" -type "float3" 0.097474679 0 0 ;
	setAttr ".tk[54]" -type "float3" -0.10333739 0 0 ;
	setAttr ".tk[55]" -type "float3" -0.10333739 0 0 ;
	setAttr ".tk[56]" -type "float3" -0.10333739 0 0 ;
	setAttr ".tk[57]" -type "float3" -0.10333739 0 0 ;
	setAttr ".tk[58]" -type "float3" -0.10333739 0 0 ;
	setAttr ".tk[59]" -type "float3" -0.10333739 0 0 ;
	setAttr ".tk[60]" -type "float3" -0.10333739 0 0 ;
	setAttr ".tk[61]" -type "float3" -0.10333739 0 0 ;
	setAttr ".tk[62]" -type "float3" -0.10333739 0 0 ;
	setAttr ".tk[63]" -type "float3" -0.10333739 0 0 ;
	setAttr ".tk[64]" -type "float3" -0.10333739 0 0 ;
	setAttr ".tk[65]" -type "float3" -0.10333739 0 0 ;
	setAttr ".tk[66]" -type "float3" -0.10333739 0 0 ;
	setAttr ".tk[67]" -type "float3" -0.10333739 0 0 ;
	setAttr ".tk[68]" -type "float3" 0.010376452 0 0 ;
	setAttr ".tk[69]" -type "float3" 0.056505375 0 0 ;
	setAttr ".tk[70]" -type "float3" 0.056505375 0 0 ;
	setAttr ".tk[71]" -type "float3" 0.010376452 0 0 ;
	setAttr ".tk[72]" -type "float3" -0.10393383 0 0 ;
	setAttr ".tk[73]" -type "float3" -0.10393383 0 0 ;
	setAttr ".tk[74]" -type "float3" 0.055553265 0 0 ;
	setAttr ".tk[75]" -type "float3" -0.064336322 0 0 ;
	setAttr ".tk[76]" -type "float3" -0.064336322 0 0 ;
	setAttr ".tk[77]" -type "float3" 0.055553265 0 0 ;
	setAttr ".tk[78]" -type "float3" 0.10393383 0 0 ;
	setAttr ".tk[79]" -type "float3" 0.10393383 0 0 ;
createNode polySplitRing -n "polySplitRing24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[0:3]" "e[18]" "e[26]" "e[34]" "e[42]" "e[49]" "e[157]" "e[159]" "e[161]" "e[163]" "e[165]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".wt" 0.27080130577087402;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing25";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[157]" "e[159]" "e[161]" "e[163]" "e[165]" "e[184]" "e[195]" "e[197]" "e[199]" "e[201]" "e[203]" "e[205]" "e[207]" "e[209]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".wt" 0.5214800238609314;
	setAttr ".re" 184;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing26";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[23]" "e[25]" "e[28:29]" "e[90]" "e[102]" "e[112]" "e[124]" "e[164]" "e[176]" "e[192]" "e[204]" "e[220]" "e[232]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".wt" 0.34938430786132813;
	setAttr ".re" 164;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 4 "f[55]" "f[81]" "f[95]" "f[109]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.16891646 0.40219963 4.0984421 ;
	setAttr ".rs" 61563;
	setAttr ".lt" -type "double3" 0 -2.411437259470878e-017 3.8913985205681962 ;
	setAttr ".tp" 0;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.3118243779236476 0.40219963159771344 3.9693631561113421 ;
	setAttr ".cbx" -type "double3" 0.97399145707543688 0.40219963159771344 4.2275212438417498 ;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[16]" -type "float3" 0.044804998 -3.7252903e-009 0.1201525 ;
	setAttr ".tk[17]" -type "float3" 0 0 0.1201525 ;
	setAttr ".tk[18]" -type "float3" 0 0 0.1201525 ;
	setAttr ".tk[19]" -type "float3" 0.044804998 3.7252903e-009 0.1201525 ;
	setAttr ".tk[46]" -type "float3" 0.016142758 0 0.1201525 ;
	setAttr ".tk[53]" -type "float3" 0.016142758 0 0.1201525 ;
	setAttr ".tk[57]" -type "float3" 0 0 0.1201525 ;
	setAttr ".tk[64]" -type "float3" 0 0 0.1201525 ;
	setAttr ".tk[83]" -type "float3" 0 0 0.1201525 ;
	setAttr ".tk[90]" -type "float3" 0 0 0.1201525 ;
	setAttr ".tk[97]" -type "float3" 0 0 0.1201525 ;
	setAttr ".tk[104]" -type "float3" 0 0 0.1201525 ;
	setAttr ".tk[111]" -type "float3" 0 0 0.1201525 ;
	setAttr ".tk[118]" -type "float3" 0 0 0.1201525 ;
	setAttr ".tk[122]" -type "float3" 0 0 0.0031244536 ;
	setAttr ".tk[123]" -type "float3" 0 0 0.0031244536 ;
	setAttr ".tk[124]" -type "float3" 0 0 0.0031244536 ;
	setAttr ".tk[125]" -type "float3" 0 0 0.0031244536 ;
	setAttr ".tk[126]" -type "float3" 0 0 0.0031244536 ;
	setAttr ".tk[127]" -type "float3" 0 0 0.0031244536 ;
	setAttr ".tk[128]" -type "float3" 0 0 0.0031244536 ;
	setAttr ".tk[129]" -type "float3" 0 0 0.0031244536 ;
	setAttr ".tk[130]" -type "float3" 0 0 0.0031244536 ;
	setAttr ".tk[131]" -type "float3" -0.016142758 0 0.0031244536 ;
	setAttr ".tk[132]" -type "float3" -0.044804998 3.7252903e-009 0.0031244536 ;
	setAttr ".tk[133]" -type "float3" -0.044804998 -3.7252903e-009 0.0031244536 ;
	setAttr ".tk[134]" -type "float3" -0.016142758 0 0.0031244599 ;
	setAttr ".tk[135]" -type "float3" 0 0 0.0031244536 ;
createNode polySplitRing -n "polySplitRing27";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[265:266]" "e[268]" "e[270]" "e[273]" "e[275]" "e[278:279]" "e[281]" "e[283]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".wt" 0.87139749526977539;
	setAttr ".dr" no;
	setAttr ".re" 275;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[138]" -type "float3" 0 -0.38466269 0 ;
	setAttr ".tk[139]" -type "float3" 0 -0.38466269 0 ;
	setAttr ".tk[142]" -type "float3" 0 -0.38466269 0 ;
	setAttr ".tk[143]" -type "float3" 0 -0.38466269 0 ;
createNode polySplitRing -n "polySplitRing28";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[265:266]" "e[268]" "e[270]" "e[273]" "e[275]" "e[278:279]" "e[281]" "e[283]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".wt" 0.85013091564178467;
	setAttr ".dr" no;
	setAttr ".re" 275;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing29";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[265:266]" "e[268]" "e[270]" "e[273]" "e[275]" "e[278:279]" "e[281]" "e[283]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".wt" 0.77902376651763916;
	setAttr ".dr" no;
	setAttr ".re" 275;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[156:165]" -type "float3"  0 -0.052700751 0 0 -0.052700751
		 0 0 0.052700751 0 0 0.052700751 0 0 -0.052700751 0 0 -0.052700751 0 0 -0.052700751
		 0 0 0.052700751 0 0 0.052700751 0 0 -0.052700751 0;
createNode polySplitRing -n "polySplitRing30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[265:266]" "e[268]" "e[270]" "e[273]" "e[275]" "e[278:279]" "e[281]" "e[283]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".wt" 0.67329519987106323;
	setAttr ".dr" no;
	setAttr ".re" 275;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[166:175]" -type "float3"  0 -0.034831591 0 0 -0.034831591
		 0 0 0.034831591 0 0 0.034831591 0 0 -0.034831591 0 0 -0.034831591 0 0 -0.034831591
		 0 0 0.034831591 0 0 0.034831591 0 0 -0.034831591 0;
createNode polySplitRing -n "polySplitRing31";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[265:266]" "e[268]" "e[270]" "e[273]" "e[275]" "e[278:279]" "e[281]" "e[283]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".wt" 0.50831592082977295;
	setAttr ".dr" no;
	setAttr ".re" 275;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[176:185]" -type "float3"  0 -0.023282478 0 0 -0.023282478
		 0 0 0.023282476 0 0 0.023282476 0 0 -0.023282478 0 0 -0.023282478 0 0 -0.023282478
		 0 0 0.023282476 0 0 0.023282476 0 0 -0.023282478 0;
createNode polyTweak -n "polyTweak21";
	setAttr ".uopa" yes;
	setAttr -s 168 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[1]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[2]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[3]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[4]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[5]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[6]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[8]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[9]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[10]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[12]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[16]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[17]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[18]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[19]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[20]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[22]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[23]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[24]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[25]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[26]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[27]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[28]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[29]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[30]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[31]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[32]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[33]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[34]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[35]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[36]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[37]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[38]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[39]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[40]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[41]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[42]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[43]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[44]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[45]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[46]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[47]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[48]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[49]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[50]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[51]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[52]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[53]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[54]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[55]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[56]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[57]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[58]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[59]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[60]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[61]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[62]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[63]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[64]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[65]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[66]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[67]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[68]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[69]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[70]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[71]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[72]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[73]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[74]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[75]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[76]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[77]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[78]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[79]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[80]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[81]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[82]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[83]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[84]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[85]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[86]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[87]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[88]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[89]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[90]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[91]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[92]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[93]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[94]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[95]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[96]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[97]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[98]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[99]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[100]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[101]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[102]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[103]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[104]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[105]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[106]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[107]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[108]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[109]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[110]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[111]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[112]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[113]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[114]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[115]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[116]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[117]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[118]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[119]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[120]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[121]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[122]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[123]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[124]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[125]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[126]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[127]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[128]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[129]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[130]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[131]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[132]" -type "float3" 0 -0.021685438 0 ;
	setAttr ".tk[133]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[134]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[135]" -type "float3" 0 -0.11639971 0 ;
	setAttr ".tk[136]" -type "float3" -0.15213342 0 0 ;
	setAttr ".tk[137]" -type "float3" -0.15241097 0 0 ;
	setAttr ".tk[138]" -type "float3" -0.26866978 0 0 ;
	setAttr ".tk[139]" -type "float3" -0.2700505 0 0 ;
	setAttr ".tk[142]" -type "float3" 0.2700505 0 0 ;
	setAttr ".tk[143]" -type "float3" 0.26999289 0 0 ;
	setAttr ".tk[144]" -type "float3" 0.11472651 0 0 ;
	setAttr ".tk[145]" -type "float3" 0.11458798 0 0 ;
	setAttr ".tk[147]" -type "float3" 0.24027467 -0.13516754 0 ;
	setAttr ".tk[150]" -type "float3" 0.24002548 -0.13516754 0 ;
	setAttr ".tk[152]" -type "float3" -0.24027467 -0.13516754 0 ;
	setAttr ".tk[155]" -type "float3" -0.23977537 -0.13516754 0 ;
	setAttr ".tk[157]" -type "float3" 0.013446195 0 0 ;
	setAttr ".tk[160]" -type "float3" 0.013446195 0 0 ;
	setAttr ".tk[162]" -type "float3" -0.012953976 0 0 ;
	setAttr ".tk[165]" -type "float3" -0.012953976 0 0 ;
	setAttr ".tk[166]" -type "float3" 0 0.088306278 0 ;
	setAttr ".tk[167]" -type "float3" 0.2085011 0.21582648 0 ;
	setAttr ".tk[170]" -type "float3" 0.20828493 0.21582648 0 ;
	setAttr ".tk[171]" -type "float3" 0 0.088306278 0 ;
	setAttr ".tk[172]" -type "float3" -0.2085011 0.21582648 0 ;
	setAttr ".tk[175]" -type "float3" -0.20806794 0.21582648 0 ;
	setAttr ".tk[186]" -type "float3" 0 -0.052131809 0 ;
	setAttr ".tk[187]" -type "float3" 0 -0.052131809 0 ;
	setAttr ".tk[188]" -type "float3" 0 -0.052131809 0 ;
	setAttr ".tk[189]" -type "float3" 0 -0.052131809 0 ;
	setAttr ".tk[190]" -type "float3" 0 -0.052131809 0 ;
	setAttr ".tk[191]" -type "float3" 0 -0.052131809 0 ;
	setAttr ".tk[192]" -type "float3" 0 -0.052131809 0 ;
	setAttr ".tk[193]" -type "float3" 0 -0.052131809 0 ;
	setAttr ".tk[194]" -type "float3" 0 -0.052131809 0 ;
	setAttr ".tk[195]" -type "float3" 0 -0.052131809 0 ;
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 5 "f[154]" "f[158:159]" "f[163:164]" "f[168:169]" "f[173]";
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[298]" "e[300]" "e[313]" "e[315]" "e[328]" "e[330:332]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.088633046 3.2267547 3.9693635 ;
	setAttr ".rs" 38542;
	setAttr ".lt" -type "double3" -3.1222491229471993e-016 -1.2737263395456778e-015 
		0.018702411362645312 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.64042952313963575 2.6603545602819478 3.9693632455183092 ;
	setAttr ".cbx" -type "double3" 0.46316343888696032 3.7931546625158346 3.9693634541345659 ;
createNode polyMergeVert -n "polyMergeVert6";
	setAttr ".ics" -type "componentList" 2 "vtx[147]" "vtx[194]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[194]";
createNode polyTweak -n "polyTweak22";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[194:201]" -type "float3"  -0.00033706427 8.9406967e-008
		 0.27686071 -0.00090053678 9.6857548e-008 0.27686036 -0.00067538023 8.9406967e-008
		 0.27686048 -0.00058627129 -3.3294782e-008 0.27686071 -0.0011747032 -3.3294782e-008
		 0.27686048 -0.00037008524 8.9406967e-008 0.27686071 -0.0009005731 -8.9406967e-008
		 0.27686048 -0.00074152648 8.9406967e-008 0.27686048;
createNode polyMergeVert -n "polyMergeVert7";
	setAttr ".ics" -type "componentList" 2 "vtx[146]" "vtx[194]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[194]";
createNode polyMergeVert -n "polyMergeVert8";
	setAttr ".ics" -type "componentList" 2 "vtx[156]" "vtx[195]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[195]";
createNode polyMergeVert -n "polyMergeVert9";
	setAttr ".ics" -type "componentList" 2 "vtx[165]" "vtx[196]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[196]";
createNode polyMergeVert -n "polyMergeVert10";
	setAttr ".ics" -type "componentList" 2 "vtx[164]" "vtx[196]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[196]";
createNode polyMergeVert -n "polyMergeVert11";
	setAttr ".ics" -type "componentList" 2 "vtx[173]" "vtx[196]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[196]";
createNode polyMergeVert -n "polyMergeVert12";
	setAttr ".ics" -type "componentList" 2 "vtx[163]" "vtx[195]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[195]";
createNode polyMergeVert -n "polyMergeVert13";
	setAttr ".ics" -type "componentList" 2 "vtx[155]" "vtx[194]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22681373014990491 0.20109981861324686 4.1369946332288805 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[194]";
createNode polyTweak -n "polyTweak23";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[72]" -type "float3" -2.9802322e-008 0 0 ;
	setAttr ".tk[236]" -type "float3" 0.011438429 -0.007144928 0.0065894187 ;
	setAttr ".tk[237]" -type "float3" -3.7252903e-008 -0.007144928 -0.0065891822 ;
	setAttr ".tk[238]" -type "float3" 0.011438444 -0.007144928 -0.0065894206 ;
	setAttr ".tk[239]" -type "float3" -4.4237822e-008 -0.0071449503 -0.0065891822 ;
	setAttr ".tk[240]" -type "float3" -0.011438556 -0.007144928 -0.0065894206 ;
	setAttr ".tk[241]" -type "float3" -0.011438556 -0.007144928 0.0065894187 ;
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 8 "f[24:57]" "f[74:77]" "f[84:87]" "f[96:99]" "f[132:165]" "f[182:185]" "f[192:195]" "f[204:207]";
createNode polyMirror -n "polyMirror3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 0 4.2739273309707642 -3.0222950827245168e-016 ;
	setAttr ".d" 5;
createNode polyMergeVert -n "polyMergeVert14";
	setAttr ".ics" -type "componentList" 2 "vtx[107]" "vtx[207]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[107]";
createNode polyTweak -n "polyTweak24";
	setAttr ".uopa" yes;
	setAttr -s 161 ".tk[161:321]" -type "float3"  0.35397437 1.1209842 0 -0.003864591
		 1.18387616 0 -0.003864591 1.18387616 0 0.35397437 1.1209842 0 0.98567325 0.6893065
		 0 0.64546031 0.97575641 0 0.64546031 0.97575641 0 0.98567325 0.6893065 0 1.18387628
		 0.0038642632 0 1.14774883 0.3078858 0 1.14774883 0.3078858 0 1.18387628 0.0038642632
		 0 0.96105313 -0.7983858 0 1.11077142 -0.39694637 0 1.11077142 -0.39694637 0 0.96105313
		 -0.7983858 0 0.60830712 -1.23294175 0 0.60830712 -1.23294175 0 0.0047732843 -1.46218574
		 0 0.29315534 -1.39086556 0 0.29315534 -1.39086556 0 0.0047732843 -1.46218574 0 0.13659079
		 0.47070196 0 -0.0016559028 0.5072614 0 -0.0027691585 0.84841853 0 0.24619788 0.79858184
		 0 0.43847293 0.25506467 0 0.25219631 0.44012895 0 0.45048413 0.71019828 0 0.7143777
		 0.47401449 0 0.50726086 0.0016556848 0 0.47685027 0.11368468 0 0.81512541 0.21160264
		 0 0.84841824 0.002769283 0 0.44012851 -0.25219688 0 0.47576526 -0.11744076 0 0.79594243
		 -0.25837034 0 0.70278502 -0.52759141 0 0.2550644 -0.43847263 0 0.43317389 -0.83905196
		 0 0.0016556969 -0.50726092 0 0.12268794 -0.47440633 0 0.2086397 -0.93649596 0 0.0032269983
		 -0.98874515 0 0.13659079 0.47070196 0 -0.0016559028 0.5072614 0 0.43847293 0.25506467
		 0 0.25219631 0.44012895 0 0.50726086 0.0016556848 0 0.47685027 0.11368468 0 0.44012851
		 -0.25219688 0 0.47576526 -0.11744076 0 0.2550644 -0.43847263 0 0.0016556969 -0.50726092
		 0 0.12268794 -0.47440633 0 -0.0031135189 0.95385402 0 0.28754881 0.88720989 0 0.53067708
		 0.81085336 0 0.84119499 0.53606904 0 0.91491872 0.23876129 0 0.97333747 0.003176834
		 0 0.91303164 -0.26448631 0 0.79025459 -0.69101775 0 0.54194063 -1.024953961 0 0.17712328
		 -1.12377095 0 0.0038696954 -1.18554425 0 0.0038696954 -1.18554425 0 0.17712331 -1.12377083
		 0 0.18400766 -0.89504009 0 0.0025494343 -0.78096569 0 -0.0021974426 0.67324549 0
		 0.22651431 0.6547724 0 0.47751251 0.57694894 0 0.68640953 0.42209724 0 0.72727895
		 0.1879866 0 0.77018499 0.0025140827 0 0.74321431 -0.19455239 0 0.69980842 -0.49588695
		 0 0.4599112 -0.68050432 0 0.18400766 -0.89504009 0 0.0025494343 -0.78096569 0 0.21023281
		 -0.38716507 0 0.0013926119 -0.42663604 0 0.45259389 -0.24870948 0 0.44243839 0.0014442953
		 0 0.43169644 0.23345894 0 0.20681705 0.00067505258 0 0.21540073 0.3278839 0 -1.071021e-008
		 -1.4901161e-008 0 -0.0010849178 0.33236131 0 -0.36128446 1.11865044 0 -0.36128446
		 1.11865044 0 -0.99015188 0.68285787 0 -0.99015188 0.68285787 0 -0.65181589 0.97152072
		 0 -0.65181589 0.97152072 0 -1.18387699 -0.0038643903 0 -1.18387699 -0.0038643903
		 0 -1.14973414 0.30038682 0 -1.14973414 0.30038682 0 -0.95582134 -0.80464208 0 -0.95582134
		 -0.80464208 0 -1.1081562 -0.40418923 0 -1.1081562 -0.40418923 0 -0.60024619 -1.23688555
		 0 -0.60024619 -1.23688555 0 -0.28407043 -1.39275026 0 -0.28407043 -1.39275026 0 -0.1396604
		 0.4698 0 -0.25140575 0.79695755 0 -0.44012859 0.25219685 0 -0.71745694 0.46934155
		 0 -0.45511135 0.70724231 0 -0.25506446 0.43847281 0 -0.50726092 -0.0016557043 0 -0.848418
		 -0.0027693259 0 -0.8164888 0.20627713 0 -0.47758293 0.11056971 0 -0.4384729 -0.25506479
		 0 -0.69932622 -0.53216803 0 -0.79423892 -0.2635605 0 -0.47498885 -0.12054409 0 -0.25219637
		 -0.4401283 0 -0.42768717 -0.84186238 0 -0.20252191 -0.93783808 0 -0.11958853 -0.47519714
		 0 -0.1396604 0.4698 0 -0.44012859 0.25219685 0 -0.25506446 0.43847281 0 -0.50726092
		 -0.0016557043 0 -0.47758293 0.11056971 0 -0.4384729 -0.25506479 0 -0.47498885 -0.12054409
		 0 -0.25219637 -0.4401283 0 -0.11958853 -0.47519714 0 -0.29333416 0.88531357 0 -0.84467584
		 0.53056663 0 -0.53595847 0.80737132 0 -0.97333753 -0.0031768116 0 -0.91645902 0.23278432
		 0 -0.78572661 -0.69616246 0 -0.91128623 -0.27044076 0 -0.53523862 -1.028470874 0
		 -0.16978276 -1.12490368 0 -0.17816059 -0.89622188 0 -0.16978276 -1.12490368 0 -0.23078391
		 0.65327936 0 -0.68915004 0.41760704 0 -0.48126885 0.57381868 0 -0.7701844 -0.002513669
		 0 -0.72849131 0.18323487 0 -0.69655633 -0.50044447 0 -0.74192816 -0.19940031 0 -0.45545864
		 -0.68349117 0 -0.17816059 -0.89622188 0 -0.20770115 -0.38852957 0 -0.45096084 -0.25165877
		 0 -0.44243857 -0.001444326 0 -0.43321088 0.23063609 0 -0.20681696 -0.00067495101
		 0 -0.21753675 0.32647067 0;
createNode polyMergeVert -n "polyMergeVert15";
	setAttr ".ics" -type "componentList" 2 "vtx[108]" "vtx[209]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[209]";
createNode polyMergeVert -n "polyMergeVert16";
	setAttr ".ics" -type "componentList" 2 "vtx[105]" "vtx[208]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[105]";
createNode polyMergeVert -n "polyMergeVert17";
	setAttr ".ics" -type "componentList" 2 "vtx[106]" "vtx[209]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[209]";
createNode polyMergeVert -n "polyMergeVert18";
	setAttr ".ics" -type "componentList" 2 "vtx[103]" "vtx[208]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[103]";
createNode polyMergeVert -n "polyMergeVert19";
	setAttr ".ics" -type "componentList" 2 "vtx[104]" "vtx[208]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[104]";
createNode polyMergeVert -n "polyMergeVert20";
	setAttr ".ics" -type "componentList" 2 "vtx[102]" "vtx[209]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[209]";
createNode polyMergeVert -n "polyMergeVert21";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[208]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[21]";
createNode polyMergeVert -n "polyMergeVert22";
	setAttr ".ics" -type "componentList" 2 "vtx[53]" "vtx[287]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[53]";
createNode polyMergeVert -n "polyMergeVert23";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[286]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[22]";
createNode polyMergeVert -n "polyMergeVert24";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[284]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[284]";
createNode polyMergeVert -n "polyMergeVert25";
	setAttr ".ics" -type "componentList" 2 "vtx[66]" "vtx[284]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[66]";
createNode polyMergeVert -n "polyMergeVert26";
	setAttr ".ics" -type "componentList" 2 "vtx[57]" "vtx[283]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[57]";
createNode polyMergeVert -n "polyMergeVert27";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[280]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[25]";
createNode polyMergeVert -n "polyMergeVert28";
	setAttr ".ics" -type "componentList" 2 "vtx[26]" "vtx[280]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[26]";
createNode polyMergeVert -n "polyMergeVert29";
	setAttr ".ics" -type "componentList" 2 "vtx[35]" "vtx[279]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[35]";
createNode polyMergeVert -n "polyMergeVert30";
	setAttr ".ics" -type "componentList" 2 "vtx[27]" "vtx[206]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[27]";
createNode polyMergeVert -n "polyMergeVert31";
	setAttr ".ics" -type "componentList" 2 "vtx[110]" "vtx[205]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[110]";
createNode polyMergeVert -n "polyMergeVert32";
	setAttr ".ics" -type "componentList" 2 "vtx[109]" "vtx[205]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".mtc" -type "componentList" 1 "vtx[109]";
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
connectAttr "polyMergeVert32.out" "pCylinderShape1.i";
connectAttr "polyMergeVert13.out" "pCubeShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "polySplitRing1.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing3.mp";
connectAttr "polyTweak1.out" "polySplitRing4.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing3.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polySplitRing5.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing5.mp";
connectAttr "polySplitRing4.out" "polyTweak2.ip";
connectAttr "polySplitRing5.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "transformGeometry1.ig";
connectAttr "transformGeometry1.og" "polyMirror1.ip";
connectAttr "pCylinderShape1.wm" "polyMirror1.mp";
connectAttr "polyTweak4.out" "polySplitRing6.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing6.mp";
connectAttr "polyMirror1.out" "polyTweak4.ip";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplitRing8.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polySplitRing9.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "polyExtrudeEdge1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak6.out" "polyMergeVert1.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert1.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak6.ip";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polyMergeVert3.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert4.out" "polyMergeVert5.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert5.out" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polySplit2.ip";
connectAttr "polyTweak7.out" "polySplitRing11.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing11.mp";
connectAttr "polySplit2.out" "polyTweak7.ip";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polyTweak8.ip";
connectAttr "polyTweak8.out" "deleteComponent3.ig";
connectAttr "polyTweak9.out" "polyMirror2.ip";
connectAttr "pCylinderShape1.wm" "polyMirror2.mp";
connectAttr "deleteComponent3.og" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polySplitRing13.ip";
connectAttr "pCylinderShape1.wm" "polySplitRing13.mp";
connectAttr "polyMirror2.out" "polyTweak10.ip";
connectAttr "polySplitRing13.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyCube1.out" "polySplitRing14.ip";
connectAttr "pCubeShape1.wm" "polySplitRing14.mp";
connectAttr "polySplitRing14.out" "polySplitRing15.ip";
connectAttr "pCubeShape1.wm" "polySplitRing15.mp";
connectAttr "polySplitRing15.out" "polySplitRing16.ip";
connectAttr "pCubeShape1.wm" "polySplitRing16.mp";
connectAttr "polySplitRing16.out" "polySplitRing17.ip";
connectAttr "pCubeShape1.wm" "polySplitRing17.mp";
connectAttr "polySplitRing17.out" "polySplitRing18.ip";
connectAttr "pCubeShape1.wm" "polySplitRing18.mp";
connectAttr "polyTweak11.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polySplitRing18.out" "polyTweak11.ip";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyTweak12.out" "polySplitRing19.ip";
connectAttr "pCubeShape1.wm" "polySplitRing19.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polySplitRing20.ip";
connectAttr "pCubeShape1.wm" "polySplitRing20.mp";
connectAttr "polySplitRing19.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polySplitRing21.ip";
connectAttr "pCubeShape1.wm" "polySplitRing21.mp";
connectAttr "polySplitRing20.out" "polyTweak14.ip";
connectAttr "polySplitRing21.out" "polySplitRing22.ip";
connectAttr "pCubeShape1.wm" "polySplitRing22.mp";
connectAttr "polyTweak15.out" "polySplitRing23.ip";
connectAttr "pCubeShape1.wm" "polySplitRing23.mp";
connectAttr "polySplitRing22.out" "polyTweak15.ip";
connectAttr "polySplitRing23.out" "polySplitRing24.ip";
connectAttr "pCubeShape1.wm" "polySplitRing24.mp";
connectAttr "polySplitRing24.out" "polySplitRing25.ip";
connectAttr "pCubeShape1.wm" "polySplitRing25.mp";
connectAttr "polySplitRing25.out" "polySplitRing26.ip";
connectAttr "pCubeShape1.wm" "polySplitRing26.mp";
connectAttr "polyTweak16.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polySplitRing26.out" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polySplitRing27.ip";
connectAttr "pCubeShape1.wm" "polySplitRing27.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak17.ip";
connectAttr "polySplitRing27.out" "polySplitRing28.ip";
connectAttr "pCubeShape1.wm" "polySplitRing28.mp";
connectAttr "polyTweak18.out" "polySplitRing29.ip";
connectAttr "pCubeShape1.wm" "polySplitRing29.mp";
connectAttr "polySplitRing28.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polySplitRing30.ip";
connectAttr "pCubeShape1.wm" "polySplitRing30.mp";
connectAttr "polySplitRing29.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polySplitRing31.ip";
connectAttr "pCubeShape1.wm" "polySplitRing31.mp";
connectAttr "polySplitRing30.out" "polyTweak20.ip";
connectAttr "polySplitRing31.out" "polyTweak21.ip";
connectAttr "polyTweak21.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyExtrudeEdge2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge2.mp";
connectAttr "polyTweak22.out" "polyMergeVert6.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert6.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweak22.ip";
connectAttr "polyMergeVert6.out" "polyMergeVert7.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert7.out" "polyMergeVert8.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert8.out" "polyMergeVert9.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert9.out" "polyMergeVert10.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert10.out" "polyMergeVert11.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert11.out" "polyMergeVert12.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert12.mp";
connectAttr "polyMergeVert12.out" "polyMergeVert13.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert13.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak23.ip";
connectAttr "polyTweak23.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polyMirror3.ip";
connectAttr "pCylinderShape1.wm" "polyMirror3.mp";
connectAttr "polyTweak24.out" "polyMergeVert14.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert14.mp";
connectAttr "polyMirror3.out" "polyTweak24.ip";
connectAttr "polyMergeVert14.out" "polyMergeVert15.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert15.mp";
connectAttr "polyMergeVert15.out" "polyMergeVert16.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert16.mp";
connectAttr "polyMergeVert16.out" "polyMergeVert17.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert17.mp";
connectAttr "polyMergeVert17.out" "polyMergeVert18.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert18.mp";
connectAttr "polyMergeVert18.out" "polyMergeVert19.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert19.mp";
connectAttr "polyMergeVert19.out" "polyMergeVert20.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert20.mp";
connectAttr "polyMergeVert20.out" "polyMergeVert21.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert21.mp";
connectAttr "polyMergeVert21.out" "polyMergeVert22.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert22.mp";
connectAttr "polyMergeVert22.out" "polyMergeVert23.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert23.mp";
connectAttr "polyMergeVert23.out" "polyMergeVert24.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert24.mp";
connectAttr "polyMergeVert24.out" "polyMergeVert25.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert25.mp";
connectAttr "polyMergeVert25.out" "polyMergeVert26.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert26.mp";
connectAttr "polyMergeVert26.out" "polyMergeVert27.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert27.mp";
connectAttr "polyMergeVert27.out" "polyMergeVert28.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert28.mp";
connectAttr "polyMergeVert28.out" "polyMergeVert29.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert29.mp";
connectAttr "polyMergeVert29.out" "polyMergeVert30.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert30.mp";
connectAttr "polyMergeVert30.out" "polyMergeVert31.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert31.mp";
connectAttr "polyMergeVert31.out" "polyMergeVert32.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert32.mp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
// End of robot_mech3.ma
