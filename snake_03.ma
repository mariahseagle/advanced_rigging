//Maya ASCII 2015 scene
//Name: snake_03.ma
//Last modified: Wed, Sep 16, 2015 11:21:17 PM
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
	setAttr ".t" -type "double3" -15.07015047849657 8.5558199100404284 21.123311174268828 ;
	setAttr ".r" -type "double3" 340.46164726804244 -30.199999999985895 -9.2000677165219198e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 25.298122520334442;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.6504488576251672 100.1 0.18662978907217009 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 14.610255124036346;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.8751706337748608 -0.36187698690671755 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 28.328989976699187;
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
	setAttr ".ow" 6.522220500742506;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "snake";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "snakeShape" -p "snake";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000003725290298 0.40624991059303284 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "snakeShapeOrig" -p "snake";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode joint -n "root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.4854793811538611 0 0 1;
	setAttr ".radi" 0.75;
createNode joint -n "body_01" -p "root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.4854793811538611 0 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "body_02" -p "body_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.1218948404661497 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.3635845406877114 0 0 1;
	setAttr ".radi" 0.50000000000000011;
createNode joint -n "body_03" -p "body_02";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.6657333594689665 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.6978511812187449 0 0 1;
	setAttr ".radi" 0.50000000000000011;
createNode joint -n "body_04" -p "body_03";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.712615990417486 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.014764809198741125 0 0 1;
	setAttr ".radi" 0.55172413793103459;
createNode joint -n "body_05" -p "body_04";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 1.6249389524118516 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.6397037616105927 0 0 1;
	setAttr ".radi" 0.55172413793103459;
createNode joint -n "body_06" -p "body_05";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 1.6718215833603716 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.3115253449709643 0 0 1;
	setAttr ".radi" 0.50000000000000011;
createNode joint -n "body_07" -p "body_06";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 1.7970047261248201 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.1085300710957844 0 0 1;
	setAttr ".radi" 0.55172413793103459;
createNode joint -n "body_08" -p "body_07";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 1.2123718000648882 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.3209018711606726 0 0 1;
	setAttr ".radi" 0.55172413793103459;
createNode joint -n "neck" -p "body_01";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.83451403593282425 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 0 180 0 ;
	setAttr ".bps" -type "matrix" -1 0 -1.2246467991473532e-016 0 0 1 0 0 1.2246467991473532e-016 0 -1 0
		 -5.3199934170866854 0 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "head" -p "neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.72974097345752753 0 -3.9056716412016585e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" -1 0 -1.2246467991473532e-016 0 0 1 0 0 1.2246467991473532e-016 0 -1 0
		 -6.0497343905442129 0 3.0119966938502238e-016 1;
	setAttr ".radi" 0.50000000000000011;
createNode pointConstraint -n "root_pointConstraint1" -p "root";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0 -1.1102230246251565e-016 0 ;
	setAttr ".rst" -type "double3" -4.4854793811538611 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "root_GRP";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -4.4854793811538611 0 0 ;
	setAttr ".sp" -type "double3" -4.4854793811538611 0 0 ;
createNode transform -n "root_CTRL" -p "root_GRP";
	setAttr ".rp" -type "double3" -4.4854793811538611 1.1102230246251565e-016 0 ;
	setAttr ".sp" -type "double3" -4.4854793811538611 1.1102230246251565e-016 0 ;
createNode nurbsCurve -n "root_CTRLShape" -p "root_CTRL";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0.087170872078163875 -1.4484180009592007 
		-0.87078162912702184 0 -1.7724913330453174 -1.2314711897767756 -0.087170872078163875 
		-1.4484180009592007 -0.87078162912702239 -0.12327822953682954 -0.66603576743346027 
		-4.8022211356011433e-016 -0.087170872078163875 0.11634646609228072 0.87078162912702184 
		0 0.4404197981783986 1.2314711897767756 0.087170872078162542 0.11634646609228072 
		0.87078162912702228 0.1232782295368291 -0.66603576743345938 5.3805300656297109e-016 
		0 0 0 0 0 0 0 0 0;
createNode transform -n "body_01_GRP" -p "root_CTRL";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -4.4854793811538611 0 0 ;
	setAttr ".sp" -type "double3" -4.4854793811538611 0 0 ;
createNode transform -n "body_01_CTRL" -p "body_01_GRP";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -4.4854793811538611 1.1102230246251565e-016 0 ;
	setAttr ".sp" -type "double3" -4.4854793811538611 1.1102230246251565e-016 0 ;
createNode nurbsCurve -n "body_01_CTRLShape" -p "body_01_CTRL";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.78082088316897513 0.20485594096947124 
		-0.3277935129093365 8.8817841970012523e-016 0.36565020002906135 0 0.78082088316897291 
		0.20485594096947091 0.32779351290933134 1.1042474827617026 -1.8794104606613493e-016 
		0.46357003161429772 0.78082088316897291 0.51391216915335303 0.32779351290933134 8.8817841970012523e-016 
		0.75125078114297916 0 -0.7808208831689738 0.51391216915335325 -0.3277935129093365 
		-1.1042474827617017 2.1057390327739479e-016 -0.46357003161429833 0 0 0 0 0 0 0 0 
		0;
createNode transform -n "body_02_GRP" -p "body_01_CTRL";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -3.3635845406877114 0 0 ;
	setAttr ".sp" -type "double3" -3.3635845406877114 0 0 ;
createNode transform -n "body_02_CTRL" -p "body_02_GRP";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -3.3635845406877114 1.1102230246251565e-016 0 ;
	setAttr ".sp" -type "double3" -3.3635845406877114 1.1102230246251565e-016 0 ;
createNode nurbsCurve -n "body_02_CTRLShape" -p "body_02_CTRL";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.28718311495821158 -0.28718311495821003 
		0 0 -0.406138256058453 0 0.28718311495821069 -0.28718311495821025 0 0.40613825605845211 
		-1.1102230246251565e-016 0 0.28718311495821069 0.52305890437138514 0 0 0.75540364440619845 
		0 -0.28718311495821114 0.52305890437138536 0 -0.406138256058453 1.6653345369377348e-016 
		0 0 0 0 0 0 0 0 0 0;
createNode transform -n "body_03_GRP" -p "body_02_CTRL";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -1.6978511812187449 0 0 ;
	setAttr ".sp" -type "double3" -1.6978511812187449 0 0 ;
createNode transform -n "body_03_CTRL" -p "body_03_GRP";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" -1.6978511812187449 1.1102230246251565e-016 0 ;
	setAttr ".sp" -type "double3" -1.6978511812187449 1.1102230246251565e-016 0 ;
createNode nurbsCurve -n "body_03_CTRLShape" -p "body_03_CTRL";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.2089967736638989 -0.2089967736638989 
		0 0 -0.29556607180770578 0 0.20899677366389957 -0.20899677366389902 0 0.29556607180770733 
		-1.1525837135165579e-016 0 0.20899677366389913 0.55038449648606858 0 0 0.75034339356444513 
		0 -0.20899677366389813 0.55038449648606869 0 -0.29556607180770467 1.2913839551777902e-016 
		0 0 0 0 0 0 0 0 0 0;
createNode transform -n "body_04_GRP" -p "body_03_CTRL";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.014764809198741125 0 0 ;
	setAttr ".sp" -type "double3" 0.014764809198741125 0 0 ;
createNode transform -n "body_04_CTRL" -p "body_04_GRP";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0.014764809198741125 1.1102230246251565e-016 0 ;
	setAttr ".sp" -type "double3" 0.014764809198741125 1.1102230246251565e-016 0 ;
createNode nurbsCurve -n "body_04_CTRLShape" -p "body_04_CTRL";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.22888395260390737 -0.22888395260390759 
		0 1.0408340855860843e-017 -0.32369078998200629 0 0.22888395260390781 -0.22888395260390759 
		0 0.32369078998200718 -1.2622583183068963e-016 0 0.22888395260390781 0.57027167542607726 
		0 6.9388939039072284e-017 0.77846811173874564 0 -0.22888395260390704 0.57027167542607726 
		0 -0.32369078998200684 1.4142661573603856e-016 0 0 0 0 0 0 0 0 0 0;
createNode transform -n "body_05_GRP" -p "body_04_CTRL";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.6397037616105927 0 0 ;
	setAttr ".sp" -type "double3" 1.6397037616105927 0 0 ;
createNode transform -n "body_05_CTRL" -p "body_05_GRP";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 1.6397037616105927 1.1102230246251565e-016 0 ;
	setAttr ".sp" -type "double3" 1.6397037616105927 1.1102230246251565e-016 0 ;
createNode nurbsCurve -n "body_05_CTRLShape" -p "body_05_CTRL";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.23721903128334265 -0.23721903128334243 
		0 0 -0.33547837129391045 0 0.23721903128334232 -0.23721903128334243 0 0.33547837129391012 
		-1.3082249414675248e-016 0 0.2372190312833421 0.5786067541055121 0 2.2204460492503131e-016 
		0.7902556930506498 0 -0.23721903128334132 0.5786067541055121 0 -0.33547837129391223 
		1.4657683249922947e-016 0 0 0 0 0 0 0 0 0 0;
createNode transform -n "body_06_GRP" -p "body_05_CTRL";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 3.3115253449709643 0 0 ;
	setAttr ".sp" -type "double3" 3.3115253449709643 0 0 ;
createNode transform -n "body_06_CTRL" -p "body_06_GRP";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 3.3115253449709643 1.1102230246251565e-016 0 ;
	setAttr ".sp" -type "double3" 3.3115253449709643 1.1102230246251565e-016 0 ;
createNode nurbsCurve -n "body_06_CTRLShape" -p "body_06_CTRL";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.31864762825378934 -0.31864762825378917 
		0 0 -0.45063579749452887 0 0.31864762825379245 -0.31864762825378923 0 0.4506357974945292 
		-1.7572906042397745e-016 0 0.31864762825379245 0.58590023386385681 0 0 0.83127800203916613 
		0 -0.31864762825378845 0.58590023386385681 0 -0.45063579749452787 1.9689128557752506e-016 
		0 0 0 0 0 0 0 0 0 0;
createNode transform -n "body_07_GRP" -p "body_06_CTRL";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 5.1085300710957844 0 0 ;
	setAttr ".sp" -type "double3" 5.1085300710957844 0 0 ;
createNode transform -n "body_07_CTRL" -p "body_07_GRP";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 5.1085300710957844 1.1102230246251565e-016 0 ;
	setAttr ".sp" -type "double3" 5.1085300710957844 1.1102230246251565e-016 0 ;
createNode nurbsCurve -n "body_07_CTRLShape" -p "body_07_CTRL";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.37878097925703713 -0.37878097925703547 
		0 0 -0.53567719803426139 0 0.37878097925703269 -0.37878097925703552 0 0.53567719803426161 
		-2.0889163982196176e-016 0 0.37878097925703269 0.64603358486710305 0 0 0.91631940257889866 
		0 -0.37878097925703713 0.64603358486710305 0 -0.53567719803426073 2.3404747861117861e-016 
		0 0 0 0 0 0 0 0 0 0;
createNode transform -n "body_08_GRP" -p "body_07_CTRL";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 6.3209018711606726 0 0 ;
	setAttr ".sp" -type "double3" 6.3209018711606726 0 0 ;
createNode transform -n "body_08_CTRL" -p "body_08_GRP";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 6.3209018711606726 1.1102230246251565e-016 0 ;
	setAttr ".sp" -type "double3" 6.3209018711606726 1.1102230246251565e-016 0 ;
createNode nurbsCurve -n "body_08_CTRLShape" -p "body_08_CTRL";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.41137869957390194 -0.41137869957390505 
		0 8.8817841970012523e-016 -0.58177733620882432 0 0.41137869957390638 -0.41137869957390522 
		0 0.58177733620882943 -2.2686876017474482e-016 0 0.41137869957390638 0.67863130518397263 
		0 8.8817841970012523e-016 0.96241954075346159 0 -0.41137869957390105 0.67863130518397274 
		0 -0.58177733620882055 2.5418949910967535e-016 0 0 0 0 0 0 0 0 0 0;
createNode transform -n "neck_GRP" -p "body_01_CTRL";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 5.3199934170866854 0 -6.5151129097201989e-016 ;
	setAttr ".rpt" -type "double3" -10.639986834173371 0 6.5151129097201999e-016 ;
	setAttr ".sp" -type "double3" 5.3199934170866854 0 -6.5151129097201989e-016 ;
createNode transform -n "neck_CTRL" -p "neck_GRP";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 5.3199934170866854 1.1102230246251565e-016 -6.5151129097201979e-016 ;
	setAttr ".sp" -type "double3" 5.3199934170866854 1.1102230246251565e-016 -6.5151129097201979e-016 ;
createNode nurbsCurve -n "neck_CTRLShape" -p "neck_CTRL";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.59123108933242818 -0.46926615321704512 
		0 0 -0.66364255824219653 0 0.59123108933243085 -0.46926615321704529 0 0.86369790137425895 
		-2.5879276317075512e-016 0 0.59123108933243085 0.46926615321704512 0 0 0.66364255824219653 
		0 -0.5912310893324273 0.46926615321704518 0 -0.86369790137425539 2.8995795980422499e-016 
		0 0 0 0 0 0 0 0 0 0;
createNode transform -n "head_GRP" -p "neck_CTRL";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 6.0497343905442129 0 -1.0420784550921859e-015 ;
	setAttr ".sp" -type "double3" 6.0497343905442129 0 -1.0420784550921859e-015 ;
createNode transform -n "head_CTRL" -p "head_GRP";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 6.0497343905442129 1.1102230246251565e-016 -1.0420784550921859e-015 ;
	setAttr ".sp" -type "double3" 6.0497343905442129 1.1102230246251565e-016 -1.0420784550921859e-015 ;
createNode nurbsCurve -n "head_CTRLShape" -p "head_CTRL";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0.22771766613617483 -0.11665066238726007 
		-7.9880552225983965e-017 0.12840136672364366 -0.18106439229231175 -1.5724632276425717e-017 
		0.55295790962144586 -0.11665066238726007 -1.5724632276425717e-017 0.72881498768395225 
		0.038857837952553653 -1.5724632276425717e-017 0.48050129607472059 0.48215148070827918 
		-6.8512562907200863e-018 0.055944753176918383 0.64745515851246327 -6.8512562907200863e-018 
		0.33203051552423535 0.48215148070827907 -9.2655191937286277e-017 0.22863005100845779 
		0.03885783795255382 -1.0152856792299191e-016 0 0 0 0 0 0 0 0 0;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 3;
	setAttr -s 5 ".dli[1:4]"  1 2 3 4;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".w" 2;
	setAttr ".h" 2;
	setAttr ".sw" 6;
	setAttr ".sh" 6;
	setAttr ".sd" 20;
	setAttr ".cuv" 4;
createNode polyAverageVertex -n "polyAverageVertex1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0:553]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.6150715783848693 0 0.024836905764636263 0 0.062317089291436645 1;
createNode polyAverageVertex -n "polyAverageVertex2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0:553]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.6150715783848693 0 0.024836905764636263 0 0.062317089291436645 1;
createNode polyAverageVertex -n "polyAverageVertex3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0:553]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.6150715783848693 0 0.024836905764636263 0 0.062317089291436645 1;
createNode polyAverageVertex -n "polyAverageVertex4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0:553]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.6150715783848693 0 0.024836905764636263 0 0.062317089291436645 1;
createNode polyAverageVertex -n "polyAverageVertex5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0:553]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.6150715783848693 0 0.024836905764636263 0 0.062317089291436645 1;
createNode polyAverageVertex -n "polyAverageVertex6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0:553]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.6150715783848693 0 0.024836905764636263 0 0.062317089291436645 1;
createNode polyAverageVertex -n "polyAverageVertex7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0:553]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.6150715783848693 0 0.024836905764636263 0 0.062317089291436645 1;
createNode polyAverageVertex -n "polyAverageVertex8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0:553]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.6150715783848693 0 0.024836905764636263 0 0.062317089291436645 1;
createNode polyAverageVertex -n "polyAverageVertex9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0:553]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.6150715783848693 0 0.024836905764636263 0 0.062317089291436645 1;
createNode polyAverageVertex -n "polyAverageVertex10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0:553]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.6150715783848693 0 0.024836905764636263 0 0.062317089291436645 1;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[354:360]" "e[669:675]" "e[695]" "e[715]" "e[735]" "e[755]" "e[775]" "e[909]" "e[929]" "e[949]" "e[969]" "e[989]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.6150715783848693 0 0.024836905764636263 0 0.062317089291436645 1;
	setAttr ".wt" 0.6668439507484436;
	setAttr ".dr" no;
	setAttr ".re" 989;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 554 ".tk";
	setAttr ".tk[0:165]" -type "float3"  0.24529335 0.24529335 0.20866095 0.18938828
		 0.26186904 0.20972894 0.10199932 0.27454263 0.210513 2.4161213e-008 0.27917743 0.21079436
		 -0.10199929 0.27454263 0.210513 -0.18938822 0.26186904 0.20972894 -0.24529335 0.24529335
		 0.20866095 0.26186907 0.18938825 0.20972894 0.19353347 0.19353344 0.21231446 0.10287911
		 0.19879428 0.21374847 2.4917213e-008 0.20093833 0.21420234 -0.10287906 0.19879431
		 0.21374844 -0.19353342 0.19353345 0.21231446 -0.26186904 0.18938828 0.20972894 0.2745426
		 0.10199932 0.210513 0.19879431 0.10287908 0.21374844 0.10467058 0.10467055 0.21555445
		 2.1667747e-008 0.10545316 0.21614389 -0.10467055 0.10467055 0.21555445 -0.19879425
		 0.10287909 0.21374847 -0.2745426 0.10199932 0.21051303 0.27917743 2.695977e-009 0.21079433
		 0.20093834 -2.1203694e-009 0.21420237 0.1054532 4.5205097e-009 0.21614392 2.1483961e-008
		 -1.9918478e-009 0.21676059 -0.10545316 6.5772552e-009 0.21614389 -0.2009383 1.5664403e-010
		 0.21420234 -0.27917743 8.4918783e-009 0.21079436 0.27454257 -0.10199932 0.210513
		 0.19879428 -0.10287907 0.21374844 0.10467057 -0.10467056 0.21555445 1.6335957e-008
		 -0.10545318 0.21614389 -0.10467055 -0.10467056 0.21555445 -0.19879425 -0.10287907
		 0.21374847 -0.2745426 -0.10199932 0.210513 0.26186904 -0.18938828 0.20972896 0.19353344
		 -0.19353344 0.21231446 0.10287908 -0.19879425 0.21374844 1.6948986e-008 -0.20093833
		 0.2142024 -0.10287906 -0.19879425 0.21374847 -0.19353344 -0.19353344 0.21231443 -0.26186904
		 -0.18938825 0.20972894 0.24529335 -0.24529335 0.20866095 0.18938825 -0.26186904 0.20972896
		 0.10199932 -0.27454263 0.210513 1.4936942e-008 -0.27917743 0.21079436 -0.10199931
		 -0.27454263 0.210513 -0.18938822 -0.26186904 0.20972894 -0.24529335 -0.24529335 0.20866095
		 0.26455075 -0.26455066 0.16777882 0.19614694 -0.3057968 0.16654696 0.1043587 -0.3295925
		 0.16516981 1.7137998e-008 -0.33728746 0.16461793 -0.10435869 -0.32959247 0.16516979
		 -0.19614694 -0.3057968 0.16654696 -0.26455069 -0.26455066 0.16777879 0.23877338 -0.23877335
		 0.17632288 0.17333677 -0.28404561 0.17592628 0.091286421 -0.31046298 0.17531577 1.4988279e-008
		 -0.3192451 0.17506345 -0.091286413 -0.31046298 0.17531577 -0.17333674 -0.28404561
		 0.17592624 -0.23877335 -0.23877335 0.17632291 0.22935952 -0.22935951 0.18793665 0.16482486
		 -0.27585903 0.18803929 0.086277775 -0.30376172 0.1881911 1.444916e-008 -0.31294563
		 0.18826877 -0.086277731 -0.30376175 0.1881911 -0.16482486 -0.27585903 0.18803944
		 -0.22935951 -0.22935949 0.18793665 0.22417039 -0.22417037 0.19079898 0.16037506 -0.27099776
		 0.19083035 0.083690859 -0.29932484 0.19090308 1.1328193e-008 -0.30880046 0.19093117
		 -0.083690822 -0.29932484 0.19090308 -0.16037506 -0.27099776 0.19083035 -0.22417039
		 -0.22417037 0.19079901 0.22368151 -0.22368148 0.19295108 0.15967485 -0.27097082 0.1929688
		 0.083205968 -0.29979914 0.19299227 1.2395505e-008 -0.30941993 0.19300821 -0.083205938
		 -0.29979914 0.19299227 -0.15967484 -0.27097082 0.19296874 -0.22368145 -0.22368142
		 0.19295108 0.22669137 -0.22669134 0.1560926 0.16167258 -0.27490833 0.15609638 0.0841868
		 -0.30435759 0.15610754 9.6379473e-009 -0.31422776 0.15611112 -0.084186748 -0.30435759
		 0.15610754 -0.16167258 -0.27490833 0.15609643 -0.22669137 -0.22669128 0.1560926 0.22848825
		 -0.22848825 0.11793033 0.16287802 -0.27720821 0.11793312 0.08478868 -0.30701631 0.11793584
		 1.3287384e-008 -0.31700239 0.11793855 -0.08478865 -0.30701631 0.11793584 -0.16287793
		 -0.27720827 0.11793312 -0.22848824 -0.22848821 0.11793033 0.22949192 -0.22949192
		 0.078979731 0.16356196 -0.27848735 0.07898014 0.085131899 -0.30847669 0.07898178
		 1.1907574e-008 -0.31853259 0.078982078 -0.085131899 -0.30847669 0.078981772 -0.16356196
		 -0.27848724 0.07898014 -0.22949192 -0.22949192 0.078979746 0.22999102 -0.22999105
		 0.039587408 0.16390345 -0.27911651 0.039587785 0.085304596 -0.30919561 0.039588075
		 1.3223294e-008 -0.31928095 0.039588299 -0.085304558 -0.30919567 0.039588079 -0.16390343
		 -0.27911651 0.039587777 -0.22999102 -0.229991 0.039587405 0.23014055 -0.23014055
		 8.0958634e-010 0.16400655 -0.27930555 -6.9667911e-009 0.085356668 -0.30940989 -7.8326039e-009
		 1.3765746e-008 -0.31950483 -1.0330846e-008 -0.085356623 -0.30940989 -8.2954914e-009
		 -0.1640065 -0.27930555 -5.595711e-009 -0.23014055 -0.23014055 5.9486782e-010 0.2398199
		 -0.23981978 -0.039587438 0.17090793 -0.29104468 -0.039587781 0.088950127 -0.3224093
		 -0.039588094 1.3401548e-008 -0.33292556 -0.039588295 -0.08895009 -0.3224093 -0.039588112
		 -0.17090791 -0.29104468 -0.039587781 -0.23981979 -0.23981982 -0.039587438 0.25376052
		 -0.25376052 -0.073054552 0.18085855 -0.30793697 -0.073054895 0.094134517 -0.34109792
		 -0.073056236 1.0872731e-008 -0.3522172 -0.073056415 -0.094134517 -0.34109792 -0.073056251
		 -0.18085855 -0.30793703 -0.073054895 -0.25376052 -0.25376052 -0.073054567 0.27290046
		 -0.27290043 -0.10885443 0.1945374 -0.33109045 -0.10885637 0.10126942 -0.36669233
		 -0.10885803 1.3920139e-008 -0.37861955 -0.10885994 -0.10126939 -0.36669233 -0.10885803
		 -0.19453734 -0.33109045 -0.10885635 -0.27290049 -0.27290046 -0.10885443 0.28016734
		 -0.28016725 -0.15063255 0.19981077 -0.33975852 -0.15063484 0.10404629 -0.37615478
		 -0.1506414 1.0864156e-008 -0.38835317 -0.15064354 -0.10404624 -0.37615475 -0.1506414
		 -0.19981068 -0.33975852 -0.15063481 -0.28016722 -0.28016725 -0.15063255 0.29757887
		 -0.29757878 -0.19825779 0.21242629 -0.36049062 -0.1982653 0.11069451 -0.39884302
		 -0.19827513 1.3562236e-008 -0.41164228 -0.19828214 -0.11069448 -0.39884299 -0.19827519
		 -0.21242626 -0.36049062 -0.1982653 -0.29757872 -0.29757872 -0.19825779 0.31311262
		 -0.31311259 -0.24608739 0.22400583 -0.37851939 -0.24609549 0.11689623 -0.4180856
		 -0.24611445 1.2420117e-008 -0.43132091 -0.24612187 -0.11689617 -0.41808555 -0.24611442
		 -0.2240058 -0.37851939 -0.24609549 -0.31311256 -0.31311259 -0.24608739 0.31968847
		 -0.31968844 -0.27418974 0.22973786 -0.38450101 -0.27420294 0.12025654 -0.4233925
		 -0.27422252 7.7855544e-009 -0.43619314 -0.2742326 -0.12025653 -0.4233925 -0.27422255;
	setAttr ".tk[166:331]" -0.22973789 -0.38450104 -0.27420306 -0.31968847 -0.31968844
		 -0.27418971 0.32250795 -0.32250789 -0.29857096 0.23412329 -0.38365662 -0.29821214
		 0.12329926 -0.41933814 -0.29765907 9.2608596e-009 -0.43119988 -0.29743075 -0.12329929
		 -0.41933808 -0.29765904 -0.23412327 -0.38365662 -0.29821214 -0.32250795 -0.32250789
		 -0.2985709 0.31231737 -0.31231731 -0.319794 0.2315629 -0.36101112 -0.3184858 0.12320161
		 -0.389103 -0.31702319 6.0231469e-009 -0.39818728 -0.31643701 -0.12320162 -0.389103
		 -0.31702313 -0.23156281 -0.36101118 -0.3184858 -0.31231731 -0.31231731 -0.319794
		 0.28958309 -0.28958303 -0.32296774 0.22358386 -0.30915168 -0.32242027 0.12041612
		 -0.32411376 -0.3220194 8.7721563e-009 -0.32958522 -0.32187524 -0.12041612 -0.3241137
		 -0.3220194 -0.22358394 -0.30915168 -0.32242033 -0.28958309 -0.28958306 -0.32296774
		 0.30915162 -0.22358389 -0.32242027 0.22847751 -0.22847748 -0.32109666 0.12145478
		 -0.23468816 -0.32036221 -1.6182164e-010 -0.23721927 -0.32012939 -0.12145482 -0.23468816
		 -0.32036218 -0.22847749 -0.22847749 -0.32109666 -0.30915162 -0.22358389 -0.32242033
		 0.32411376 -0.12041607 -0.32201943 0.23468821 -0.12145475 -0.32036224 0.12356971
		 -0.12356963 -0.31943688 1.5729085e-009 -0.12449358 -0.31913513 -0.1235697 -0.12356964
		 -0.31943688 -0.23468818 -0.12145475 -0.32036221 -0.32411364 -0.1204161 -0.3220194
		 0.32958525 4.0683236e-008 -0.32187527 0.23721929 4.8579146e-008 -0.32012942 0.12449357
		 4.4202068e-008 -0.31913513 -4.9636051e-009 4.9537608e-008 -0.31881922 -0.1244936
		 3.990106e-008 -0.31913513 -0.23721944 3.8229672e-008 -0.32012942 -0.32958522 2.8061399e-008
		 -0.32187524 0.32411376 0.12041616 -0.32201943 0.23468821 0.12145481 -0.32036221 0.1235697
		 0.12356978 -0.31943688 -9.8167341e-010 0.12449361 -0.31913513 -0.1235697 0.12356978
		 -0.31943694 -0.23468818 0.12145479 -0.32036224 -0.3241137 0.12041614 -0.32201943
		 0.30915162 0.22358392 -0.32242033 0.22847751 0.22847755 -0.32109666 0.12145477 0.2346883
		 -0.32036221 -7.2446813e-009 0.23721945 -0.32012945 -0.12145482 0.2346883 -0.32036221
		 -0.22847752 0.22847755 -0.32109666 -0.30915174 0.22358392 -0.32242027 0.28958309
		 0.28958318 -0.32296774 0.22358386 0.30915165 -0.32242027 0.12041612 0.32411376 -0.3220194
		 2.8899168e-009 0.32958522 -0.32187524 -0.12041614 0.32411373 -0.32201943 -0.22358392
		 0.30915165 -0.32242027 -0.28958321 0.28958318 -0.32296774 0.31231737 0.3123174 -0.319794
		 0.23156287 0.36101121 -0.3184858 0.12320161 0.3891032 -0.31702316 -2.2626636e-009
		 0.39818734 -0.31643701 -0.12320162 0.3891032 -0.31702316 -0.23156287 0.36101121 -0.31848583
		 -0.31231737 0.3123174 -0.319794 0.32250795 0.32250792 -0.29857096 0.23412329 0.38365671
		 -0.29821214 0.12329926 0.41933817 -0.29765907 2.4858404e-009 0.43119991 -0.29743078
		 -0.12329934 0.41933817 -0.29765907 -0.2341233 0.38365671 -0.29821217 -0.32250792
		 0.32250792 -0.29857096 0.3196885 0.31968847 -0.27418971 0.22973786 0.38450101 -0.27420294
		 0.12025652 0.42339256 -0.27422258 5.3849929e-009 0.43619314 -0.2742326 -0.12025652
		 0.42339256 -0.27422258 -0.22973789 0.38450101 -0.27420273 -0.31968847 0.31968847
		 -0.27418974 0.31311262 0.31311274 -0.24608739 0.22400583 0.37851945 -0.24609537 0.11689626
		 0.4180856 -0.24611445 1.235664e-008 0.43132091 -0.24612184 -0.11689615 0.4180856
		 -0.24611445 -0.2240058 0.37851942 -0.24609537 -0.31311256 0.31311265 -0.24608739
		 0.29757887 0.29757884 -0.19825779 0.21242629 0.36049068 -0.19826527 0.11069451 0.39884305
		 -0.19827516 1.5630855e-008 0.41164228 -0.19828211 -0.11069448 0.39884302 -0.19827513
		 -0.21242626 0.36049062 -0.1982653 -0.29757872 0.29757884 -0.19825773 0.28016728 0.28016731
		 -0.15063246 0.19981071 0.33975852 -0.15063487 0.10404629 0.37615484 -0.1506414 1.4487086e-008
		 0.38835317 -0.15064357 -0.10404624 0.37615478 -0.1506414 -0.19981068 0.33975852 -0.15063487
		 -0.28016722 0.28016725 -0.15063246 0.27290046 0.27290049 -0.10885444 0.1945374 0.33109051
		 -0.10885632 0.10126943 0.36669239 -0.10885803 1.1696891e-008 0.37861955 -0.10885987
		 -0.10126939 0.36669239 -0.10885803 -0.19453737 0.33109039 -0.10885632 -0.27290046
		 0.27290046 -0.10885447 0.25376052 0.25376052 -0.073054492 0.18085855 0.30793709 -0.07305491
		 0.094134517 0.34109795 -0.073056251 1.205751e-008 0.35221732 -0.073056459 -0.094134517
		 0.34109795 -0.073056236 -0.18085855 0.30793703 -0.07305491 -0.25376052 0.25376052
		 -0.073054492 0.23981979 0.23981993 -0.039587423 0.17090793 0.29104474 -0.039587718
		 0.088950127 0.32240936 -0.039588045 8.2401508e-009 0.33292562 -0.039588295 -0.08895009
		 0.3224093 -0.039588049 -0.17090791 0.29104468 -0.039587718 -0.23981979 0.23981987
		 -0.039587408 0.23014055 0.23014055 2.5754732e-008 0.16400652 0.27930561 2.5943624e-008
		 0.085356653 0.30940992 2.8083637e-008 8.2169018e-009 0.31950483 2.9503457e-008 -0.085356623
		 0.30940992 2.803208e-008 -0.1640065 0.27930558 2.8933568e-008 -0.23014055 0.23014055
		 2.6838322e-008 0.22999112 0.22999115 0.039587379 0.16390345 0.27911651 0.039587758
		 0.085304596 0.30919573 0.039588127 7.1710122e-009 0.31928101 0.039588351 -0.085304558
		 0.30919567 0.03958812 -0.16390343 0.27911657 0.039587744 -0.22999099 0.22999109 0.039587375
		 0.22949192 0.22949192 0.078979798 0.16356196 0.27848735 0.078980178 0.085131899 0.30847672
		 0.078981832 9.8192512e-009 0.31853265 0.078982048 -0.085131899 0.30847672 0.078981832
		 -0.16356196 0.27848735 0.078980178 -0.22949192 0.22949192 0.078979805 0.22848824
		 0.22848825 0.11793035 0.16287799 0.27720827 0.11793327 0.08478868 0.30701634 0.11793584
		 1.0026955e-008 0.31700239 0.11793856 -0.08478865 0.30701634 0.11793584 -0.16287799
		 0.27720827 0.11793327 -0.22848822 0.22848825 0.11793035 0.22669137 0.2266914 0.15609269
		 0.16167258 0.27490833 0.15609637 0.084186785 0.30435759 0.15610766 1.1806779e-008
		 0.31422776 0.15611114 -0.084186748 0.30435759 0.15610766 -0.16167253 0.27490833 0.15609635
		 -0.22669131 0.2266914 0.15609269 0.22368151 0.22368154 0.19295108 0.15967485 0.27097085
		 0.19296886 0.083205968 0.29979917 0.19299227;
	setAttr ".tk[332:497]" 1.3499734e-008 0.30941996 0.19300824 -0.083205938 0.29979917
		 0.19299227 -0.15967484 0.27097082 0.19296886 -0.22368145 0.2236816 0.19295107 0.2241704
		 0.22417039 0.19079898 0.16037507 0.27099776 0.19083042 0.083690874 0.2993249 0.19090308
		 1.2872805e-008 0.30880046 0.19093117 -0.083690807 0.2993249 0.19090308 -0.16037506
		 0.27099779 0.19083042 -0.22417039 0.22417037 0.19079898 0.22935952 0.22935952 0.18793665
		 0.16482486 0.27585906 0.18803929 0.086277775 0.30376175 0.1881911 1.4887817e-008
		 0.31294566 0.18826877 -0.086277731 0.30376175 0.1881911 -0.16482486 0.27585906 0.18803944
		 -0.22935951 0.22935952 0.18793662 0.23877338 0.23877335 0.17632285 0.17333679 0.28404567
		 0.17592624 0.091286421 0.31046298 0.17531569 1.7690548e-008 0.3192451 0.17506342
		 -0.091286413 0.31046298 0.17531572 -0.17333674 0.28404579 0.17592621 -0.23877335
		 0.23877335 0.17632288 0.26455072 0.26455066 0.16777879 0.19614694 0.3057968 0.16654696
		 0.1043587 0.32959247 0.16516976 2.3088864e-008 0.3372874 0.16461788 -0.10435867 0.3295925
		 0.16516976 -0.19614692 0.30579683 0.16654693 -0.26455069 0.26455075 0.16777879 -0.36101112
		 0.23156294 -0.31848583 -0.38365671 0.23412339 -0.29821217 -0.38450092 0.22973789
		 -0.27420273 -0.37851939 0.2240058 -0.24609537 -0.36049056 0.21242626 -0.1982653 -0.33975852
		 0.19981068 -0.15063487 -0.33109042 0.19453737 -0.10885634 -0.30793706 0.18085855
		 -0.07305491 -0.29104474 0.17090793 -0.039587718 -0.27930555 0.16400655 2.6290977e-008
		 -0.27911651 0.16390345 0.039587751 -0.27848727 0.16356196 0.078980178 -0.27720818
		 0.16287796 0.11793326 -0.27490833 0.16167259 0.15609635 -0.27097079 0.15967484 0.19296882
		 -0.27099776 0.16037507 0.19083042 -0.27585906 0.16482486 0.18803944 -0.2840457 0.17333679
		 0.17592624 -0.3057968 0.19614694 0.16654693 -0.38910306 0.12320163 -0.31702316 -0.41933811
		 0.12329935 -0.29765907 -0.42339262 0.12025654 -0.27422258 -0.4180856 0.11689622 -0.24611445
		 -0.39884299 0.11069452 -0.19827513 -0.37615475 0.10404626 -0.1506414 -0.36669239
		 0.1012694 -0.10885803 -0.34109795 0.094134517 -0.073056236 -0.32240927 0.088950112
		 -0.039588045 -0.30940992 0.085356653 2.2996238e-008 -0.3091957 0.085304596 0.039588131
		 -0.30847672 0.085131899 0.078981824 -0.30701628 0.084788665 0.11793584 -0.30435759
		 0.084186785 0.15610766 -0.29979917 0.083205968 0.19299227 -0.29932487 0.083690859
		 0.19090308 -0.30376175 0.086277761 0.1881911 -0.31046298 0.091286421 0.17531572 -0.32959247
		 0.1043587 0.16516979 -0.39818722 2.5508182e-008 -0.31643701 -0.43119982 9.1493337e-009
		 -0.29743081 -0.43619314 1.4626649e-008 -0.27423254 -0.43132088 1.3161683e-008 -0.24612184
		 -0.41164222 8.8999368e-009 -0.19828202 -0.38835317 8.0215861e-009 -0.15064357 -0.37861952
		 4.573923e-009 -0.10885987 -0.3522172 9.4695176e-009 -0.073056459 -0.33292562 5.8407741e-009
		 -0.03958828 -0.31950483 1.1619558e-008 1.8412985e-008 -0.31928098 4.474435e-009 0.039588332
		 -0.31853256 1.0594952e-008 0.07898204 -0.31700236 7.4011264e-009 0.11793856 -0.31422776
		 1.0321821e-008 0.15611114 -0.30941993 8.6134744e-009 0.19300823 -0.30880046 1.0628258e-008
		 0.19093119 -0.31294563 7.7259292e-009 0.18826877 -0.3192451 6.150835e-009 0.17506342
		 -0.33728746 3.6018304e-009 0.16461788 -0.389103 -0.12320158 -0.31702316 -0.41933805
		 -0.12329932 -0.29765904 -0.42339265 -0.12025651 -0.27422255 -0.4180856 -0.1168962
		 -0.24611445 -0.39884293 -0.11069448 -0.19827513 -0.37615478 -0.10404626 -0.1506414
		 -0.36669233 -0.10126939 -0.10885802 -0.34109795 -0.094134517 -0.073056236 -0.32240927
		 -0.08895009 -0.039588042 -0.30940992 -0.085356623 1.2688295e-008 -0.30919564 -0.085304551
		 0.039588131 -0.30847672 -0.085131899 0.078981824 -0.30701628 -0.08478865 0.11793584
		 -0.30435759 -0.084186748 0.15610762 -0.29979917 -0.083205938 0.19299227 -0.29932487
		 -0.083690822 0.19090308 -0.30376175 -0.086277731 0.1881911 -0.31046298 -0.091286413
		 0.17531572 -0.32959247 -0.10435867 0.16516976 -0.36101106 -0.23156285 -0.3184858
		 -0.38365671 -0.23412333 -0.29821214 -0.38450092 -0.22973788 -0.27420273 -0.37851939
		 -0.2240058 -0.24609549 -0.36049056 -0.21242626 -0.19826527 -0.33975852 -0.19981068
		 -0.15063484 -0.33109042 -0.19453737 -0.10885637 -0.30793712 -0.18085855 -0.07305488
		 -0.29104468 -0.17090788 -0.039587785 -0.27930555 -0.1640065 5.3466449e-009 -0.27911651
		 -0.16390343 0.039587773 -0.27848732 -0.16356196 0.078980163 -0.27720824 -0.16287793
		 0.11793322 -0.27490833 -0.16167253 0.1560964 -0.27097082 -0.15967484 0.1929688 -0.27099776
		 -0.16037506 0.19083035 -0.27585906 -0.16482484 0.18803929 -0.2840457 -0.17333671
		 0.17592628 -0.30579683 -0.19614692 0.16654696 0.36101115 0.23156297 -0.31848583 0.38365659
		 0.23412345 -0.29821217 0.38450098 0.22973791 -0.27420294 0.37851945 0.22400582 -0.24609549
		 0.36049062 0.21242626 -0.19826527 0.33975852 0.19981079 -0.15063487 0.33109048 0.1945374
		 -0.10885637 0.30793706 0.18085858 -0.073054895 0.29104474 0.17090793 -0.039587721
		 0.27930558 0.16400661 2.2322254e-008 0.27911657 0.16390343 0.039587766 0.27848732
		 0.16356198 0.078980163 0.27720824 0.16287799 0.11793322 0.27490833 0.16167265 0.15609635
		 0.27097082 0.15967484 0.19296886 0.27099776 0.16037506 0.19083035 0.27585906 0.16482486
		 0.18803944 0.2840457 0.17333676 0.17592628 0.3057968 0.19614694 0.16654696 0.38910303
		 0.12320165 -0.31702319 0.41933811 0.12329936 -0.2976591 0.42339256 0.12025655 -0.27422261
		 0.4180856 0.11689625 -0.24611445 0.39884296 0.11069452 -0.19827513 0.37615478 0.10404627
		 -0.1506414 0.36669236 0.10126945 -0.10885802 0.34109795 0.094134517 -0.073056236
		 0.32240933 0.08895015 -0.039588038 0.30940992 0.085356653 2.0809196e-008 0.3091957
		 0.085304618 0.039588124 0.30847672 0.085131899 0.078981824 0.30701634 0.08478871
		 0.11793584 0.30435759 0.0841868 0.15610766 0.29979917 0.083205968 0.19299227 0.29932493
		 0.083690844 0.19090308 0.30376175 0.086277775 0.1881911 0.31046298 0.091286421 0.17531577
		 0.3295925 0.1043587 0.16516981 0.39818725 3.9837133e-008 -0.31643704;
	setAttr ".tk[498:553]" 0.43119988 3.2223468e-008 -0.29743081 0.43619302 3.2581625e-008
		 -0.27423254 0.43132088 2.9353053e-008 -0.24612184 0.41164222 1.5095759e-008 -0.19828211
		 0.38835317 1.8970022e-008 -0.15064357 0.37861955 1.1554481e-008 -0.10885991 0.3522172
		 2.2103109e-008 -0.073056445 0.33292568 1.0651452e-008 -0.03958828 0.31950483 2.0657422e-008
		 1.668997e-008 0.31928098 1.0197932e-008 0.039588325 0.31853259 1.685687e-008 0.078982048
		 0.31700239 8.4975165e-009 0.11793856 0.31422776 1.0594521e-008 0.15611114 0.30941993
		 7.6060633e-009 0.19300824 0.30880046 6.7832593e-009 0.19093117 0.31294563 7.0564652e-009
		 0.18826877 0.3192451 2.840395e-009 0.17506348 0.33728734 -1.695423e-011 0.16461791
		 0.38910303 -0.12320153 -0.31702316 0.41933811 -0.1232993 -0.2976591 0.42339265 -0.12025648
		 -0.27422258 0.4180856 -0.11689618 -0.24611445 0.39884296 -0.11069448 -0.19827516
		 0.37615478 -0.10404625 -0.1506414 0.36669236 -0.10126939 -0.10885802 0.34109795 -0.094134517
		 -0.073056236 0.32240933 -0.088950083 -0.03958806 0.30940992 -0.085356615 1.2220366e-008
		 0.3091957 -0.085304558 0.039588127 0.30847672 -0.085131899 0.078981802 0.30701634
		 -0.08478865 0.11793584 0.30435759 -0.08418677 0.15610762 0.29979917 -0.083205938
		 0.19299227 0.29932493 -0.08369083 0.19090308 0.30376175 -0.086277731 0.1881911 0.31046298
		 -0.091286413 0.17531577 0.32959247 -0.10435869 0.16516981 0.36101115 -0.23156284
		 -0.31848583 0.38365659 -0.2341233 -0.29821217 0.38450098 -0.22973788 -0.27420273
		 0.37851939 -0.2240058 -0.24609537 0.36049056 -0.21242626 -0.19826527 0.33975852 -0.19981068
		 -0.15063484 0.33109048 -0.19453734 -0.10885637 0.30793706 -0.18085855 -0.07305488
		 0.29104474 -0.17090788 -0.039587785 0.27930558 -0.16400652 4.5679869e-009 0.27911657
		 -0.1639034 0.039587773 0.27848738 -0.16356196 0.078980163 0.2772083 -0.16287793 0.11793314
		 0.27490833 -0.16167255 0.1560964 0.27097082 -0.15967484 0.19296882 0.27099779 -0.16037506
		 0.19083035 0.27585906 -0.16482484 0.18803944 0.2840457 -0.17333679 0.17592628 0.3057968
		 -0.19614694 0.16654699;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[669:675]" "e[695]" "e[715]" "e[735]" "e[755]" "e[775]" "e[909]" "e[929]" "e[949]" "e[969]" "e[989]" "e[1105]" "e[1107]" "e[1109]" "e[1111]" "e[1113]" "e[1115]" "e[1117]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.6150715783848693 0 0.024836905764636263 0 0.062317089291436645 1;
	setAttr ".wt" 0.36698135733604431;
	setAttr ".dr" no;
	setAttr ".re" 1105;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[554:577]" -type "float3"  0 0 1.3051184e-006 0 0 0.0036991874
		 0 0 1.3051184e-006 0 0 -0.0027203178 0 0 -0.0036991285 0 0 -0.0027203723 0 0 1.3051184e-006
		 0 0 0.0036991874 0 0 1.3051184e-006 0 0 -0.0027203723 0 0 -0.0036991874 0 0 -0.0027203723
		 0 0 1.3051184e-006 0 0 0.0036991874 0 0 1.3051184e-006 0 0 -0.0027203723 0 0 -0.0036991874
		 0 0 -0.0027203723 0 0 1.3051184e-006 0 0 0.0036991874 0 0 1.3051184e-006 0 0 -0.0027203178
		 0 0 -0.0036991285 0 0 -0.0027203178;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[354:360]" "e[1104]" "e[1119]" "e[1121]" "e[1123]" "e[1125]" "e[1127]" "e[1129]" "e[1131]" "e[1133]" "e[1135]" "e[1137]" "e[1139]" "e[1141]" "e[1143]" "e[1145]" "e[1147]" "e[1149]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.6150715783848693 0 0.024836905764636263 0 0.062317089291436645 1;
	setAttr ".wt" 0.51674914360046387;
	setAttr ".dr" no;
	setAttr ".re" 357;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 97 ".tk";
	setAttr ".tk[0]" -type "float3" -0.08932656 -0.08932656 -0.0013604641 ;
	setAttr ".tk[1]" -type "float3" -0.068967901 -0.095362745 0.0018981574 ;
	setAttr ".tk[2]" -type "float3" -0.037144236 -0.099977918 0.0042881751 ;
	setAttr ".tk[3]" -type "float3" -8.7985867e-009 -0.10166579 0.0051467633 ;
	setAttr ".tk[4]" -type "float3" 0.037144214 -0.099977888 0.0042881751 ;
	setAttr ".tk[5]" -type "float3" 0.068967901 -0.095362753 0.0018981574 ;
	setAttr ".tk[6]" -type "float3" 0.089326553 -0.08932656 -0.0013604641 ;
	setAttr ".tk[7]" -type "float3" -0.095362753 -0.068967909 0.0018981574 ;
	setAttr ".tk[8]" -type "float3" -0.070477434 -0.070477434 0.0097826598 ;
	setAttr ".tk[9]" -type "float3" -0.037464652 -0.072393239 0.014156141 ;
	setAttr ".tk[10]" -type "float3" -9.0738892e-009 -0.073174059 0.01554036 ;
	setAttr ".tk[11]" -type "float3" 0.03746463 -0.072393239 0.014156108 ;
	setAttr ".tk[12]" -type "float3" 0.070477426 -0.070477448 0.0097826598 ;
	setAttr ".tk[13]" -type "float3" 0.095362745 -0.068967909 0.0018981574 ;
	setAttr ".tk[14]" -type "float3" -0.099977918 -0.037144214 0.0042881751 ;
	setAttr ".tk[15]" -type "float3" -0.072393239 -0.037464652 0.014156108 ;
	setAttr ".tk[16]" -type "float3" -0.038117006 -0.038117003 0.01966437 ;
	setAttr ".tk[17]" -type "float3" -7.8905584e-009 -0.038402017 0.021462573 ;
	setAttr ".tk[18]" -type "float3" 0.038116995 -0.038116995 0.01966437 ;
	setAttr ".tk[19]" -type "float3" 0.072393239 -0.037464652 0.014156141 ;
	setAttr ".tk[20]" -type "float3" 0.099977918 -0.037144229 0.0042882091 ;
	setAttr ".tk[21]" -type "float3" -0.10166579 -6.8345019e-010 0.0051466967 ;
	setAttr ".tk[22]" -type "float3" -0.073174059 1.0704757e-009 0.01554036 ;
	setAttr ".tk[23]" -type "float3" -0.038402025 -1.3478753e-009 0.021462573 ;
	setAttr ".tk[24]" -type "float3" -7.8236413e-009 1.0236775e-009 0.023343431 ;
	setAttr ".tk[25]" -type "float3" 0.038402006 -2.0968665e-009 0.021462573 ;
	setAttr ".tk[26]" -type "float3" 0.073174059 2.4127825e-010 0.01554036 ;
	setAttr ".tk[27]" -type "float3" 0.10166579 -2.794093e-009 0.0051467633 ;
	setAttr ".tk[28]" -type "float3" -0.099977918 0.037144229 0.0042881751 ;
	setAttr ".tk[29]" -type "float3" -0.072393239 0.037464641 0.014156108 ;
	setAttr ".tk[30]" -type "float3" -0.038117003 0.038116995 0.01966437 ;
	setAttr ".tk[31]" -type "float3" -5.9489276e-009 0.038402006 0.021462573 ;
	setAttr ".tk[32]" -type "float3" 0.038116995 0.038116995 0.01966437 ;
	setAttr ".tk[33]" -type "float3" 0.072393239 0.037464641 0.014156141 ;
	setAttr ".tk[34]" -type "float3" 0.099977918 0.037144229 0.0042881751 ;
	setAttr ".tk[35]" -type "float3" -0.095362753 0.068967901 0.0018981574 ;
	setAttr ".tk[36]" -type "float3" -0.070477434 0.070477434 0.0097826598 ;
	setAttr ".tk[37]" -type "float3" -0.037464652 0.072393239 0.014156108 ;
	setAttr ".tk[38]" -type "float3" -6.172169e-009 0.073174059 0.01554036 ;
	setAttr ".tk[39]" -type "float3" 0.037464634 0.072393239 0.014156141 ;
	setAttr ".tk[40]" -type "float3" 0.070477434 0.070477434 0.0097826598 ;
	setAttr ".tk[41]" -type "float3" 0.095362745 0.068967901 0.0018981574 ;
	setAttr ".tk[42]" -type "float3" -0.08932656 0.089326553 -0.0013604641 ;
	setAttr ".tk[43]" -type "float3" -0.068967901 0.095362745 0.0018981574 ;
	setAttr ".tk[44]" -type "float3" -0.037144236 0.099977918 0.0042881751 ;
	setAttr ".tk[45]" -type "float3" -5.4394618e-009 0.10166579 0.0051467633 ;
	setAttr ".tk[46]" -type "float3" 0.037144214 0.099977918 0.0042881751 ;
	setAttr ".tk[47]" -type "float3" 0.068967901 0.095362745 0.0018981574 ;
	setAttr ".tk[48]" -type "float3" 0.08932656 0.089326553 -0.0013604641 ;
	setAttr ".tk[554]" -type "float3" -0.10069221 0.06978792 -0.010155228 ;
	setAttr ".tk[555]" -type "float3" -0.091662802 0.091662794 -0.010200252 ;
	setAttr ".tk[556]" -type "float3" -0.06978792 0.10069221 -0.010155228 ;
	setAttr ".tk[557]" -type "float3" -0.037430525 0.10665678 -0.010122073 ;
	setAttr ".tk[558]" -type "float3" -5.7064971e-009 0.1087157 -0.010110165 ;
	setAttr ".tk[559]" -type "float3" 0.037430514 0.10665678 -0.010122073 ;
	setAttr ".tk[560]" -type "float3" 0.06978792 0.10069221 -0.010155228 ;
	setAttr ".tk[561]" -type "float3" 0.091662794 0.091662794 -0.010200252 ;
	setAttr ".tk[562]" -type "float3" 0.10069221 0.069787912 -0.010155228 ;
	setAttr ".tk[563]" -type "float3" 0.10665678 0.037430517 -0.010122073 ;
	setAttr ".tk[564]" -type "float3" 0.1087157 -2.2008184e-009 -0.010110165 ;
	setAttr ".tk[565]" -type "float3" 0.10665678 -0.037430517 -0.010122073 ;
	setAttr ".tk[566]" -type "float3" 0.10069219 -0.06978792 -0.010155228 ;
	setAttr ".tk[567]" -type "float3" 0.091662794 -0.091662802 -0.010200252 ;
	setAttr ".tk[568]" -type "float3" 0.069787912 -0.10069221 -0.010155228 ;
	setAttr ".tk[569]" -type "float3" 0.037430502 -0.10665678 -0.010122073 ;
	setAttr ".tk[570]" -type "float3" -8.6684828e-009 -0.1087157 -0.010110165 ;
	setAttr ".tk[571]" -type "float3" -0.037430525 -0.10665678 -0.010122073 ;
	setAttr ".tk[572]" -type "float3" -0.06978792 -0.1006922 -0.010155228 ;
	setAttr ".tk[573]" -type "float3" -0.091662802 -0.091662802 -0.010200252 ;
	setAttr ".tk[574]" -type "float3" -0.10069221 -0.06978792 -0.010155228 ;
	setAttr ".tk[575]" -type "float3" -0.10665679 -0.037430514 -0.010122073 ;
	setAttr ".tk[576]" -type "float3" -0.1087157 -3.5431036e-010 -0.010110165 ;
	setAttr ".tk[577]" -type "float3" -0.10665678 0.037430517 -0.010122073 ;
	setAttr ".tk[578]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[579]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[580]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[581]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[582]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[583]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[584]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[585]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[586]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[587]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[588]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[589]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[590]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[591]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[592]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[593]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[594]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[595]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[596]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[597]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[598]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[599]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[600]" -type "float3" 0 0 -0.0088286856 ;
	setAttr ".tk[601]" -type "float3" 0 0 -0.0088286856 ;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[1104]" "e[1119]" "e[1121]" "e[1123]" "e[1125]" "e[1127]" "e[1129]" "e[1131]" "e[1133]" "e[1135]" "e[1137]" "e[1139]" "e[1141]" "e[1143]" "e[1145]" "e[1147]" "e[1149]" "e[1200:1201]" "e[1203]" "e[1205]" "e[1241]" "e[1243]" "e[1245]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.6150715783848693 0 0.024836905764636263 0 0.062317089291436645 1;
	setAttr ".wt" 0.52445679903030396;
	setAttr ".re" 1200;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 73 ".tk";
	setAttr ".tk[0]" -type "float3" -0.27775991 -0.27775991 0.033596758 ;
	setAttr ".tk[1]" -type "float3" -0.21445499 -0.29652932 0.043729424 ;
	setAttr ".tk[2]" -type "float3" -0.11549962 -0.31088018 0.051161163 ;
	setAttr ".tk[3]" -type "float3" -2.7359103e-008 -0.31612864 0.053830892 ;
	setAttr ".tk[4]" -type "float3" 0.11549959 -0.31088009 0.051161163 ;
	setAttr ".tk[5]" -type "float3" 0.21445499 -0.29652938 0.043729424 ;
	setAttr ".tk[6]" -type "float3" 0.27775985 -0.27775991 0.033596758 ;
	setAttr ".tk[7]" -type "float3" -0.29652932 -0.21445502 0.043729424 ;
	setAttr ".tk[8]" -type "float3" -0.21914883 -0.21914883 0.068246193 ;
	setAttr ".tk[9]" -type "float3" -0.11649586 -0.22510611 0.0818455 ;
	setAttr ".tk[10]" -type "float3" -2.8215144e-008 -0.22753382 0.086149715 ;
	setAttr ".tk[11]" -type "float3" 0.11649583 -0.22510611 0.081845351 ;
	setAttr ".tk[12]" -type "float3" 0.21914864 -0.21914883 0.068246193 ;
	setAttr ".tk[13]" -type "float3" 0.29652929 -0.21445502 0.043729424 ;
	setAttr ".tk[14]" -type "float3" -0.31088018 -0.11549961 0.051161163 ;
	setAttr ".tk[15]" -type "float3" -0.22510611 -0.11649588 0.081845351 ;
	setAttr ".tk[16]" -type "float3" -0.11852441 -0.11852441 0.098973244 ;
	setAttr ".tk[17]" -type "float3" -2.4535609e-008 -0.11941072 0.10456475 ;
	setAttr ".tk[18]" -type "float3" 0.11852437 -0.11852439 0.098973244 ;
	setAttr ".tk[19]" -type "float3" 0.22510611 -0.11649588 0.0818455 ;
	setAttr ".tk[20]" -type "float3" 0.31088018 -0.11549962 0.05116123 ;
	setAttr ".tk[21]" -type "float3" -0.31612864 -1.9122444e-008 0.053830691 ;
	setAttr ".tk[22]" -type "float3" -0.22753382 -1.366863e-008 0.086149715 ;
	setAttr ".tk[23]" -type "float3" -0.11941073 -2.1188463e-008 0.10456475 ;
	setAttr ".tk[24]" -type "float3" -2.4327528e-008 -1.3814147e-008 0.11041326 ;
	setAttr ".tk[25]" -type "float3" 0.11941069 -2.3517442e-008 0.10456475 ;
	setAttr ".tk[26]" -type "float3" 0.22753382 -1.6247007e-008 0.086149715 ;
	setAttr ".tk[27]" -type "float3" 0.31612864 -2.5685464e-008 0.053830892 ;
	setAttr ".tk[28]" -type "float3" -0.31088018 0.11549961 0.051161163 ;
	setAttr ".tk[29]" -type "float3" -0.22510611 0.11649584 0.081845351 ;
	setAttr ".tk[30]" -type "float3" -0.11852441 0.11852437 0.098973244 ;
	setAttr ".tk[31]" -type "float3" -1.8498124e-008 0.11941057 0.10456475 ;
	setAttr ".tk[32]" -type "float3" 0.11852437 0.11852437 0.098973244 ;
	setAttr ".tk[33]" -type "float3" 0.22510611 0.11649584 0.0818455 ;
	setAttr ".tk[34]" -type "float3" 0.31088018 0.11549961 0.051161163 ;
	setAttr ".tk[35]" -type "float3" -0.29652932 0.21445496 0.043729424 ;
	setAttr ".tk[36]" -type "float3" -0.21914883 0.21914883 0.068246193 ;
	setAttr ".tk[37]" -type "float3" -0.11649586 0.22510611 0.081845351 ;
	setAttr ".tk[38]" -type "float3" -1.9192298e-008 0.22753382 0.086149715 ;
	setAttr ".tk[39]" -type "float3" 0.11649584 0.22510611 0.0818455 ;
	setAttr ".tk[40]" -type "float3" 0.21914883 0.21914883 0.068246193 ;
	setAttr ".tk[41]" -type "float3" 0.29652932 0.21445496 0.043729424 ;
	setAttr ".tk[42]" -type "float3" -0.27775991 0.27775985 0.033596758 ;
	setAttr ".tk[43]" -type "float3" -0.21445499 0.29652932 0.043729424 ;
	setAttr ".tk[44]" -type "float3" -0.11549962 0.31088015 0.051161163 ;
	setAttr ".tk[45]" -type "float3" -1.6913948e-008 0.31612864 0.053830892 ;
	setAttr ".tk[46]" -type "float3" 0.11549959 0.31088015 0.051161163 ;
	setAttr ".tk[47]" -type "float3" 0.21445499 0.29652932 0.043729424 ;
	setAttr ".tk[48]" -type "float3" 0.27775988 0.27775985 0.033596758 ;
	setAttr ".tk[602]" -type "float3" -1.7343028e-008 0.32745668 0.021862263 ;
	setAttr ".tk[603]" -type "float3" -0.11595967 0.32161197 0.022519862 ;
	setAttr ".tk[604]" -type "float3" -0.21577263 0.3050929 0.024350438 ;
	setAttr ".tk[605]" -type "float3" -0.28151384 0.28151378 0.026846146 ;
	setAttr ".tk[606]" -type "float3" -0.3050929 0.2157726 0.024350438 ;
	setAttr ".tk[607]" -type "float3" -0.32161197 0.11595959 0.022519862 ;
	setAttr ".tk[608]" -type "float3" -0.32745668 -1.8593571e-008 0.021862308 ;
	setAttr ".tk[609]" -type "float3" -0.321612 -0.11595959 0.022519862 ;
	setAttr ".tk[610]" -type "float3" -0.3050929 -0.21577263 0.024350438 ;
	setAttr ".tk[611]" -type "float3" -0.28151384 -0.28151381 0.026846146 ;
	setAttr ".tk[612]" -type "float3" -0.21577263 -0.30509293 0.024350438 ;
	setAttr ".tk[613]" -type "float3" -0.11595967 -0.32161197 0.022519862 ;
	setAttr ".tk[614]" -type "float3" -2.7150049e-008 -0.32745668 0.021862263 ;
	setAttr ".tk[615]" -type "float3" 0.11595957 -0.32161197 0.022519862 ;
	setAttr ".tk[616]" -type "float3" 0.2157726 -0.30509293 0.024350438 ;
	setAttr ".tk[617]" -type "float3" 0.28151375 -0.28151381 0.026846146 ;
	setAttr ".tk[618]" -type "float3" 0.3050929 -0.21577264 0.024350438 ;
	setAttr ".tk[619]" -type "float3" 0.32161197 -0.1159596 0.022519832 ;
	setAttr ".tk[620]" -type "float3" 0.32745668 -2.4732175e-008 0.021862263 ;
	setAttr ".tk[621]" -type "float3" 0.32161197 0.11595959 0.022519862 ;
	setAttr ".tk[622]" -type "float3" 0.3050929 0.21577257 0.024350438 ;
	setAttr ".tk[623]" -type "float3" 0.28151378 0.28151378 0.026846146 ;
	setAttr ".tk[624]" -type "float3" 0.21577263 0.3050929 0.024350438 ;
	setAttr ".tk[625]" -type "float3" 0.11595957 0.32161197 0.022519862 ;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
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
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.456625\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.456625\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n"
		+ "                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 118 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.095996603 0 ;
	setAttr ".tk[1]" -type "float3" 0 0.098260507 0 ;
	setAttr ".tk[2]" -type "float3" 0 0.099991471 0 ;
	setAttr ".tk[3]" -type "float3" 0 0.10062452 0 ;
	setAttr ".tk[4]" -type "float3" 0 0.099991456 0 ;
	setAttr ".tk[5]" -type "float3" 0 0.098260522 0 ;
	setAttr ".tk[6]" -type "float3" 0 0.095996603 0 ;
	setAttr ".tk[7]" -type "float3" -0.01505 0.067327373 0 ;
	setAttr ".tk[8]" -type "float3" 0 0.0081217121 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.0088402461 0 ;
	setAttr ".tk[10]" -type "float3" 0 0.0091330837 0 ;
	setAttr ".tk[11]" -type "float3" 0 0.0088402461 0 ;
	setAttr ".tk[12]" -type "float3" 0 0.0081217121 0 ;
	setAttr ".tk[13]" -type "float3" 0.01505 0.067327373 0 ;
	setAttr ".tk[14]" -type "float3" 0 0.01393117 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.041309234 0 ;
	setAttr ".tk[16]" -type "float3" 0 -0.041064572 0 ;
	setAttr ".tk[17]" -type "float3" 0 -0.040957663 0 ;
	setAttr ".tk[18]" -type "float3" 0 -0.041064572 0 ;
	setAttr ".tk[19]" -type "float3" 0 -0.041309234 0 ;
	setAttr ".tk[20]" -type "float3" 0 0.013931178 0 ;
	setAttr ".tk[21]" -type "float3" 0 3.7252903e-009 0 ;
	setAttr ".tk[22]" -type "float3" 0 3.7252903e-009 0 ;
	setAttr ".tk[23]" -type "float3" 0 3.7252903e-009 0 ;
	setAttr ".tk[24]" -type "float3" 0 3.7252903e-009 0 ;
	setAttr ".tk[25]" -type "float3" 0 3.7252903e-009 0 ;
	setAttr ".tk[26]" -type "float3" 0 3.7252903e-009 0 ;
	setAttr ".tk[27]" -type "float3" 0 3.7252903e-009 0 ;
	setAttr ".tk[28]" -type "float3" 0 -0.01393117 0 ;
	setAttr ".tk[29]" -type "float3" 0 -0.040650606 -0.0053229337 ;
	setAttr ".tk[30]" -type "float3" 0 -0.040895268 -0.0053229337 ;
	setAttr ".tk[31]" -type "float3" 0 -0.041002169 -0.0053229337 ;
	setAttr ".tk[32]" -type "float3" 0 -0.040895268 -0.0053229337 ;
	setAttr ".tk[33]" -type "float3" 0 -0.040650606 -0.0053229337 ;
	setAttr ".tk[34]" -type "float3" 0 -0.01393117 0 ;
	setAttr ".tk[35]" -type "float3" 0 -0.039021991 0 ;
	setAttr ".tk[36]" -type "float3" 0 -0.059261218 -0.013170291 ;
	setAttr ".tk[37]" -type "float3" 0 -0.059979759 -0.013170291 ;
	setAttr ".tk[38]" -type "float3" 0 -0.060272597 -0.013170291 ;
	setAttr ".tk[39]" -type "float3" 0 -0.059979759 -0.013170291 ;
	setAttr ".tk[40]" -type "float3" 0 -0.059261218 -0.013170291 ;
	setAttr ".tk[41]" -type "float3" 0 -0.039021991 0 ;
	setAttr ".tk[42]" -type "float3" 0 0.0059434804 0 ;
	setAttr ".tk[43]" -type "float3" 0 0.031075308 0 ;
	setAttr ".tk[44]" -type "float3" 0 0.029344367 0 ;
	setAttr ".tk[45]" -type "float3" 0 0.028711313 0 ;
	setAttr ".tk[46]" -type "float3" 0 0.029344367 0 ;
	setAttr ".tk[47]" -type "float3" 0 -0.048921525 0 ;
	setAttr ".tk[48]" -type "float3" 0 0.0059434804 0 ;
	setAttr ".tk[554]" -type "float3" 0 -0.012227211 0 ;
	setAttr ".tk[555]" -type "float3" 0 -0.016059808 0 ;
	setAttr ".tk[556]" -type "float3" 0 -0.017641801 0 ;
	setAttr ".tk[557]" -type "float3" 0 -0.018686827 0 ;
	setAttr ".tk[558]" -type "float3" 0 -0.019047568 0 ;
	setAttr ".tk[559]" -type "float3" 0 -0.018686825 0 ;
	setAttr ".tk[560]" -type "float3" 0 -0.017641801 0 ;
	setAttr ".tk[562]" -type "float3" 0 -0.012227209 0 ;
	setAttr ".tk[563]" -type "float3" 0 -0.0065580197 0 ;
	setAttr ".tk[565]" -type "float3" 0 0.0065580271 0 ;
	setAttr ".tk[566]" -type "float3" 0 0.012227215 0 ;
	setAttr ".tk[567]" -type "float3" 0 0.016059812 0 ;
	setAttr ".tk[568]" -type "float3" 0 0.017641809 0 ;
	setAttr ".tk[569]" -type "float3" 0 0.018686827 0 ;
	setAttr ".tk[570]" -type "float3" 0 0.019047569 0 ;
	setAttr ".tk[571]" -type "float3" 0 0.018686831 0 ;
	setAttr ".tk[572]" -type "float3" 0 0.017641801 0 ;
	setAttr ".tk[573]" -type "float3" 0 0.016059812 0 ;
	setAttr ".tk[574]" -type "float3" 0 0.012227215 0 ;
	setAttr ".tk[575]" -type "float3" 0 0.0065580234 0 ;
	setAttr ".tk[577]" -type "float3" 0 -0.0065580197 0 ;
	setAttr ".tk[602]" -type "float3" 0 0.040500112 0 ;
	setAttr ".tk[603]" -type "float3" 0 0.041205086 0 ;
	setAttr ".tk[604]" -type "float3" 0 0.043197557 0 ;
	setAttr ".tk[605]" -type "float3" 0 -0.020443909 0 ;
	setAttr ".tk[606]" -type "float3" 0 -0.026025757 0 ;
	setAttr ".tk[607]" -type "float3" -0.042905688 -0.013986655 0 ;
	setAttr ".tk[608]" -type "float3" -0.063451774 3.7252903e-009 0 ;
	setAttr ".tk[609]" -type "float3" -0.06231923 0.013986655 0 ;
	setAttr ".tk[610]" -type "float3" -0.015484633 0.067486309 0 ;
	setAttr ".tk[611]" -type "float3" 0 0.09644939 0 ;
	setAttr ".tk[612]" -type "float3" 0 0.099293411 0 ;
	setAttr ".tk[613]" -type "float3" 0 0.10128589 0 ;
	setAttr ".tk[614]" -type "float3" 0 0.10199086 0 ;
	setAttr ".tk[615]" -type "float3" 0 0.10128589 0 ;
	setAttr ".tk[616]" -type "float3" 0 0.099293426 0 ;
	setAttr ".tk[617]" -type "float3" 0 0.09644939 0 ;
	setAttr ".tk[618]" -type "float3" 0.015484633 0.067486309 0 ;
	setAttr ".tk[619]" -type "float3" 0.06231923 0.013986662 0 ;
	setAttr ".tk[620]" -type "float3" 0.063451774 3.7252903e-009 0 ;
	setAttr ".tk[621]" -type "float3" 0.042905692 -0.013986655 0 ;
	setAttr ".tk[622]" -type "float3" 0 -0.026025753 0 ;
	setAttr ".tk[623]" -type "float3" 0 -0.020443909 0 ;
	setAttr ".tk[624]" -type "float3" 0 0.043197557 0 ;
	setAttr ".tk[625]" -type "float3" 0 0.041205086 0 ;
	setAttr ".tk[626]" -type "float3" -4.4476081e-009 0.083113916 0.00017834653 ;
	setAttr ".tk[627]" -type "float3" -0.029542871 0.082201622 0.00013128654 ;
	setAttr ".tk[628]" -type "float3" -0.055009421 0.079599932 2.5256188e-007 ;
	setAttr ".tk[629]" -type "float3" -0.071934268 0.075803943 -0.00017834653 ;
	setAttr ".tk[630]" -type "float3" -0.078323022 0.032684878 2.5256188e-007 ;
	setAttr ".tk[631]" -type "float3" -0.11982401 0.017553449 0.00013128654 ;
	setAttr ".tk[632]" -type "float3" -0.13915724 -3.7252903e-009 0.00017834653 ;
	setAttr ".tk[633]" -type "float3" -0.13662082 -0.017553449 0.00013128654 ;
	setAttr ".tk[634]" -type "float3" -0.091698103 0.0087756533 2.5256188e-007 ;
	setAttr ".tk[635]" -type "float3" -0.071934268 0.01975305 -0.00017834653 ;
	setAttr ".tk[636]" -type "float3" -0.055009425 0.015957054 2.5256188e-007 ;
	setAttr ".tk[637]" -type "float3" -0.029542871 0.013355386 0.00013128654 ;
	setAttr ".tk[638]" -type "float3" -6.8913533e-009 0.012443092 0.00017834653 ;
	setAttr ".tk[639]" -type "float3" 0.029542848 0.013355386 0.00013128654 ;
	setAttr ".tk[640]" -type "float3" 0.055009421 0.015957039 2.5256188e-007 ;
	setAttr ".tk[641]" -type "float3" 0.071934253 0.01975305 -0.00017834653 ;
	setAttr ".tk[642]" -type "float3" 0.091698088 0.008775657 2.5256188e-007 ;
	setAttr ".tk[643]" -type "float3" 0.13662079 -0.017553445 0.00013128654 ;
	setAttr ".tk[644]" -type "float3" 0.13915725 -7.4505806e-009 0.00017834653 ;
	setAttr ".tk[645]" -type "float3" 0.11982403 0.017553445 0.00013128654 ;
	setAttr ".tk[646]" -type "float3" 0.078323014 0.032684874 2.5256188e-007 ;
	setAttr ".tk[647]" -type "float3" 0.07193426 0.075803943 -0.00017834653 ;
	setAttr ".tk[648]" -type "float3" 0.055009421 0.079599939 2.5256188e-007 ;
	setAttr ".tk[649]" -type "float3" 0.029542852 0.082201622 0.00013128654 ;
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.6150715783848693 0 0.024836905764636263 0 0.062317089291436645 1;
createNode displayLayer -n "mesh";
	setAttr ".dt" 1;
	setAttr ".do" 1;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[669:675]" "e[695]" "e[715]" "e[735]" "e[755]" "e[775]" "e[909]" "e[929]" "e[949]" "e[969]" "e[989]" "e[1152]" "e[1187]" "e[1189]" "e[1191]" "e[1193]" "e[1195]" "e[1197]";
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 1 0 0 1 0 0 -1 0 2.2204460492503131e-016 0
		 0.062317089291436638 0 -0.024836905764636277 1;
	setAttr ".wt" 0.50416427850723267;
	setAttr ".dr" no;
	setAttr ".re" 1195;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 79 ".tk";
	setAttr ".tk[47]" -type "float3" 0 0.079996884 0 ;
	setAttr ".tk[49]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[50]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[51]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[52]" -type "float3" -2.1163626e-016 0 -0.12976244 ;
	setAttr ".tk[53]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[54]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[55]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[56]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[57]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[58]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[59]" -type "float3" -2.1163626e-016 0 -0.12976244 ;
	setAttr ".tk[60]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[61]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[62]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[63]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[64]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[65]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[66]" -type "float3" -2.1163626e-016 0 -0.12976244 ;
	setAttr ".tk[67]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[68]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[69]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[343]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[344]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[345]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[346]" -type "float3" -2.1163626e-016 0 -0.12976244 ;
	setAttr ".tk[347]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[348]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[349]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[350]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[351]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[352]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[353]" -type "float3" -2.1163626e-016 0 -0.12976244 ;
	setAttr ".tk[354]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[355]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[356]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[357]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[358]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[359]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[360]" -type "float3" -2.1163626e-016 0 -0.12976244 ;
	setAttr ".tk[361]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[362]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[363]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[380]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[381]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[382]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[399]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[400]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[401]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[418]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[419]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[420]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[437]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[438]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[439]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[456]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[457]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[458]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[475]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[476]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[477]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[494]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[495]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[496]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[513]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[514]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[515]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[532]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[533]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[534]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[551]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[552]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[553]" -type "float3" -2.220446e-016 0 -0.12976244 ;
	setAttr ".tk[602]" -type "float3" 0 0.026683049 0 ;
	setAttr ".tk[603]" -type "float3" 0 0.026683049 0 ;
	setAttr ".tk[625]" -type "float3" 0 0.026683049 0 ;
	setAttr ".tk[626]" -type "float3" 0 0.026683049 0 ;
	setAttr ".tk[627]" -type "float3" 0 0.026683049 0 ;
	setAttr ".tk[649]" -type "float3" 0 0.026683049 0 ;
createNode displayLayer -n "controls";
	setAttr ".do" 2;
createNode makeNurbCircle -n "makeNurbCircle1";
createNode transformGeometry -n "transformGeometry2";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.4854793811538611 1.1102230246251565e-016 0 1;
createNode makeNurbCircle -n "makeNurbCircle2";
createNode transformGeometry -n "transformGeometry3";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -4.4854793811538611 1.1102230246251565e-016 0 1;
createNode makeNurbCircle -n "makeNurbCircle3";
createNode transformGeometry -n "transformGeometry4";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3.3635845406877114 1.1102230246251565e-016 0 1;
createNode makeNurbCircle -n "makeNurbCircle4";
createNode transformGeometry -n "transformGeometry5";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.6978511812187449 1.1102230246251565e-016 0 1;
createNode makeNurbCircle -n "makeNurbCircle5";
createNode transformGeometry -n "transformGeometry6";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.014764809198741125 1.1102230246251565e-016 0 1;
createNode makeNurbCircle -n "makeNurbCircle6";
createNode transformGeometry -n "transformGeometry7";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 1.6397037616105927 1.1102230246251565e-016 0 1;
createNode makeNurbCircle -n "makeNurbCircle7";
createNode transformGeometry -n "transformGeometry8";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.3115253449709643 1.1102230246251565e-016 0 1;
createNode makeNurbCircle -n "makeNurbCircle8";
createNode transformGeometry -n "transformGeometry9";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.1085300710957844 1.1102230246251565e-016 0 1;
createNode makeNurbCircle -n "makeNurbCircle9";
createNode transformGeometry -n "transformGeometry10";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.3209018711606726 1.1102230246251565e-016 0 1;
createNode makeNurbCircle -n "makeNurbCircle10";
createNode transformGeometry -n "transformGeometry11";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 5.3199934170866854 1.1102230246251565e-016 -6.5151129097201989e-016 1;
createNode makeNurbCircle -n "makeNurbCircle11";
createNode transformGeometry -n "transformGeometry12";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 6.0497343905442129 1.1102230246251565e-016 -1.0420784550921857e-015 1;
createNode displayLayer -n "joints";
	setAttr ".dt" 1;
	setAttr ".do" 3;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 96 ".tk";
	setAttr ".tk[56]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[57]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[58]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[59]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[60]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[61]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[62]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[63]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[64]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[65]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[66]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[67]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[68]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[69]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[70]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[71]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[72]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[73]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[74]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[75]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[76]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[336]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[337]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[338]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[339]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[340]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[341]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[342]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[343]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[344]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[345]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[346]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[347]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[348]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[349]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[350]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[351]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[352]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[353]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[354]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[355]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[356]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[379]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[380]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[381]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[398]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[399]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[400]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[417]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[418]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[419]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[436]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[437]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[438]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[455]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[456]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[457]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[474]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[475]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[476]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[493]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[494]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[495]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[512]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[513]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[514]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[531]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[532]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[533]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[550]" -type "float3" -1.6653345e-016 0 -0.08221826 ;
	setAttr ".tk[551]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[552]" -type "float3" -1.6653345e-016 0 -0.03574707 ;
	setAttr ".tk[650]" -type "float3" 0.0047717905 -0.014612878 -4.2800944e-005 ;
	setAttr ".tk[651]" -type "float3" 0.0089464402 -0.013626595 1.0254437e-005 ;
	setAttr ".tk[652]" -type "float3" 0.011968874 -0.011968875 6.3576888e-005 ;
	setAttr ".tk[653]" -type "float3" 0.013626599 -0.0089464411 1.021844e-005 ;
	setAttr ".tk[654]" -type "float3" 0.014612877 -0.0047717905 -4.2800944e-005 ;
	setAttr ".tk[655]" -type "float3" 0.014936938 -1.101484e-009 -6.3576888e-005 ;
	setAttr ".tk[656]" -type "float3" 0.014612878 0.0047717872 -4.2800944e-005 ;
	setAttr ".tk[657]" -type "float3" 0.013626595 0.0089464393 1.021844e-005 ;
	setAttr ".tk[658]" -type "float3" 0.011968874 0.011968874 6.3576888e-005 ;
	setAttr ".tk[659]" -type "float3" 0.008946443 0.013626593 1.021844e-005 ;
	setAttr ".tk[660]" -type "float3" 0.0047717909 0.014612877 -4.2836939e-005 ;
	setAttr ".tk[661]" -type "float3" 5.6245042e-010 0.014936938 -6.3576888e-005 ;
	setAttr ".tk[662]" -type "float3" -0.0047717886 0.014612878 -4.2836939e-005 ;
	setAttr ".tk[663]" -type "float3" -0.0089464393 0.013626598 1.021844e-005 ;
	setAttr ".tk[664]" -type "float3" -0.011968874 0.011968874 6.3576888e-005 ;
	setAttr ".tk[665]" -type "float3" -0.013626598 0.008946442 1.021844e-005 ;
	setAttr ".tk[666]" -type "float3" -0.014612878 0.0047717881 -4.2836939e-005 ;
	setAttr ".tk[667]" -type "float3" -0.014936938 -9.1429386e-010 -6.3576888e-005 ;
	setAttr ".tk[668]" -type "float3" -0.014612878 -0.0047717905 -4.2836939e-005 ;
	setAttr ".tk[669]" -type "float3" -0.0136266 -0.0089464402 1.021844e-005 ;
	setAttr ".tk[670]" -type "float3" -0.011968874 -0.011968875 6.3576888e-005 ;
	setAttr ".tk[671]" -type "float3" -0.0089464393 -0.013626598 1.0254437e-005 ;
	setAttr ".tk[672]" -type "float3" -0.0047717886 -0.014612877 -4.2800944e-005 ;
	setAttr ".tk[673]" -type "float3" 2.8122521e-010 -0.014936938 -6.3576888e-005 ;
createNode transformGeometry -n "transformGeometry13";
	setAttr ".txf" -type "matrix" 2.2204460492503131e-016 0 1 0 0 1 0 0 -1 0 2.2204460492503131e-016 0
		 0.062317089291436638 0 -0.024836905764636277 1;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[389:395]" "e[634:640]" "e[690]" "e[710]" "e[730]" "e[750]" "e[770]" "e[904]" "e[924]" "e[944]" "e[964]" "e[984]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.50169217586517334;
	setAttr ".re" 710;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[396:402]" "e[627:633]" "e[689]" "e[709]" "e[729]" "e[749]" "e[769]" "e[903]" "e[923]" "e[943]" "e[963]" "e[983]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.49830567836761475;
	setAttr ".re" 749;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[403:409]" "e[620:626]" "e[688]" "e[708]" "e[728]" "e[748]" "e[768]" "e[902]" "e[922]" "e[942]" "e[962]" "e[982]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.51371961832046509;
	setAttr ".re" 748;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[410:416]" "e[613:619]" "e[687]" "e[707]" "e[727]" "e[747]" "e[767]" "e[901]" "e[921]" "e[941]" "e[961]" "e[981]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.49036118388175964;
	setAttr ".re" 747;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[417:423]" "e[606:612]" "e[686]" "e[706]" "e[726]" "e[746]" "e[766]" "e[900]" "e[920]" "e[940]" "e[960]" "e[980]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.48298463225364685;
	setAttr ".re" 746;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[424:430]" "e[599:605]" "e[685]" "e[705]" "e[725]" "e[745]" "e[765]" "e[899]" "e[919]" "e[939]" "e[959]" "e[979]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.50272953510284424;
	setAttr ".re" 745;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[431:437]" "e[592:598]" "e[684]" "e[704]" "e[724]" "e[744]" "e[764]" "e[898]" "e[918]" "e[938]" "e[958]" "e[978]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.4969211220741272;
	setAttr ".re" 744;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[438:444]" "e[585:591]" "e[683]" "e[703]" "e[723]" "e[743]" "e[763]" "e[897]" "e[917]" "e[937]" "e[957]" "e[977]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.47998055815696716;
	setAttr ".re" 743;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[445:451]" "e[578:584]" "e[682]" "e[702]" "e[722]" "e[742]" "e[762]" "e[896]" "e[916]" "e[936]" "e[956]" "e[976]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.50310862064361572;
	setAttr ".re" 742;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[452:458]" "e[571:577]" "e[681]" "e[701]" "e[721]" "e[741]" "e[761]" "e[895]" "e[915]" "e[935]" "e[955]" "e[975]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.50932890176773071;
	setAttr ".re" 741;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[459:465]" "e[564:570]" "e[680]" "e[700]" "e[720]" "e[740]" "e[760]" "e[894]" "e[914]" "e[934]" "e[954]" "e[974]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.51238268613815308;
	setAttr ".re" 740;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[466:472]" "e[557:563]" "e[679]" "e[699]" "e[719]" "e[739]" "e[759]" "e[893]" "e[913]" "e[933]" "e[953]" "e[973]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.48894557356834412;
	setAttr ".re" 739;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[473:479]" "e[550:556]" "e[678]" "e[698]" "e[718]" "e[738]" "e[758]" "e[892]" "e[912]" "e[932]" "e[952]" "e[972]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.46658554673194885;
	setAttr ".re" 738;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[480:486]" "e[543:549]" "e[677]" "e[697]" "e[717]" "e[737]" "e[757]" "e[891]" "e[911]" "e[931]" "e[951]" "e[971]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.46060237288475037;
	setAttr ".re" 717;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode skinCluster -n "skinCluster1";
	setAttr -s 1010 ".wl";
	setAttr -s 3 ".wl[0].w";
	setAttr ".wl[0].w[1]" 0.00061912847686350239;
	setAttr ".wl[0].w[9]" 0.0039201824552959211;
	setAttr ".wl[0].w[10]" 0.99546068906784058;
	setAttr -s 3 ".wl[1].w";
	setAttr ".wl[1].w[1]" 0.00022858457543452305;
	setAttr ".wl[1].w[9]" 0.0021994106294910142;
	setAttr ".wl[1].w[10]" 0.99757200479507446;
	setAttr -s 3 ".wl[2].w";
	setAttr ".wl[2].w[1]" 0.00018206317655709641;
	setAttr ".wl[2].w[9]" 0.0022058777070793783;
	setAttr ".wl[2].w[10]" 0.99761205911636353;
	setAttr -s 3 ".wl[3].w";
	setAttr ".wl[3].w[1]" 0.00087468178915324122;
	setAttr ".wl[3].w[9]" 0.011299566906220294;
	setAttr ".wl[3].w[10]" 0.98782575130462646;
	setAttr -s 3 ".wl[4].w";
	setAttr ".wl[4].w[1]" 0.00027765046625556589;
	setAttr ".wl[4].w[9]" 0.0033640145155864752;
	setAttr ".wl[4].w[10]" 0.99635833501815796;
	setAttr -s 3 ".wl[5].w";
	setAttr ".wl[5].w[1]" 0.00037082514878798424;
	setAttr ".wl[5].w[9]" 0.0035680285919041542;
	setAttr ".wl[5].w[10]" 0.99606114625930786;
	setAttr -s 3 ".wl[6].w";
	setAttr ".wl[6].w[1]" 0.0008032484099491598;
	setAttr ".wl[6].w[9]" 0.0050859885170833107;
	setAttr ".wl[6].w[10]" 0.99411076307296753;
	setAttr -s 3 ".wl[7].w";
	setAttr ".wl[7].w[1]" 0.00025779401786003061;
	setAttr ".wl[7].w[9]" 0.0020742377089771275;
	setAttr ".wl[7].w[10]" 0.99766796827316284;
	setAttr -s 3 ".wl[8].w";
	setAttr ".wl[8].w[1]" 0.00010677228392530433;
	setAttr ".wl[8].w[9]" 0.00085268368302415852;
	setAttr ".wl[8].w[10]" 0.99904054403305054;
	setAttr -s 3 ".wl[9].w";
	setAttr ".wl[9].w[1]" 0.00018490952717229771;
	setAttr ".wl[9].w[9]" 0.0012963255001409346;
	setAttr ".wl[9].w[10]" 0.99851876497268677;
	setAttr -s 3 ".wl[10].w";
	setAttr ".wl[10].w[1]" 0.00028844835318902139;
	setAttr ".wl[10].w[9]" 0.0019334935947479903;
	setAttr ".wl[10].w[10]" 0.99777805805206299;
	setAttr -s 3 ".wl[11].w";
	setAttr ".wl[11].w[1]" 0.00062704326110823451;
	setAttr ".wl[11].w[9]" 0.004395959363403484;
	setAttr ".wl[11].w[10]" 0.99497699737548828;
	setAttr -s 3 ".wl[12].w";
	setAttr ".wl[12].w[1]" 0.00040073599556834948;
	setAttr ".wl[12].w[9]" 0.0032002786185368749;
	setAttr ".wl[12].w[10]" 0.99639898538589478;
	setAttr -s 3 ".wl[13].w";
	setAttr ".wl[13].w[1]" 0.00057851959752868039;
	setAttr ".wl[13].w[9]" 0.0046548278183953917;
	setAttr ".wl[13].w[10]" 0.99476665258407593;
	setAttr -s 3 ".wl[14].w";
	setAttr ".wl[14].w[1]" 0.00017396472859468207;
	setAttr ".wl[14].w[9]" 0.0016120288474551227;
	setAttr ".wl[14].w[10]" 0.9982140064239502;
	setAttr -s 3 ".wl[15].w";
	setAttr ".wl[15].w[1]" 0.00019128594317807047;
	setAttr ".wl[15].w[9]" 0.0013043734081708066;
	setAttr ".wl[15].w[10]" 0.99850434064865112;
	setAttr -s 3 ".wl[16].w";
	setAttr ".wl[16].w[1]" 0.00032480106897590669;
	setAttr ".wl[16].w[9]" 0.0017833556120848844;
	setAttr ".wl[16].w[10]" 0.99789184331893921;
	setAttr -s 3 ".wl[17].w";
	setAttr ".wl[17].w[1]" 0.00026754541843305258;
	setAttr ".wl[17].w[9]" 0.0013758738473140177;
	setAttr ".wl[17].w[10]" 0.99835658073425293;
	setAttr -s 3 ".wl[18].w";
	setAttr ".wl[18].w[1]" 0.00074688911392925821;
	setAttr ".wl[18].w[9]" 0.0041008758549428122;
	setAttr ".wl[18].w[10]" 0.99515223503112793;
	setAttr -s 3 ".wl[19].w";
	setAttr ".wl[19].w[1]" 0.00092930180530491346;
	setAttr ".wl[19].w[9]" 0.0063368620206838561;
	setAttr ".wl[19].w[10]" 0.99273383617401123;
	setAttr -s 3 ".wl[20].w";
	setAttr ".wl[20].w[1]" 0.00038706660717009175;
	setAttr ".wl[20].w[9]" 0.0035867154553604259;
	setAttr ".wl[20].w[10]" 0.99602621793746948;
	setAttr -s 3 ".wl[21].w";
	setAttr ".wl[21].w[1]" 0.00053686786505772956;
	setAttr ".wl[21].w[9]" 0.0051988871016781105;
	setAttr ".wl[21].w[10]" 0.99426424503326416;
	setAttr -s 3 ".wl[22].w";
	setAttr ".wl[22].w[1]" 0.00022044880972699987;
	setAttr ".wl[22].w[9]" 0.0014671374977986349;
	setAttr ".wl[22].w[10]" 0.99831241369247437;
	setAttr -s 3 ".wl[23].w";
	setAttr ".wl[23].w[1]" 0.00047189825812555186;
	setAttr ".wl[23].w[9]" 0.0024538553353192724;
	setAttr ".wl[23].w[10]" 0.99707424640655518;
	setAttr -s 3 ".wl[24].w";
	setAttr ".wl[24].w[1]" 0.00074166375012559547;
	setAttr ".wl[24].w[9]" 0.003600892249630264;
	setAttr ".wl[24].w[10]" 0.99565744400024414;
	setAttr -s 3 ".wl[25].w";
	setAttr ".wl[25].w[1]" 0.0011853023882560289;
	setAttr ".wl[25].w[9]" 0.0061635330800362074;
	setAttr ".wl[25].w[10]" 0.99265116453170776;
	setAttr -s 3 ".wl[26].w";
	setAttr ".wl[26].w[1]" 0.0011989324068722746;
	setAttr ".wl[26].w[9]" 0.0079791696095766994;
	setAttr ".wl[26].w[10]" 0.99082189798355103;
	setAttr -s 3 ".wl[27].w";
	setAttr ".wl[27].w[1]" 0.0021266845132632372;
	setAttr ".wl[27].w[9]" 0.020594188842602241;
	setAttr ".wl[27].w[10]" 0.97727912664413452;
	setAttr -s 3 ".wl[28].w";
	setAttr ".wl[28].w[1]" 0.00041035917234623045;
	setAttr ".wl[28].w[9]" 0.0038025567250231543;
	setAttr ".wl[28].w[10]" 0.99578708410263062;
	setAttr -s 3 ".wl[29].w";
	setAttr ".wl[29].w[1]" 0.00023077730375027533;
	setAttr ".wl[29].w[9]" 0.0017345070437839044;
	setAttr ".wl[29].w[10]" 0.99803471565246582;
	setAttr -s 3 ".wl[30].w";
	setAttr ".wl[30].w[1]" 0.00038169355613949069;
	setAttr ".wl[30].w[9]" 0.0022617724396490836;
	setAttr ".wl[30].w[10]" 0.99735653400421143;
	setAttr -s 3 ".wl[31].w";
	setAttr ".wl[31].w[1]" 0.00079177761180387212;
	setAttr ".wl[31].w[9]" 0.0043679580678225929;
	setAttr ".wl[31].w[10]" 0.99484026432037354;
	setAttr -s 3 ".wl[32].w";
	setAttr ".wl[32].w[1]" 0.0030768374503812408;
	setAttr ".wl[32].w[9]" 0.018232180684689559;
	setAttr ".wl[32].w[10]" 0.9786909818649292;
	setAttr -s 3 ".wl[33].w";
	setAttr ".wl[33].w[1]" 0.0015213978908244293;
	setAttr ".wl[33].w[9]" 0.011434684930067905;
	setAttr ".wl[33].w[10]" 0.98704391717910767;
	setAttr -s 3 ".wl[34].w";
	setAttr ".wl[34].w[1]" 0.0012872317040260662;
	setAttr ".wl[34].w[9]" 0.011928012112349666;
	setAttr ".wl[34].w[10]" 0.98678475618362427;
	setAttr -s 3 ".wl[35].w";
	setAttr ".wl[35].w[1]" 0.00035441542252942845;
	setAttr ".wl[35].w[9]" 0.0028323469103868314;
	setAttr ".wl[35].w[10]" 0.99681323766708374;
	setAttr -s 3 ".wl[36].w";
	setAttr ".wl[36].w[1]" 0.00014640602241911625;
	setAttr ".wl[36].w[9]" 0.0014284082971914795;
	setAttr ".wl[36].w[10]" 0.9984251856803894;
	setAttr -s 3 ".wl[37].w";
	setAttr ".wl[37].w[1]" 0.00010394816554311088;
	setAttr ".wl[37].w[9]" 0.00089651579701182065;
	setAttr ".wl[37].w[10]" 0.99899953603744507;
	setAttr -s 3 ".wl[38].w";
	setAttr ".wl[38].w[1]" 0.00041571020419560071;
	setAttr ".wl[38].w[9]" 0.0034157955712560595;
	setAttr ".wl[38].w[10]" 0.99616849422454834;
	setAttr -s 3 ".wl[39].w";
	setAttr ".wl[39].w[1]" 0.00034952349063366132;
	setAttr ".wl[39].w[9]" 0.0030145030558446102;
	setAttr ".wl[39].w[10]" 0.99663597345352173;
	setAttr -s 3 ".wl[40].w";
	setAttr ".wl[40].w[1]" 0.00025256581088017096;
	setAttr ".wl[40].w[9]" 0.0024641542933373584;
	setAttr ".wl[40].w[10]" 0.99728327989578247;
	setAttr -s 3 ".wl[41].w";
	setAttr ".wl[41].w[1]" 0.00043257062198081187;
	setAttr ".wl[41].w[9]" 0.0034569304728373032;
	setAttr ".wl[41].w[10]" 0.99611049890518188;
	setAttr -s 3 ".wl[42].w";
	setAttr ".wl[42].w[1]" 0.00060636434509947241;
	setAttr ".wl[42].w[9]" 0.0030842956547479398;
	setAttr ".wl[42].w[10]" 0.99630934000015259;
	setAttr -s 3 ".wl[43].w";
	setAttr ".wl[43].w[1]" 0.00029278734096682262;
	setAttr ".wl[43].w[9]" 0.0020211841785033923;
	setAttr ".wl[43].w[10]" 0.99768602848052979;
	setAttr -s 3 ".wl[44].w";
	setAttr ".wl[44].w[1]" 0.00018042077406416258;
	setAttr ".wl[44].w[9]" 0.0015254045547627418;
	setAttr ".wl[44].w[10]" 0.9982941746711731;
	setAttr -s 3 ".wl[45].w";
	setAttr ".wl[45].w[1]" 7.5574795987879835e-005;
	setAttr ".wl[45].w[9]" 0.0006772318675253038;
	setAttr ".wl[45].w[10]" 0.99924719333648682;
	setAttr -s 3 ".wl[46].w";
	setAttr ".wl[46].w[1]" 6.1125823926852385e-005;
	setAttr ".wl[46].w[9]" 0.0005168008118153351;
	setAttr ".wl[46].w[10]" 0.99942207336425781;
	setAttr -s 3 ".wl[47].w";
	setAttr ".wl[47].w[1]" 0.00012780320945190638;
	setAttr ".wl[47].w[9]" 0.00088225710091186318;
	setAttr ".wl[47].w[10]" 0.99898993968963623;
	setAttr -s 3 ".wl[48].w";
	setAttr ".wl[48].w[1]" 0.00051658347395221042;
	setAttr ".wl[48].w[9]" 0.0026276211425944203;
	setAttr ".wl[48].w[10]" 0.99685579538345337;
	setAttr -s 3 ".wl[49].w";
	setAttr ".wl[49].w[1]" 0.026511217121572363;
	setAttr ".wl[49].w[9]" 0.97180712223052979;
	setAttr ".wl[49].w[10]" 0.0016816606478978497;
	setAttr -s 3 ".wl[50].w";
	setAttr ".wl[50].w[1]" 0.033519075890761002;
	setAttr ".wl[50].w[9]" 0.96594959497451782;
	setAttr ".wl[50].w[10]" 0.00053132913472117571;
	setAttr -s 3 ".wl[51].w";
	setAttr ".wl[51].w[0]" 0.00014926785197653245;
	setAttr ".wl[51].w[1]" 0.035133999646039825;
	setAttr ".wl[51].w[9]" 0.96471673250198364;
	setAttr -s 3 ".wl[52].w";
	setAttr ".wl[52].w[0]" 8.3583458759718354e-005;
	setAttr ".wl[52].w[1]" 0.01469872607340581;
	setAttr ".wl[52].w[9]" 0.98521769046783447;
	setAttr -s 3 ".wl[53].w";
	setAttr ".wl[53].w[0]" 0.00010150928122632336;
	setAttr ".wl[53].w[1]" 0.013093051723412349;
	setAttr ".wl[53].w[9]" 0.98680543899536133;
	setAttr -s 3 ".wl[54].w";
	setAttr ".wl[54].w[0]" 7.6426138822168635e-005;
	setAttr ".wl[54].w[1]" 0.01275442732339707;
	setAttr ".wl[54].w[9]" 0.98716914653778076;
	setAttr -s 3 ".wl[55].w";
	setAttr ".wl[55].w[0]" 8.4147294317801785e-005;
	setAttr ".wl[55].w[1]" 0.018253162066186348;
	setAttr ".wl[55].w[9]" 0.98166269063949585;
	setAttr -s 3 ".wl[56].w";
	setAttr ".wl[56].w[0]" 0.0017416235117390941;
	setAttr ".wl[56].w[1]" 0.211887503037028;
	setAttr ".wl[56].w[9]" 0.78637087345123291;
	setAttr -s 3 ".wl[57].w";
	setAttr ".wl[57].w[0]" 0.0019015036503544306;
	setAttr ".wl[57].w[1]" 0.24918461218674276;
	setAttr ".wl[57].w[9]" 0.74891388416290283;
	setAttr -s 3 ".wl[58].w";
	setAttr ".wl[58].w[0]" 0.0014491413033122069;
	setAttr ".wl[58].w[1]" 0.20119806786416827;
	setAttr ".wl[58].w[9]" 0.79735279083251953;
	setAttr -s 3 ".wl[59].w";
	setAttr ".wl[59].w[0]" 0.0016305510867709225;
	setAttr ".wl[59].w[1]" 0.24070905996669587;
	setAttr ".wl[59].w[9]" 0.7576603889465332;
	setAttr -s 3 ".wl[60].w";
	setAttr ".wl[60].w[0]" 0.0015442295254498696;
	setAttr ".wl[60].w[1]" 0.21530235574829282;
	setAttr ".wl[60].w[9]" 0.78315341472625732;
	setAttr -s 3 ".wl[61].w";
	setAttr ".wl[61].w[0]" 0.0021057561811902862;
	setAttr ".wl[61].w[1]" 0.23133082829146595;
	setAttr ".wl[61].w[9]" 0.76656341552734375;
	setAttr -s 3 ".wl[62].w";
	setAttr ".wl[62].w[0]" 0.0024999904338643924;
	setAttr ".wl[62].w[1]" 0.24052042487222691;
	setAttr ".wl[62].w[9]" 0.75697958469390869;
	setAttr -s 3 ".wl[63].w";
	setAttr ".wl[63].w[0]" 0.0030204168577338897;
	setAttr ".wl[63].w[1]" 0.56713460767076951;
	setAttr ".wl[63].w[9]" 0.42984497547149658;
	setAttr -s 3 ".wl[64].w";
	setAttr ".wl[64].w[0]" 0.0032239431986794014;
	setAttr ".wl[64].w[1]" 0.59982092431688461;
	setAttr ".wl[64].w[9]" 0.39695513248443604;
	setAttr -s 3 ".wl[65].w";
	setAttr ".wl[65].w[0]" 0.0028975340206874164;
	setAttr ".wl[65].w[1]" 0.49833884512588855;
	setAttr ".wl[65].w[9]" 0.49876362085342407;
	setAttr -s 3 ".wl[66].w";
	setAttr ".wl[66].w[0]" 0.0031277281445400784;
	setAttr ".wl[66].w[1]" 0.50424447234450409;
	setAttr ".wl[66].w[9]" 0.49262779951095581;
	setAttr -s 3 ".wl[67].w";
	setAttr ".wl[67].w[0]" 0.0057272213311425884;
	setAttr ".wl[67].w[1]" 0.52325327221438966;
	setAttr ".wl[67].w[9]" 0.47101950645446777;
	setAttr -s 3 ".wl[68].w";
	setAttr ".wl[68].w[0]" 0.0080670151248413164;
	setAttr ".wl[68].w[1]" 0.5431743827328247;
	setAttr ".wl[68].w[9]" 0.44875860214233398;
	setAttr -s 3 ".wl[69].w";
	setAttr ".wl[69].w[0]" 0.010521003118368021;
	setAttr ".wl[69].w[1]" 0.55502556909003653;
	setAttr ".wl[69].w[9]" 0.43445342779159546;
	setAttr -s 3 ".wl[70].w";
	setAttr ".wl[70].w[0]" 0.0012885049145642858;
	setAttr ".wl[70].w[1]" 0.84275603143759326;
	setAttr ".wl[70].w[9]" 0.15595546364784241;
	setAttr -s 3 ".wl[71].w";
	setAttr ".wl[71].w[0]" 0.0017005317496612802;
	setAttr ".wl[71].w[1]" 0.83460244903094027;
	setAttr ".wl[71].w[9]" 0.1636970192193985;
	setAttr -s 3 ".wl[72].w";
	setAttr ".wl[72].w[0]" 0.00268868788340897;
	setAttr ".wl[72].w[1]" 0.83501985982796345;
	setAttr ".wl[72].w[9]" 0.16229145228862762;
	setAttr -s 3 ".wl[73].w";
	setAttr ".wl[73].w[0]" 0.0040005394510309435;
	setAttr ".wl[73].w[1]" 0.80246037754497124;
	setAttr ".wl[73].w[9]" 0.1935390830039978;
	setAttr -s 3 ".wl[74].w";
	setAttr ".wl[74].w[0]" 0.0097002832087882025;
	setAttr ".wl[74].w[1]" 0.81065972169309775;
	setAttr ".wl[74].w[9]" 0.17963999509811401;
	setAttr -s 3 ".wl[75].w";
	setAttr ".wl[75].w[0]" 0.016853994286362816;
	setAttr ".wl[75].w[1]" 0.81900376960008892;
	setAttr ".wl[75].w[9]" 0.16414223611354828;
	setAttr -s 3 ".wl[76].w";
	setAttr ".wl[76].w[0]" 0.025819004004540652;
	setAttr ".wl[76].w[1]" 0.81530562000936013;
	setAttr ".wl[76].w[9]" 0.15887537598609924;
	setAttr -s 3 ".wl[77].w[0:2]"  0.015276625933215474 0.98308628797531128 
		0.0016370860914732474;
	setAttr -s 3 ".wl[78].w[0:2]"  0.01851844940222307 0.97952264547348022 
		0.0019589051242967057;
	setAttr -s 3 ".wl[79].w[0:2]"  0.023728354722063881 0.97381782531738281 
		0.0024538199605533073;
	setAttr -s 3 ".wl[80].w[0:2]"  0.030899658997698292 0.96594381332397461 
		0.0031565276783271003;
	setAttr -s 3 ".wl[81].w[0:2]"  0.034780364367006059 0.96162289381027222 
		0.0035967418227217242;
	setAttr -s 3 ".wl[82].w[0:2]"  0.037974736369720992 0.95800822973251343 
		0.0040170338977655812;
	setAttr -s 3 ".wl[83].w[0:2]"  0.030063024440839182 0.96671533584594727 
		0.0032216397132135513;
	setAttr -s 3 ".wl[84].w[0:2]"  0.0073109451478897821 0.49657506810682001 
		0.49611398674529017;
	setAttr -s 3 ".wl[85].w[0:2]"  0.0071810406838758306 0.49664656912393701 
		0.49617239019218717;
	setAttr -s 3 ".wl[86].w[0:2]"  0.0069424934929573027 0.49678395595553787 
		0.49627355055150479;
	setAttr -s 3 ".wl[87].w[0:2]"  0.0068248725470256982 0.49684963575209151 
		0.4963254917008828;
	setAttr -s 3 ".wl[88].w[0:2]"  0.0069424926725140338 0.49678395638319173 
		0.49627355094429426;
	setAttr -s 3 ".wl[89].w[0:2]"  0.007181049553875384 0.4966465771927131 
		0.49617237325341162;
	setAttr -s 3 ".wl[90].w[0:2]"  0.0073109529438067948 0.49657506406612556 
		0.4961139829900677;
	setAttr -s 3 ".wl[91].w[1:3]"  0.039707004672256345 0.92551536020350378 
		0.034777635124239883;
	setAttr -s 3 ".wl[92].w[1:3]"  0.039136160610377835 0.92661054597765957 
		0.034253293411962614;
	setAttr -s 3 ".wl[93].w[1:3]"  0.038074153151324661 0.92863438545500165 
		0.033291461393673769;
	setAttr -s 3 ".wl[94].w[1:3]"  0.037550750523952313 0.92963771470716028 
		0.032811534768887415;
	setAttr -s 3 ".wl[95].w[1:3]"  0.038074165665582263 0.92863436180414805 
		0.033291472530269733;
	setAttr -s 3 ".wl[96].w[1:3]"  0.039136189955200552 0.926610490486793 
		0.03425331955800643;
	setAttr -s 3 ".wl[97].w[1:3]"  0.039707022336446511 0.92551532678779624 
		0.034777650875757259;
	setAttr -s 3 ".wl[98].w[1:3]"  0.0017979426730560901 0.49930984861892519 
		0.49889220870801881;
	setAttr -s 3 ".wl[99].w[1:3]"  0.0017652744807503161 0.4993286526711741 
		0.49890607284807559;
	setAttr -s 3 ".wl[100].w[1:3]"  0.0017054258415444051 0.4993642708832195 
		0.49893030327523613;
	setAttr -s 3 ".wl[101].w[1:3]"  0.0016760673213597889 0.49938134777321058 
		0.4989425849054297;
	setAttr -s 3 ".wl[102].w[1:3]"  0.0017054262416538628 0.49936427065599842 
		0.49893030310234771;
	setAttr -s 3 ".wl[103].w[1:3]"  0.0017652759213045157 0.49932865185876713 
		0.49890607221992828;
	setAttr -s 3 ".wl[104].w[1:3]"  0.0017979457230231735 0.4993098585900983 
		0.49889219568687843;
	setAttr -s 3 ".wl[105].w[2:4]"  0.036739940192813909 0.93014100388269827 
		0.033119055924487807;
	setAttr -s 3 ".wl[106].w[2:4]"  0.036212891854309953 0.93115132333428452 
		0.032635784811405506;
	setAttr -s 3 ".wl[107].w[2:4]"  0.035238453342046734 0.93301701877197074 
		0.031744527885982546;
	setAttr -s 3 ".wl[108].w[2:4]"  0.034756589988765338 0.93394002663727471 
		0.031303383373959909;
	setAttr -s 3 ".wl[109].w[2:4]"  0.035238472500464128 0.93301699655380754 
		0.031744530945728378;
	setAttr -s 3 ".wl[110].w[2:4]"  0.0362129083491914 0.93115126221244093 
		0.032635829438367535;
	setAttr -s 3 ".wl[111].w[2:4]"  0.036739967683109408 0.9301409512771619 
		0.033119081039728659;
	setAttr -s 3 ".wl[112].w[3:5]"  0.49967056050486919 0.49843716814140132 
		0.0018922713537294941;
	setAttr -s 3 ".wl[113].w[3:5]"  0.49969354481584016 0.49844815611719723 
		0.0018582990669625621;
	setAttr -s 3 ".wl[114].w[3:5]"  0.49973611630807763 0.4984678245042351 
		0.0017960591876873397;
	setAttr -s 3 ".wl[115].w[3:5]"  0.49975720017619812 0.4984772502999289 
		0.0017655495238729914;
	setAttr -s 3 ".wl[116].w[3:5]"  0.49973611417283831 0.49846782492072689 
		0.0017960609064348473;
	setAttr -s 3 ".wl[117].w[3:5]"  0.49969354636187086 0.49844815317986063 
		0.0018583004582685648;
	setAttr -s 3 ".wl[118].w[3:5]"  0.4996705589083919 0.49843716828563772 
		0.0018922728059704149;
	setAttr -s 3 ".wl[119].w[3:5]"  0.033051338893519244 0.92570921093111747 
		0.041239450175363242;
	setAttr -s 3 ".wl[120].w[3:5]"  0.032571128554857408 0.92676891122195515 
		0.040659960223187457;
	setAttr -s 3 ".wl[121].w[3:5]"  0.031685299779065562 0.92872687742082582 
		0.03958782280010862;
	setAttr -s 3 ".wl[122].w[3:5]"  0.031246831065409944 0.92969590920948153 
		0.039057259725108547;
	setAttr -s 3 ".wl[123].w[3:5]"  0.031685287578711273 0.92872684911225722 
		0.039587863309031558;
	setAttr -s 3 ".wl[124].w[3:5]"  0.032571134407452573 0.92676889827639819 
		0.040659967316149258;
	setAttr -s 3 ".wl[125].w[3:5]"  0.033051364703103152 0.92570915386519836 
		0.041239481431698567;
	setAttr -s 3 ".wl[126].w[3:5]"  0.0013715971446243136 0.4989935855432327 
		0.49963481731214293;
	setAttr -s 3 ".wl[127].w[3:5]"  0.0013464208350105712 0.4990025082183151 
		0.49965107094667438;
	setAttr -s 3 ".wl[128].w[3:5]"  0.0013002013051265301 0.49901739662465855 
		0.49968240207021497;
	setAttr -s 3 ".wl[129].w[3:5]"  0.0012775974163458726 0.49902516177460332 
		0.49969724080905087;
	setAttr -s 3 ".wl[130].w[3:5]"  0.0013002010406435334 0.49901738060865486 
		0.4996824183507016;
	setAttr -s 3 ".wl[131].w[3:5]"  0.0013464218406961171 0.49900250784371242 
		0.49965107031559136;
	setAttr -s 3 ".wl[132].w[3:5]"  0.0013715975685680527 0.49899356978342463 
		0.49963483264800745;
	setAttr -s 3 ".wl[133].w[4:6]"  0.023501366049359027 0.95567470485588757 
		0.020823929094753345;
	setAttr -s 3 ".wl[134].w[4:6]"  0.023120227806717211 0.95638902305571694 
		0.02049074913756593;
	setAttr -s 3 ".wl[135].w[4:6]"  0.022422531870831257 0.95770348575036368 
		0.019873982378805076;
	setAttr -s 3 ".wl[136].w[4:6]"  0.022075560069982215 0.95835365189787736 
		0.019570788032140476;
	setAttr -s 3 ".wl[137].w[4:6]"  0.022422518974169692 0.95770347136825673 
		0.019874009657573601;
	setAttr -s 3 ".wl[138].w[4:6]"  0.023120243808420479 0.95638899271222921 
		0.020490763479350343;
	setAttr -s 3 ".wl[139].w[4:6]"  0.023501393094413351 0.95567465357318948 
		0.02082395333239722;
	setAttr -s 3 ".wl[140].w[4:6]"  0.00075582414577941826 0.49930802379718214 
		0.49993615205703845;
	setAttr -s 3 ".wl[141].w[4:6]"  0.00074075012564203614 0.49930744812529709 
		0.49995180174906084;
	setAttr -s 3 ".wl[142].w[4:6]"  0.00071282486063722656 0.49929936062370511 
		0.4999878145156576;
	setAttr -s 3 ".wl[143].w[4:6]"  0.00069929626633331052 0.49929769323855266 
		0.50000301049511409;
	setAttr -s 3 ".wl[144].w[4:6]"  0.00071282500027034814 0.49929936058899976 
		0.49998781441072992;
	setAttr -s 3 ".wl[145].w[4:6]"  0.00074075089292505961 0.49930744791557213 
		0.4999518011915029;
	setAttr -s 3 ".wl[146].w[4:6]"  0.00075582484640345296 0.49930800601647829 
		0.49993616913711825;
	setAttr -s 3 ".wl[147].w[5:7]"  0.009888900963660633 0.97941224082318679 
		0.010698858213152624;
	setAttr -s 3 ".wl[148].w[5:7]"  0.0096793084395045883 0.9798240225424768 
		0.010496669018018653;
	setAttr -s 3 ".wl[149].w[5:7]"  0.0093019229658623716 0.98057816560523714 
		0.010119911428900461;
	setAttr -s 3 ".wl[150].w[5:7]"  0.0091127090156689992 0.98095207026079945 
		0.0099352207235315956;
	setAttr -s 3 ".wl[151].w[5:7]"  0.0093018884849968998 0.98057816021364641 
		0.010119951301356671;
	setAttr -s 3 ".wl[152].w[5:7]"  0.0096793094772970548 0.97982402038449978 
		0.01049667013820323;
	setAttr -s 3 ".wl[153].w[5:7]"  0.0098888992002193442 0.97941220380703964 
		0.01069889699274108;
	setAttr -s 3 ".wl[154].w[6:8]"  0.50034696959732661 0.49863364409282968 
		0.0010193863098437255;
	setAttr -s 3 ".wl[155].w[6:8]"  0.50029812512792982 0.49870701708529191 
		0.00099485778677811882;
	setAttr -s 3 ".wl[156].w[6:8]"  0.50018123073399423 0.49886941913066229 
		0.00094935013534350524;
	setAttr -s 3 ".wl[157].w[6:8]"  0.50014303333324894 0.49892967759787188 
		0.00092728906887917968;
	setAttr -s 3 ".wl[158].w[6:8]"  0.50018123020483762 0.49886941904608667 
		0.00094935074907566126;
	setAttr -s 3 ".wl[159].w[6:8]"  0.5002981242255965 0.49870701700653131 
		0.00099485876787221345;
	setAttr -s 3 ".wl[160].w[6:8]"  0.50034696901766895 0.49863364405672833 
		0.0010193869256027426;
	setAttr -s 3 ".wl[161].w[6:8]"  0.013233604899499804 0.96711457829073844 
		0.019651816809761847;
	setAttr -s 3 ".wl[162].w[6:8]"  0.012706101654756 0.96806289005695112 
		0.019231008288292811;
	setAttr -s 3 ".wl[163].w[6:8]"  0.011810349310909716 0.9697942210356969 
		0.018395429653393334;
	setAttr -s 3 ".wl[164].w[6:8]"  0.011372424002112498 0.97064954093207501 
		0.01797803506581248;
	setAttr -s 3 ".wl[165].w[6:8]"  0.01181035443166579 0.96979420819189521 
		0.018395437376439019;
	setAttr -s 3 ".wl[166].w[6:8]"  0.012706011888680925 0.96806279870379375 
		0.019231189407525315;
	setAttr -s 3 ".wl[167].w[6:8]"  0.013233625341453725 0.96711452840106094 
		0.01965184625748544;
	setAttr -s 3 ".wl[168].w[6:8]"  0.00033090622822488073 0.5005743317601925 
		0.4990947620115827;
	setAttr -s 3 ".wl[169].w[6:8]"  0.00031216290384037239 0.5005421564032706 
		0.499145680692889;
	setAttr -s 3 ".wl[170].w[6:8]"  0.00027950423502228969 0.50050218291835202 
		0.49921831284662577;
	setAttr -s 3 ".wl[171].w[6:8]"  0.00026489516516478557 0.5004877309794229 
		0.49924737385541229;
	setAttr -s 3 ".wl[172].w[6:8]"  0.00027950430834306584 0.50050218279538361 
		0.49921831289627322;
	setAttr -s 3 ".wl[173].w[6:8]"  0.00031216317304673668 0.50054215595959006 
		0.49914568086736316;
	setAttr -s 3 ".wl[174].w[6:8]"  0.00033090622822488073 0.5005743317601925 
		0.4990947620115827;
	setAttr -s 3 ".wl[175].w[6:8]"  0.0034700397961634623 0.49826498010191828 
		0.49826498010191828;
	setAttr -s 3 ".wl[176].w[6:8]"  0.0034264881496679127 0.49828675592516608 
		0.49828675592516608;
	setAttr -s 3 ".wl[177].w[6:8]"  0.0033590470058229272 0.49832047649708849 
		0.49832047649708849;
	setAttr -s 3 ".wl[178].w[6:8]"  0.0033280768651820711 0.498335961567409 
		0.498335961567409;
	setAttr -s 3 ".wl[179].w[6:8]"  0.0033590472293214381 0.49832047638533927 
		0.49832047638533927;
	setAttr -s 3 ".wl[180].w[6:8]"  0.0034264888554386133 0.49828675557228069 
		0.49828675557228069;
	setAttr -s 3 ".wl[181].w[6:8]"  0.0034700407050806061 0.49826497964745969 
		0.49826497964745969;
	setAttr -s 3 ".wl[182].w[6:8]"  0.0077681942818467473 0.49611590285907664 
		0.49611590285907664;
	setAttr -s 3 ".wl[183].w[6:8]"  0.0088259818117495115 0.4955870090941254 
		0.49558700909412517;
	setAttr -s 3 ".wl[184].w[6:8]"  0.0096036791808506855 0.49519816040957465 
		0.49519816040957465;
	setAttr -s 3 ".wl[185].w[6:8]"  0.0098851473417354563 0.4950574263291323 
		0.4950574263291323;
	setAttr -s 3 ".wl[186].w[6:8]"  0.0096036797609392426 0.49519816011953038 
		0.49519816011953038;
	setAttr -s 3 ".wl[187].w[6:8]"  0.0088259970653772439 0.49558700146731138 
		0.49558700146731138;
	setAttr -s 3 ".wl[188].w[6:8]"  0.0077681946400200153 0.49611590267999006 
		0.49611590267998995;
	setAttr -s 3 ".wl[189].w[6:8]"  0.0088259824143309754 0.49558700879283457 
		0.49558700879283457;
	setAttr -s 3 ".wl[190].w[6:8]"  0.011740177824445612 0.49412991108777726 
		0.49412991108777715;
	setAttr -s 3 ".wl[191].w[6:8]"  0.013471122447418151 0.49326443877629095 
		0.49326443877629095;
	setAttr -s 3 ".wl[192].w[6:8]"  0.014029933258128499 0.49298503337093574 
		0.49298503337093574;
	setAttr -s 3 ".wl[193].w[6:8]"  0.013471122647468473 0.49326443867626574 
		0.49326443867626574;
	setAttr -s 3 ".wl[194].w[6:8]"  0.011740178658413043 0.49412991067079348 
		0.49412991067079348;
	setAttr -s 3 ".wl[195].w[6:8]"  0.0088259979751767192 0.49558700101241171 
		0.4955870010124116;
	setAttr -s 3 ".wl[196].w[6:8]"  0.0096036786159480036 0.49519816069202599 
		0.49519816069202599;
	setAttr -s 3 ".wl[197].w[6:8]"  0.013471122068381896 0.49326443896580902 
		0.49326443896580902;
	setAttr -s 3 ".wl[198].w[6:8]"  0.01582612312674276 0.49208693843662865 
		0.49208693843662865;
	setAttr -s 3 ".wl[199].w[6:8]"  0.016619642058008897 0.49169017897099554 
		0.49169017897099554;
	setAttr -s 3 ".wl[200].w[6:8]"  0.015826085262304501 0.49208695736884778 
		0.49208695736884778;
	setAttr -s 3 ".wl[201].w[6:8]"  0.013471122971858375 0.49326443851407087 
		0.49326443851407087;
	setAttr -s 3 ".wl[202].w[6:8]"  0.0096036797242783009 0.49519816013786083 
		0.49519816013786083;
	setAttr -s 3 ".wl[203].w[6:8]"  0.0098851471040973336 0.49505742644795137 
		0.49505742644795137;
	setAttr -s 3 ".wl[204].w[6:8]"  0.014029932824065887 0.49298503358796708 
		0.49298503358796708;
	setAttr -s 3 ".wl[205].w[6:8]"  0.016619641899092021 0.49169017905045398 
		0.49169017905045398;
	setAttr -s 3 ".wl[206].w[6:8]"  0.017467846293807973 0.49126607685309603 
		0.49126607685309603;
	setAttr -s 3 ".wl[207].w[6:8]"  0.016619642262330668 0.49169017886883465 
		0.49169017886883465;
	setAttr -s 3 ".wl[208].w[6:8]"  0.014029932650440984 0.49298503367477953 
		0.49298503367477953;
	setAttr -s 3 ".wl[209].w[6:8]"  0.0098851480546499355 0.49505742597267505 
		0.49505742597267505;
	setAttr -s 3 ".wl[210].w[6:8]"  0.0096036783992255251 0.49519816080038725 
		0.49519816080038725;
	setAttr -s 3 ".wl[211].w[6:8]"  0.01347112171875537 0.49326443914062229 
		0.49326443914062229;
	setAttr -s 3 ".wl[212].w[6:8]"  0.015826122765504647 0.49208693861724767 
		0.49208693861724767;
	setAttr -s 3 ".wl[213].w[6:8]"  0.016619642012604085 0.49169017899369794 
		0.49169017899369794;
	setAttr -s 3 ".wl[214].w[6:8]"  0.015826123217052353 0.49208693839147383 
		0.49208693839147383;
	setAttr -s 3 ".wl[215].w[6:8]"  0.013471122600003679 0.49326443869999814 
		0.49326443869999814;
	setAttr -s 3 ".wl[216].w[6:8]"  0.0096036795075558137 0.4951981602462221 
		0.4951981602462221;
	setAttr -s 3 ".wl[217].w[6:8]"  0.0088259970466077788 0.4955870014766961 
		0.4955870014766961;
	setAttr -s 3 ".wl[218].w[6:8]"  0.011740177574255399 0.49412991121287231 
		0.49412991121287231;
	setAttr -s 3 ".wl[219].w[6:8]"  0.013471121674299768 0.49326443916285007 
		0.49326443916285007;
	setAttr -s 3 ".wl[220].w[6:8]"  0.014029932390003821 0.49298503380499814 
		0.49298503380499814;
	setAttr -s 3 ".wl[221].w[6:8]"  0.013471121874350086 0.49326443906282497 
		0.49326443906282497;
	setAttr -s 3 ".wl[222].w[6:8]"  0.011740178324826045 0.49412991083758695 
		0.49412991083758695;
	setAttr -s 3 ".wl[223].w[6:8]"  0.0088259820389518968 0.4955870089805241 
		0.4955870089805241;
	setAttr -s 3 ".wl[224].w[6:8]"  0.0077681932584944104 0.49611590337075284 
		0.49611590337075273;
	setAttr -s 3 ".wl[225].w[6:8]"  0.0088259824755766454 0.49558700876221168 
		0.49558700876221168;
	setAttr -s 3 ".wl[226].w[6:8]"  0.0096036787141852258 0.49519816064290739 
		0.49519816064290739;
	setAttr -s 3 ".wl[227].w[6:8]"  0.0098851478170117642 0.49505742609149411 
		0.49505742609149411;
	setAttr -s 3 ".wl[228].w[6:8]"  0.0096036795492786906 0.49519816022536062 
		0.49519816022536062;
	setAttr -s 3 ".wl[229].w[6:8]"  0.0088259826356067422 0.49558700868219663 
		0.49558700868219663;
	setAttr -s 3 ".wl[230].w[6:8]"  0.0077681934119972129 0.4961159032940014 
		0.4961159032940014;
	setAttr -s 3 ".wl[231].w[6:8]"  0.0034700394134615591 0.49826498029326921 
		0.49826498029326921;
	setAttr -s 3 ".wl[232].w[6:8]"  0.0034264872694207251 0.49828675636528963 
		0.49828675636528963;
	setAttr -s 3 ".wl[233].w[6:8]"  0.00335904582937427 0.49832047708531291 
		0.49832047708531291;
	setAttr -s 3 ".wl[234].w[6:8]"  0.0033280759056572942 0.49833596204717134 
		0.49833596204717134;
	setAttr -s 3 ".wl[235].w[6:8]"  0.0033590460528727471 0.49832047697356358 
		0.49832047697356358;
	setAttr -s 3 ".wl[236].w[6:8]"  0.0034264879751913493 0.49828675601240435 
		0.49828675601240435;
	setAttr -s 3 ".wl[237].w[6:8]"  0.0034700399396767304 0.49826498003016162 
		0.49826498003016162;
	setAttr -s 3 ".wl[238].w[6:8]"  0.00033090622822488073 0.5005743317601925 
		0.4990947620115827;
	setAttr -s 3 ".wl[239].w[6:8]"  0.00031216242258942591 0.5005421571964237 
		0.49914568038098678;
	setAttr -s 3 ".wl[240].w[6:8]"  0.0002795034038135186 0.50050218431239646 
		0.4992183122837901;
	setAttr -s 3 ".wl[241].w[6:8]"  0.00026489533174275953 0.50048773069638552 
		0.49924737397187169;
	setAttr -s 3 ".wl[242].w[6:8]"  0.000279503477134191 0.50050218418942793 
		0.49921831233343783;
	setAttr -s 3 ".wl[243].w[6:8]"  0.00031216269179559352 0.50054215675274305 
		0.49914568055546144;
	setAttr -s 3 ".wl[244].w[6:8]"  0.00033090650562121667 0.5005743313029174 
		0.49909476219146137;
	setAttr -s 3 ".wl[245].w[6:8]"  0.013233600811109327 0.96711458826867336 
		0.019651810920217332;
	setAttr -s 3 ".wl[246].w[6:8]"  0.012706082342362654 0.9680629377001212 
		0.019230979957516089;
	setAttr -s 3 ".wl[247].w[6:8]"  0.011810349676677699 0.96979422011828331 
		0.018395430205038994;
	setAttr -s 3 ".wl[248].w[6:8]"  0.011372403122659016 0.9706495937572247 
		0.01797800312011635;
	setAttr -s 3 ".wl[249].w[6:8]"  0.011810345226766925 0.96979423127948128 
		0.018395423493751766;
	setAttr -s 3 ".wl[250].w[6:8]"  0.012706257309793139 0.96806302739807004 
		0.019230715292136821;
	setAttr -s 3 ".wl[251].w[6:8]"  0.01323361716466993 0.967114548356937 
		0.019651834478393054;
	setAttr -s 3 ".wl[252].w[6:8]"  0.50034697104647019 0.49863364418308276 
		0.0010193847704470392;
	setAttr -s 3 ".wl[253].w[6:8]"  0.50029827021461781 0.49870687467500019 
		0.00099485511038203034;
	setAttr -s 3 ".wl[254].w[6:8]"  0.500181232110399 0.49886941935065243 
		0.0009493485389486261;
	setAttr -s 3 ".wl[255].w[6:8]"  0.50014309936351831 0.49892961446402306 
		0.00092728617245857741;
	setAttr -s 3 ".wl[256].w[6:8]"  0.50018123148503169 0.49886941925070027 
		0.00094934926426806798;
	setAttr -s 3 ".wl[257].w[6:8]"  0.50029826965106983 0.49870687462586177 
		0.00099485572306828884;
	setAttr -s 3 ".wl[258].w[6:8]"  0.50034697017698337 0.49863364412893124 
		0.0010193856940853643;
	setAttr -s 3 ".wl[259].w[5:7]"  0.0098888912874852755 0.97941226092013767 
		0.010698847792377092;
	setAttr -s 3 ".wl[260].w[5:7]"  0.0096793151314466166 0.97982404858264827 
		0.010496636285905083;
	setAttr -s 3 ".wl[261].w[5:7]"  0.0093019134642866892 0.98057818539497399 
		0.01011990114073937;
	setAttr -s 3 ".wl[262].w[5:7]"  0.009112689559292916 0.98095211082784095 
		0.0099351996128661368;
	setAttr -s 3 ".wl[263].w[5:7]"  0.009301914252686231 0.9805781837529074 
		0.010119901994406369;
	setAttr -s 3 ".wl[264].w[5:7]"  0.0096793236944802512 0.97982403077678037 
		0.010496645528739365;
	setAttr -s 3 ".wl[265].w[5:7]"  0.0098889269175779296 0.97941222759683977 
		0.010698845485582359;
	setAttr -s 3 ".wl[266].w[4:6]"  0.00075582496303580788 0.49930809388945685 
		0.49993608114750737;
	setAttr -s 3 ".wl[267].w[4:6]"  0.00074075012564203614 0.49930744812529709 
		0.49995180174906084;
	setAttr -s 3 ".wl[268].w[4:6]"  0.00071282463915958575 0.49929939804585627 
		0.49998777731498412;
	setAttr -s 3 ".wl[269].w[4:6]"  0.00069929565341812869 0.49929771238852444 
		0.50000299195805742;
	setAttr -s 3 ".wl[270].w[4:6]"  0.00071282498256268489 0.49929939796049544 
		0.49998777705694186;
	setAttr -s 3 ".wl[271].w[4:6]"  0.00074075045802836045 0.49930744803444438 
		0.49995180150752733;
	setAttr -s 3 ".wl[272].w[4:6]"  0.00075582604896133967 0.49930809358170475 
		0.49993608036933385;
	setAttr -s 3 ".wl[273].w[4:6]"  0.023501357034343241 0.95567472195011594 
		0.020823921015540925;
	setAttr -s 3 ".wl[274].w[4:6]"  0.02312029645270261 0.95638905261713347 
		0.02049065093016398;
	setAttr -s 3 ".wl[275].w[4:6]"  0.022422529912900967 0.95770352829865768 
		0.019873941788441398;
	setAttr -s 3 ".wl[276].w[4:6]"  0.022075643850596856 0.9583536845045072 
		0.019570671644895902;
	setAttr -s 3 ".wl[277].w[4:6]"  0.022422539007042483 0.95770351105499685 
		0.019873949937960631;
	setAttr -s 3 ".wl[278].w[4:6]"  0.023120312454458669 0.95638902227364675 
		0.02049066527189462;
	setAttr -s 3 ".wl[279].w[4:6]"  0.023501370556868004 0.95567469630877144 
		0.020823933134360564;
	setAttr -s 3 ".wl[280].w[3:5]"  0.0013715988633408735 0.4989936472942606 
		0.49963475384239864;
	setAttr -s 3 ".wl[281].w[3:5]"  0.0013464201662089655 0.49900252423332719 
		0.49965105560046397;
	setAttr -s 3 ".wl[282].w[3:5]"  0.0013002018952720919 0.49901742057738213 
		0.49968237752734573;
	setAttr -s 3 ".wl[283].w[3:5]"  0.0012775958856591414 0.49902516232713146 
		0.49969724178720948;
	setAttr -s 3 ".wl[284].w[3:5]"  0.0013002024106481692 0.49901742038939345 
		0.49968237719995839;
	setAttr -s 3 ".wl[285].w[3:5]"  0.0013464211718945825 0.49900252385871829 
		0.49965105496938711;
	setAttr -s 3 ".wl[286].w[3:5]"  0.0013716005705845938 0.49899364665200785 
		0.49963475277740749;
	setAttr -s 3 ".wl[287].w[3:5]"  0.033051366836881792 0.92570928280875209 
		0.041239350354366017;
	setAttr -s 3 ".wl[288].w[3:5]"  0.032571241245646372 0.92676898266361396 
		0.040659776090739785;
	setAttr -s 3 ".wl[289].w[3:5]"  0.031685375750504959 0.92872696738898397 
		0.039587656860511092;
	setAttr -s 3 ".wl[290].w[3:5]"  0.031246853776022009 0.92969598650036189 
		0.039057159723616092;
	setAttr -s 3 ".wl[291].w[3:5]"  0.031685385743038939 0.92872694527004174 
		0.039587668986919393;
	setAttr -s 3 ".wl[292].w[3:5]"  0.032571258349999382 0.92676896369506501 
		0.04065977795493559;
	setAttr -s 3 ".wl[293].w[3:5]"  0.033051436203470855 0.92570922490934104 
		0.041239338887188073;
	setAttr -s 3 ".wl[294].w[3:5]"  0.49967060636651428 0.49843712442997207 
		0.001892269203513746;
	setAttr -s 3 ".wl[295].w[3:5]"  0.49969360645937061 0.49844809811596552 
		0.0018582954246638679;
	setAttr -s 3 ".wl[296].w[3:5]"  0.49973618398192776 0.49846775931005866 
		0.0017960567080135901;
	setAttr -s 3 ".wl[297].w[3:5]"  0.49975727767125316 0.49847717793818408 
		0.0017655443905627531;
	setAttr -s 3 ".wl[298].w[3:5]"  0.49973618411513404 0.49846775937024212 
		0.0017960565146237814;
	setAttr -s 3 ".wl[299].w[3:5]"  0.49969361151027386 0.49844809224858055 
		0.0018582962411454219;
	setAttr -s 3 ".wl[300].w[3:5]"  0.49967060811617137 0.49843712207365154 
		0.001892269810177129;
	setAttr -s 3 ".wl[301].w[2:4]"  0.036739923698636517 0.93014103544602011 
		0.033119040855343382;
	setAttr -s 3 ".wl[302].w[2:4]"  0.03621290432680159 0.93115132903360143 
		0.032635766639596983;
	setAttr -s 3 ".wl[303].w[2:4]"  0.035238551942587085 0.93301706099709603 
		0.031744387060316952;
	setAttr -s 3 ".wl[304].w[2:4]"  0.034756678259969268 0.93394007157088099 
		0.031303250169149706;
	setAttr -s 3 ".wl[305].w[2:4]"  0.035238563100239699 0.93301703965590033 
		0.031744397243860044;
	setAttr -s 3 ".wl[306].w[2:4]"  0.036212911411351648 0.93115128591631968 
		0.032635802672328761;
	setAttr -s 3 ".wl[307].w[2:4]"  0.036739951188929962 0.93014098284048796 
		0.033119065970582132;
	setAttr -s 3 ".wl[308].w[1:3]"  0.0017979470571007055 0.4993099045857366 
		0.49889214835716261;
	setAttr -s 3 ".wl[309].w[1:3]"  0.0017652758313896897 0.49932868734748675 
		0.49890603682112356;
	setAttr -s 3 ".wl[310].w[1:3]"  0.0017054286446240973 0.49936431157875716 
		0.49893025977661881;
	setAttr -s 3 ".wl[311].w[1:3]"  0.0016760669144599491 0.49938136631236102 
		0.49894256677317911;
	setAttr -s 3 ".wl[312].w[1:3]"  0.0017054292909558944 0.49936431121169811 
		0.49893025949734604;
	setAttr -s 3 ".wl[313].w[1:3]"  0.0017652772719456149 0.49932868653506352 
		0.4989060361929909;
	setAttr -s 3 ".wl[314].w[1:3]"  0.0017979490944436123 0.49930990344051068 
		0.49889214746504579;
	setAttr -s 3 ".wl[315].w[1:3]"  0.039707011830877555 0.92551541093490386 
		0.034777577234218551;
	setAttr -s 3 ".wl[316].w[1:3]"  0.03913642127855943 0.92661056047931134 
		0.03425301824212925;
	setAttr -s 3 ".wl[317].w[1:3]"  0.038074200130484882 0.92863442040599253 
		0.033291379463522563;
	setAttr -s 3 ".wl[318].w[1:3]"  0.03755082270589391 0.92963776160025069 
		0.032811415693855463;
	setAttr -s 3 ".wl[319].w[1:3]"  0.038074212644761574 0.92863439675513881 
		0.033291390600099689;
	setAttr -s 3 ".wl[320].w[1:3]"  0.03913645062356548 0.92661050498843101 
		0.034253044388003535;
	setAttr -s 3 ".wl[321].w[1:3]"  0.039707041271214029 0.92551535524206308 
		0.03477760348672293;
	setAttr -s 3 ".wl[322].w[0:2]"  0.0073109625279587981 0.49657510882340089 
		0.4961139286486404;
	setAttr -s 3 ".wl[323].w[0:2]"  0.0071810431070339856 0.49664658053952926 
		0.49617237635343681;
	setAttr -s 3 ".wl[324].w[0:2]"  0.006942527819100648 0.49678403105699864 
		0.49627344112390065;
	setAttr -s 3 ".wl[325].w[0:2]"  0.0068248761349837704 0.49684966093870964 
		0.49632546292630664;
	setAttr -s 3 ".wl[326].w[0:2]"  0.006942526998653992 0.49678403148466044 
		0.49627344151668568;
	setAttr -s 3 ".wl[327].w[0:2]"  0.0071810399456108346 0.49664656950719943 
		0.4961723905471897;
	setAttr -s 3 ".wl[328].w[0:2]"  0.0073109703238957106 0.49657510478266592 
		0.49611392489343836;
	setAttr -s 3 ".wl[329].w[0:2]"  0.018732218567570704 0.97926038503646851 
		0.00200739639596079;
	setAttr -s 3 ".wl[330].w[0:2]"  0.026258419517371668 0.97096395492553711 
		0.002777625557091221;
	setAttr -s 3 ".wl[331].w[0:2]"  0.03675419981076556 0.95944494009017944 
		0.0038008600990549982;
	setAttr -s 3 ".wl[332].w[0:2]"  0.064293521262435288 0.9291386604309082 
		0.0065678183066565062;
	setAttr -s 3 ".wl[333].w[0:2]"  0.082714328781215776 0.90873193740844727 
		0.0085537338103369616;
	setAttr -s 3 ".wl[334].w[0:2]"  0.083421731587337775 0.90775388479232788 
		0.0088243836203343393;
	setAttr -s 3 ".wl[335].w[0:2]"  0.06557613980166549 0.92739653587341309 
		0.0070273243249214306;
	setAttr -s 3 ".wl[336].w";
	setAttr ".wl[336].w[0]" 0.0018999154563298661;
	setAttr ".wl[336].w[1]" 0.90276515233560894;
	setAttr ".wl[336].w[9]" 0.095334932208061218;
	setAttr -s 3 ".wl[337].w";
	setAttr ".wl[337].w[0]" 0.001703788652997279;
	setAttr ".wl[337].w[1]" 0.89889567612113452;
	setAttr ".wl[337].w[9]" 0.099400535225868225;
	setAttr -s 3 ".wl[338].w";
	setAttr ".wl[338].w[0]" 0.0019634239267349624;
	setAttr ".wl[338].w[1]" 0.87044203058967584;
	setAttr ".wl[338].w[9]" 0.12759454548358917;
	setAttr -s 3 ".wl[339].w";
	setAttr ".wl[339].w[0]" 0.0045074082518235291;
	setAttr ".wl[339].w[1]" 0.81963053275102227;
	setAttr ".wl[339].w[9]" 0.17586205899715424;
	setAttr -s 3 ".wl[340].w";
	setAttr ".wl[340].w[0]" 0.016630348525532225;
	setAttr ".wl[340].w[1]" 0.81702444259118223;
	setAttr ".wl[340].w[9]" 0.16634520888328552;
	setAttr -s 3 ".wl[341].w";
	setAttr ".wl[341].w[0]" 0.055297591023610329;
	setAttr ".wl[341].w[1]" 0.79733700282080344;
	setAttr ".wl[341].w[9]" 0.14736540615558624;
	setAttr -s 3 ".wl[342].w";
	setAttr ".wl[342].w[0]" 0.077845632587811561;
	setAttr ".wl[342].w[1]" 0.7822568868051557;
	setAttr ".wl[342].w[9]" 0.13989748060703278;
	setAttr -s 3 ".wl[343].w";
	setAttr ".wl[343].w[0]" 0.010968880630402965;
	setAttr ".wl[343].w[1]" 0.5829523337117144;
	setAttr ".wl[343].w[9]" 0.40607878565788269;
	setAttr -s 3 ".wl[344].w";
	setAttr ".wl[344].w[0]" 0.010043126667745424;
	setAttr ".wl[344].w[1]" 0.56929318872570245;
	setAttr ".wl[344].w[9]" 0.42066368460655212;
	setAttr -s 3 ".wl[345].w";
	setAttr ".wl[345].w[0]" 0.0095499798873889662;
	setAttr ".wl[345].w[1]" 0.54100665000877501;
	setAttr ".wl[345].w[9]" 0.44944337010383606;
	setAttr -s 3 ".wl[346].w";
	setAttr ".wl[346].w[0]" 0.012552558316367238;
	setAttr ".wl[346].w[1]" 0.53368449317060174;
	setAttr ".wl[346].w[9]" 0.45376294851303101;
	setAttr -s 3 ".wl[347].w";
	setAttr ".wl[347].w[0]" 0.018371472609145217;
	setAttr ".wl[347].w[1]" 0.53676407550563143;
	setAttr ".wl[347].w[9]" 0.44486445188522339;
	setAttr -s 3 ".wl[348].w";
	setAttr ".wl[348].w[0]" 0.023818535483054938;
	setAttr ".wl[348].w[1]" 0.53699605377895376;
	setAttr ".wl[348].w[9]" 0.43918541073799133;
	setAttr -s 3 ".wl[349].w";
	setAttr ".wl[349].w[0]" 0.029479245021098485;
	setAttr ".wl[349].w[1]" 0.45959874026561415;
	setAttr ".wl[349].w[9]" 0.51092201471328735;
	setAttr -s 3 ".wl[350].w";
	setAttr ".wl[350].w[0]" 0.005544759803336281;
	setAttr ".wl[350].w[1]" 0.23476197523542106;
	setAttr ".wl[350].w[9]" 0.75969326496124268;
	setAttr -s 3 ".wl[351].w";
	setAttr ".wl[351].w[0]" 0.0052512705926671677;
	setAttr ".wl[351].w[1]" 0.24828143709852546;
	setAttr ".wl[351].w[9]" 0.74646729230880737;
	setAttr -s 3 ".wl[352].w";
	setAttr ".wl[352].w[0]" 0.0035611042216363784;
	setAttr ".wl[352].w[1]" 0.19762710245103207;
	setAttr ".wl[352].w[9]" 0.79881179332733154;
	setAttr -s 3 ".wl[353].w";
	setAttr ".wl[353].w[0]" 0.0035161588361902365;
	setAttr ".wl[353].w[1]" 0.20166603587358758;
	setAttr ".wl[353].w[9]" 0.79481780529022217;
	setAttr -s 3 ".wl[354].w";
	setAttr ".wl[354].w[0]" 0.0041671765619598128;
	setAttr ".wl[354].w[1]" 0.19770934454857486;
	setAttr ".wl[354].w[9]" 0.79812347888946533;
	setAttr -s 3 ".wl[355].w";
	setAttr ".wl[355].w[0]" 0.0057879098149690661;
	setAttr ".wl[355].w[1]" 0.22732680957590007;
	setAttr ".wl[355].w[9]" 0.76688528060913086;
	setAttr -s 3 ".wl[356].w";
	setAttr ".wl[356].w[0]" 0.0052443732879472434;
	setAttr ".wl[356].w[1]" 0.18676346639177077;
	setAttr ".wl[356].w[9]" 0.80799216032028198;
	setAttr -s 3 ".wl[357].w";
	setAttr ".wl[357].w[0]" 0.00018206017427503202;
	setAttr ".wl[357].w[1]" 0.036311658449839961;
	setAttr ".wl[357].w[9]" 0.96350628137588501;
	setAttr -s 3 ".wl[358].w";
	setAttr ".wl[358].w[0]" 0.00014006348327259938;
	setAttr ".wl[358].w[1]" 0.025127835553134872;
	setAttr ".wl[358].w[9]" 0.97473210096359253;
	setAttr -s 3 ".wl[359].w";
	setAttr ".wl[359].w[0]" 0.00013399957971590339;
	setAttr ".wl[359].w[1]" 0.025020352608394449;
	setAttr ".wl[359].w[9]" 0.97484564781188965;
	setAttr -s 3 ".wl[360].w";
	setAttr ".wl[360].w[0]" 7.1913179043464381e-005;
	setAttr ".wl[360].w[1]" 0.018199115816470452;
	setAttr ".wl[360].w[9]" 0.98172897100448608;
	setAttr -s 3 ".wl[361].w";
	setAttr ".wl[361].w[0]" 7.6439762175291119e-005;
	setAttr ".wl[361].w[1]" 0.025080892658173828;
	setAttr ".wl[361].w[9]" 0.97484266757965088;
	setAttr -s 3 ".wl[362].w";
	setAttr ".wl[362].w[0]" 7.8071213837758026e-005;
	setAttr ".wl[362].w[1]" 0.02946967973602186;
	setAttr ".wl[362].w[9]" 0.97045224905014038;
	setAttr -s 3 ".wl[363].w";
	setAttr ".wl[363].w[0]" 0.0001102697762039027;
	setAttr ".wl[363].w[1]" 0.039915739306590287;
	setAttr ".wl[363].w[9]" 0.95997399091720581;
	setAttr -s 3 ".wl[364].w[6:8]"  0.0034264882991528419 0.49828675585042359 
		0.49828675585042359;
	setAttr -s 3 ".wl[365].w[6:8]"  0.00031216240079760008 0.50054215723233919 
		0.49914568036686319;
	setAttr -s 3 ".wl[366].w[6:8]"  0.012706265303434633 0.96806300767826325 
		0.019230727018302054;
	setAttr -s 3 ".wl[367].w[6:8]"  0.50029826933636579 0.49870687459842167 
		0.00099485606521252865;
	setAttr -s 3 ".wl[368].w[5:7]"  0.0096793293256204234 0.97982401906745609 
		0.01049665160692349;
	setAttr -s 3 ".wl[369].w[4:6]"  0.00074075068841919327 0.4993074479714707 
		0.49995180134011019;
	setAttr -s 3 ".wl[370].w[4:6]"  0.023120326887030963 0.95638899490574003 
		0.020490678207229097;
	setAttr -s 3 ".wl[371].w[3:5]"  0.0013464220796655345 0.49900252352058183 
		0.4996510543997526;
	setAttr -s 3 ".wl[372].w[3:5]"  0.032571271760960516 0.9267689151659948 
		0.040659813073044684;
	setAttr -s 3 ".wl[373].w[3:5]"  0.49969360568222554 0.49844809683249858 
		0.0018582974852758964;
	setAttr -s 3 ".wl[374].w[2:4]"  0.036212905176053134 0.93115129784614958 
		0.032635796977797324;
	setAttr -s 3 ".wl[375].w[1:3]"  0.0017652782354833187 0.49932868599166191 
		0.49890603577285481;
	setAttr -s 3 ".wl[376].w[1:3]"  0.039136463240579192 0.9266104811298842 
		0.034253055629536691;
	setAttr -s 3 ".wl[377].w[0:2]"  0.0071810425258286344 0.49664656816770647 
		0.49617238930646484;
	setAttr -s 3 ".wl[378].w[0:2]"  0.054105546960905693 0.94017112255096436 
		0.0057233304881299501;
	setAttr -s 3 ".wl[379].w";
	setAttr ".wl[379].w[0]" 0.078117789465677143;
	setAttr ".wl[379].w[1]" 0.81289139227222262;
	setAttr ".wl[379].w[9]" 0.10899081826210022;
	setAttr -s 3 ".wl[380].w";
	setAttr ".wl[380].w[0]" 0.021342191319326739;
	setAttr ".wl[380].w[1]" 0.45254984178080143;
	setAttr ".wl[380].w[9]" 0.52610796689987183;
	setAttr -s 3 ".wl[381].w";
	setAttr ".wl[381].w[0]" 0.0045511722807011793;
	setAttr ".wl[381].w[1]" 0.18144881722888134;
	setAttr ".wl[381].w[9]" 0.81400001049041748;
	setAttr -s 3 ".wl[382].w";
	setAttr ".wl[382].w[0]" 0.00011757720948108186;
	setAttr ".wl[382].w[1]" 0.039482497081748169;
	setAttr ".wl[382].w[9]" 0.96039992570877075;
	setAttr -s 3 ".wl[383].w[6:8]"  0.0033590474950276287 0.49832047625248621 
		0.49832047625248621;
	setAttr -s 3 ".wl[384].w[6:8]"  0.00027950397101948992 0.50050218336111829 
		0.49921831266786226;
	setAttr -s 3 ".wl[385].w[6:8]"  0.011810339740242334 0.96979424504069833 
		0.018395415219059307;
	setAttr -s 3 ".wl[386].w[6:8]"  0.50018123135003878 0.49886941922912476 
		0.00094934942083644072;
	setAttr -s 3 ".wl[387].w[5:7]"  0.0093019141235512644 0.9805781840218678 
		0.010119901854580993;
	setAttr -s 3 ".wl[388].w[4:6]"  0.00071282541399462281 0.49929939785325278 
		0.49998777673275263;
	setAttr -s 3 ".wl[389].w[4:6]"  0.022422555515125012 0.9577034797535513 
		0.019873964731323704;
	setAttr -s 3 ".wl[390].w[3:5]"  0.0013002034407888611 0.4990174200136388 
		0.49968237654557235;
	setAttr -s 3 ".wl[391].w[3:5]"  0.031685412148146942 0.9287268868210985 
		0.039587701030754631;
	setAttr -s 3 ".wl[392].w[3:5]"  0.4997361734419184 0.49846776836125145 
		0.0017960581968301725;
	setAttr -s 3 ".wl[393].w[2:4]"  0.035238590736810169 0.93301698679554657 
		0.031744422467643273;
	setAttr -s 3 ".wl[394].w[1:3]"  0.0017054296599232734 0.4993643110021575 
		0.49893025933791929;
	setAttr -s 3 ".wl[395].w[1:3]"  0.038074233829445914 0.92863435671799655 
		0.033291409452557548;
	setAttr -s 3 ".wl[396].w[0:2]"  0.0069425317212098107 0.4967840290230055 
		0.49627343925578465;
	setAttr -s 3 ".wl[397].w[0:2]"  0.043897596053374295 0.95156282186508179 
		0.0045395820815439169;
	setAttr -s 3 ".wl[398].w";
	setAttr ".wl[398].w[0]" 0.07137967198944678;
	setAttr ".wl[398].w[1]" 0.81613352596902267;
	setAttr ".wl[398].w[9]" 0.11248680204153061;
	setAttr -s 3 ".wl[399].w";
	setAttr ".wl[399].w[0]" 0.018715303065399976;
	setAttr ".wl[399].w[1]" 0.5240574370602562;
	setAttr ".wl[399].w[9]" 0.45722725987434387;
	setAttr -s 3 ".wl[400].w";
	setAttr ".wl[400].w[0]" 0.0033834304741265715;
	setAttr ".wl[400].w[1]" 0.18260261154857851;
	setAttr ".wl[400].w[9]" 0.81401395797729492;
	setAttr -s 3 ".wl[401].w";
	setAttr ".wl[401].w[0]" 8.9161346932058069e-005;
	setAttr ".wl[401].w[1]" 0.040620214988211986;
	setAttr ".wl[401].w[9]" 0.95929062366485596;
	setAttr -s 3 ".wl[402].w[6:8]"  0.0033280773449447442 0.49833596132752761 
		0.49833596132752761;
	setAttr -s 3 ".wl[403].w[6:8]"  0.00026489583147709623 0.50048772984727341 
		0.49924737432124949;
	setAttr -s 3 ".wl[404].w[6:8]"  0.011372504203521538 0.97064963231232393 
		0.017977863484154508;
	setAttr -s 3 ".wl[405].w[6:8]"  0.50014309764566278 0.49892961414364062 
		0.00092728821069660943;
	setAttr -s 3 ".wl[406].w[5:7]"  0.0091127435970223668 0.98095207403724816 
		0.0099351823657294683;
	setAttr -s 3 ".wl[407].w[4:6]"  0.00069929662135301295 0.49929771215861518 
		0.50000299122003178;
	setAttr -s 3 ".wl[408].w[4:6]"  0.022075674638056732 0.95835362612521957 
		0.019570699236723735;
	setAttr -s 3 ".wl[409].w[3:5]"  0.0012775978492139638 0.49902515348185894 
		0.49969724866892706;
	setAttr -s 3 ".wl[410].w[3:5]"  0.031246882212793519 0.92969592353064889 
		0.039057194256557633;
	setAttr -s 3 ".wl[411].w[3:5]"  0.49975725523926656 0.4984771975625531 
		0.0017655471981803561;
	setAttr -s 3 ".wl[412].w[2:4]"  0.034756684531801904 0.93394000257849585 
		0.031303312889702124;
	setAttr -s 3 ".wl[413].w[1:3]"  0.0016760677785280485 0.49938134751271274 
		0.49894258470875924;
	setAttr -s 3 ".wl[414].w[1:3]"  0.03755086333459378 0.92963768484375453 
		0.032811451821651648;
	setAttr -s 3 ".wl[415].w[0:2]"  0.006824883171445033 0.49684965726451497 
		0.49632545956403995;
	setAttr -s 3 ".wl[416].w[0:2]"  0.033732443011654144 0.96282166242599487 
		0.003445894562350981;
	setAttr -s 3 ".wl[417].w";
	setAttr ".wl[417].w[0]" 0.056038236739827579;
	setAttr ".wl[417].w[1]" 0.83465041357021197;
	setAttr ".wl[417].w[9]" 0.10931134968996048;
	setAttr -s 3 ".wl[418].w";
	setAttr ".wl[418].w[0]" 0.014579888338895569;
	setAttr ".wl[418].w[1]" 0.52788338447108674;
	setAttr ".wl[418].w[9]" 0.4575367271900177;
	setAttr -s 3 ".wl[419].w";
	setAttr ".wl[419].w[0]" 0.0031980346653706559;
	setAttr ".wl[419].w[1]" 0.22019588241836957;
	setAttr ".wl[419].w[9]" 0.77660608291625977;
	setAttr -s 3 ".wl[420].w";
	setAttr ".wl[420].w[0]" 8.4766371140157447e-005;
	setAttr ".wl[420].w[1]" 0.039345911519637428;
	setAttr ".wl[420].w[9]" 0.96056932210922241;
	setAttr -s 3 ".wl[421].w[6:8]"  0.003359047774400898 0.49832047611279962 
		0.49832047611279962;
	setAttr -s 3 ".wl[422].w[6:8]"  0.00027950411766088204 0.50050218311518213 
		0.49921831276715706;
	setAttr -s 3 ".wl[423].w[6:8]"  0.01181035001209999 0.96979421927698228 
		0.018395430710917749;
	setAttr -s 3 ".wl[424].w[6:8]"  0.50018123094114486 0.49886941916377125 
		0.00094934989508386363;
	setAttr -s 3 ".wl[425].w[5:7]"  0.0093019300886481304 0.98057815077000787 
		0.010119919141344079;
	setAttr -s 3 ".wl[426].w[4:6]"  0.00071282554989853203 0.49929937913618205 
		0.4999877953139194;
	setAttr -s 3 ".wl[427].w[4:6]"  0.0224225621290484 0.95770346721270272 
		0.019873970658248946;
	setAttr -s 3 ".wl[428].w[3:5]"  0.0013002035146965603 0.49901741193078869 
		0.49968238455451475;
	setAttr -s 3 ".wl[429].w[3:5]"  0.031685410936352514 0.92872687106527785 
		0.039587717998369715;
	setAttr -s 3 ".wl[430].w[3:5]"  0.49973615384359427 0.498467786672323 
		0.0017960594840827394;
	setAttr -s 3 ".wl[431].w[2:4]"  0.035238588821973019 0.93301697603191835 
		0.031744435146108606;
	setAttr -s 3 ".wl[432].w[1:3]"  0.0017054296090547284 0.49936430498973622 
		0.49893026540120916;
	setAttr -s 3 ".wl[433].w[1:3]"  0.038074241446832142 0.92863434232182374 
		0.033291416231344149;
	setAttr -s 3 ".wl[434].w[0:2]"  0.0069425227121401242 0.49678400714758203 
		0.49627347014027784;
	setAttr -s 3 ".wl[435].w[0:2]"  0.027628215084782717 0.96951466798782349 
		0.0028571169273937953;
	setAttr -s 3 ".wl[436].w";
	setAttr ".wl[436].w[0]" 0.044428510970651161;
	setAttr ".wl[436].w[1]" 0.8560855179957757;
	setAttr ".wl[436].w[9]" 0.099485971033573151;
	setAttr -s 3 ".wl[437].w";
	setAttr ".wl[437].w[0]" 0.015338278840749243;
	setAttr ".wl[437].w[1]" 0.6352554787886453;
	setAttr ".wl[437].w[9]" 0.34940624237060547;
	setAttr -s 3 ".wl[438].w";
	setAttr ".wl[438].w[0]" 0.0025330577724759309;
	setAttr ".wl[438].w[1]" 0.19292755976979092;
	setAttr ".wl[438].w[9]" 0.80453938245773315;
	setAttr -s 3 ".wl[439].w";
	setAttr ".wl[439].w[0]" 7.3067358822069832e-005;
	setAttr ".wl[439].w[1]" 0.031942911931186473;
	setAttr ".wl[439].w[9]" 0.96798402070999146;
	setAttr -s 3 ".wl[440].w[6:8]"  0.0034264888637692147 0.49828675556811541 
		0.49828675556811541;
	setAttr -s 3 ".wl[441].w[6:8]"  0.00031216279236989729 0.50054215658698575 
		0.49914568062064429;
	setAttr -s 3 ".wl[442].w[6:8]"  0.012706272515473309 0.96806298988662154 
		0.019230737597905216;
	setAttr -s 3 ".wl[443].w[6:8]"  0.50029812364819337 0.49870701695613245 
		0.00099485939567426056;
	setAttr -s 3 ".wl[444].w[5:7]"  0.0096793419886897873 0.97982399273602394 
		0.010496665275286279;
	setAttr -s 3 ".wl[445].w[4:6]"  0.00074075163483842488 0.49930744771278102 
		0.4999518006523806;
	setAttr -s 3 ".wl[446].w[4:6]"  0.023120249255199378 0.95638898238368686 
		0.020490768361113729;
	setAttr -s 3 ".wl[447].w[3:5]"  0.0013464226830772442 0.49900252329581629 
		0.49965105402110643;
	setAttr -s 3 ".wl[448].w[3:5]"  0.032571158400928564 0.92676888293458781 
		0.040659958664483568;
	setAttr -s 3 ".wl[449].w[3:5]"  0.49969356619735267 0.49844813366316915 
		0.0018583001394781699;
	setAttr -s 3 ".wl[450].w[2:4]"  0.036212905544237547 0.93115129714171219 
		0.032635797314050308;
	setAttr -s 3 ".wl[451].w[1:3]"  0.0017652767251303716 0.49932866321777974 
		0.49890606005708993;
	setAttr -s 3 ".wl[452].w[1:3]"  0.039136335405153426 0.92661046915394429 
		0.034253195440902294;
	setAttr -s 3 ".wl[453].w[0:2]"  0.0071810508439851374 0.49664657652296473 
		0.49617237263305014;
	setAttr -s 3 ".wl[454].w[0:2]"  0.028052819669660587 0.96897971630096436 
		0.0029674640293750579;
	setAttr -s 3 ".wl[455].w";
	setAttr ".wl[455].w[0]" 0.036290946167369206;
	setAttr ".wl[455].w[1]" 0.86927745981846305;
	setAttr ".wl[455].w[9]" 0.094431594014167786;
	setAttr -s 3 ".wl[456].w";
	setAttr ".wl[456].w[0]" 0.013651174099038918;
	setAttr ".wl[456].w[1]" 0.54480870386879554;
	setAttr ".wl[456].w[9]" 0.44154012203216553;
	setAttr -s 3 ".wl[457].w";
	setAttr ".wl[457].w[0]" 0.0025387326678166992;
	setAttr ".wl[457].w[1]" 0.23450107179080146;
	setAttr ".wl[457].w[9]" 0.76296019554138184;
	setAttr -s 3 ".wl[458].w";
	setAttr ".wl[458].w[0]" 7.0265591117322644e-005;
	setAttr ".wl[458].w[1]" 0.021567054927376331;
	setAttr ".wl[458].w[9]" 0.97836267948150635;
	setAttr -s 3 ".wl[459].w[6:8]"  0.0034264871988437307 0.49828675640057818 
		0.49828675640057818;
	setAttr -s 3 ".wl[460].w[6:8]"  0.00031216240079760008 0.50054215723233919 
		0.49914568036686319;
	setAttr -s 3 ".wl[461].w[6:8]"  0.012706088612847955 0.96806292223099755 
		0.019230989156154506;
	setAttr -s 3 ".wl[462].w[6:8]"  0.50029812550481478 0.49870701711818788 
		0.00099485737699737628;
	setAttr -s 3 ".wl[463].w[5:7]"  0.0096793177003555546 0.97982404324089034 
		0.010496639058754129;
	setAttr -s 3 ".wl[464].w[4:6]"  0.00074074988256613819 0.49930744819173833 
		0.49995180192569549;
	setAttr -s 3 ".wl[465].w[4:6]"  0.023120226381410341 0.95638906569159066 
		0.020490707926999006;
	setAttr -s 3 ".wl[466].w[3:5]"  0.0013464202260193578 0.49900252421104829 
		0.49965105556293227;
	setAttr -s 3 ".wl[467].w[3:5]"  0.032571234248531207 0.92676899814071545 
		0.040659767610753239;
	setAttr -s 3 ".wl[468].w[3:5]"  0.49969360032682192 0.49844810484803709 
		0.0018582948251410119;
	setAttr -s 3 ".wl[469].w[2:4]"  0.036212892960760024 0.9311513507799366 
		0.0326357562593034;
	setAttr -s 3 ".wl[470].w[1:3]"  0.0017652745299279839 0.49932867036207779 
		0.49890605510799435;
	setAttr -s 3 ".wl[471].w[1:3]"  0.039136275828199257 0.92661058181323441 
		0.034253142358566385;
	setAttr -s 3 ".wl[472].w[0:2]"  0.0071810331296435995 0.49664657304563725 
		0.49617239382471923;
	setAttr -s 3 ".wl[473].w[0:2]"  0.013498282515916976 0.98507386445999146 
		0.001427853024091569;
	setAttr -s 3 ".wl[474].w";
	setAttr ".wl[474].w[0]" 0.0018101770044996548;
	setAttr ".wl[474].w[1]" 0.90043868985159847;
	setAttr ".wl[474].w[9]" 0.097751133143901825;
	setAttr -s 3 ".wl[475].w";
	setAttr ".wl[475].w[0]" 0.0076953769662858156;
	setAttr ".wl[475].w[1]" 0.49203729620189657;
	setAttr ".wl[475].w[9]" 0.50026732683181763;
	setAttr -s 3 ".wl[476].w";
	setAttr ".wl[476].w[0]" 0.004344657465536703;
	setAttr ".wl[476].w[1]" 0.18598853011457195;
	setAttr ".wl[476].w[9]" 0.80966681241989136;
	setAttr -s 3 ".wl[477].w";
	setAttr ".wl[477].w[1]" 0.02897199393704019;
	setAttr ".wl[477].w[9]" 0.97079312801361084;
	setAttr ".wl[477].w[10]" 0.00023487804934897109;
	setAttr -s 3 ".wl[478].w[6:8]"  0.0033590467705330858 0.49832047661473344 
		0.49832047661473344;
	setAttr -s 3 ".wl[479].w[6:8]"  0.00027950367519626301 0.5005021838572522 
		0.49921831246755155;
	setAttr -s 3 ".wl[480].w[6:8]"  0.011810350408213804 0.96979421828345569 
		0.018395431308330521;
	setAttr -s 3 ".wl[481].w[6:8]"  0.50018123203824139 0.49886941933911949 
		0.00094934862263921658;
	setAttr -s 3 ".wl[482].w[5:7]"  0.0093019172907425202 0.98057817742529019 
		0.010119905283967339;
	setAttr -s 3 ".wl[483].w[4:6]"  0.00071282435871093078 0.49929937943226338 
		0.49998779620902573;
	setAttr -s 3 ".wl[484].w[4:6]"  0.022422537553564856 0.95770351381097729 
		0.019873948635457925;
	setAttr -s 3 ".wl[485].w[3:5]"  0.0013002013028956679 0.49901742079345757 
		0.49968237790364672;
	setAttr -s 3 ".wl[486].w[3:5]"  0.031685371230819923 0.92872697739351862 
		0.039587651375661392;
	setAttr -s 3 ".wl[487].w[3:5]"  0.49973617145070054 0.4984677729868886 
		0.0017960555624108782;
	setAttr -s 3 ".wl[488].w[2:4]"  0.035238539124485845 0.93301707108811371 
		0.031744389787400476;
	setAttr -s 3 ".wl[489].w[1:3]"  0.0017054279371021073 0.49936431198056641 
		0.49893026008233149;
	setAttr -s 3 ".wl[490].w[1:3]"  0.038074186545600783 0.92863444608019774 
		0.033291367374201554;
	setAttr -s 3 ".wl[491].w[0:2]"  0.006942521437190291 0.49678403438360041 
		0.49627344417920938;
	setAttr -s 3 ".wl[492].w[0:2]"  0.011358025209011047 0.98746740818023682 
		0.0011745666107521359;
	setAttr -s 3 ".wl[493].w";
	setAttr ".wl[493].w[0]" 0.0012862943319676243;
	setAttr ".wl[493].w[1]" 0.8529550172181728;
	setAttr ".wl[493].w[9]" 0.14575868844985962;
	setAttr -s 3 ".wl[494].w";
	setAttr ".wl[494].w[0]" 0.0053990221937407967;
	setAttr ".wl[494].w[1]" 0.55767476191918952;
	setAttr ".wl[494].w[9]" 0.4369262158870697;
	setAttr -s 3 ".wl[495].w";
	setAttr ".wl[495].w[0]" 0.0033171514110074598;
	setAttr ".wl[495].w[1]" 0.19473751987652915;
	setAttr ".wl[495].w[9]" 0.80194532871246338;
	setAttr -s 3 ".wl[496].w";
	setAttr ".wl[496].w[1]" 0.0203920989937325;
	setAttr ".wl[496].w[9]" 0.97873204946517944;
	setAttr ".wl[496].w[10]" 0.0008758515410880578;
	setAttr -s 3 ".wl[497].w[6:8]"  0.003328076145538338 0.49833596192723079 
		0.49833596192723079;
	setAttr -s 3 ".wl[498].w[6:8]"  0.0002648951651647544 0.50048773097942312 
		0.49924737385541224;
	setAttr -s 3 ".wl[499].w[6:8]"  0.01137251464332955 0.97064960589979021 
		0.017977879456880206;
	setAttr -s 3 ".wl[500].w[6:8]"  0.50014309901994736 0.49892961439994676 
		0.00092728658010586724;
	setAttr -s 3 ".wl[501].w[5:7]"  0.009112696044748363 0.98095209730550048 
		0.0099352066497511386;
	setAttr -s 3 ".wl[502].w[4:6]"  0.0006992952983988608 0.49929769346844816 
		0.50000301123315294;
	setAttr -s 3 ".wl[503].w[4:6]"  0.022075578804238896 0.95835369296271733 
		0.019570728233043733;
	setAttr -s 3 ".wl[504].w[3:5]"  0.0012775958856590685 0.49902516232713134 
		0.49969724178720948;
	setAttr -s 3 ".wl[505].w[3:5]"  0.031246839557639107 0.92969601798521273 
		0.039057142457148246;
	setAttr -s 3 ".wl[506].w[3:5]"  0.49975725393605297 0.49847720160101128 
		0.0017655444629357195;
	setAttr -s 3 ".wl[507].w[2:4]"  0.034756623245989271 0.93394009128222455 
		0.031303285471786228;
	setAttr -s 3 ".wl[508].w[1:3]"  0.0016760654926872933 0.4993813488152013 
		0.49894258569211136;
	setAttr -s 3 ".wl[509].w[1:3]"  0.037550822705892772 0.92963776160025291 
		0.03281141569385445;
	setAttr -s 3 ".wl[510].w[0:2]"  0.0068248761349835197 0.49684966093870964 
		0.4963254629263068;
	setAttr -s 3 ".wl[511].w[0:2]"  0.010332717978545238 0.98861175775527954 
		0.0010555242661752211;
	setAttr -s 3 ".wl[512].w";
	setAttr ".wl[512].w[0]" 0.0010296845874296608;
	setAttr ".wl[512].w[1]" 0.85078862364678509;
	setAttr ".wl[512].w[9]" 0.14818169176578522;
	setAttr -s 3 ".wl[513].w";
	setAttr ".wl[513].w[0]" 0.003516139798954251;
	setAttr ".wl[513].w[1]" 0.58038297075669454;
	setAttr ".wl[513].w[9]" 0.4161008894443512;
	setAttr -s 3 ".wl[514].w";
	setAttr ".wl[514].w[0]" 0.0022422563492048475;
	setAttr ".wl[514].w[1]" 0.18216819649350754;
	setAttr ".wl[514].w[9]" 0.8155895471572876;
	setAttr -s 3 ".wl[515].w";
	setAttr ".wl[515].w[1]" 0.02076843469034817;
	setAttr ".wl[515].w[9]" 0.9780728816986084;
	setAttr ".wl[515].w[10]" 0.0011586836110434305;
	setAttr -s 3 ".wl[516].w[6:8]"  0.0033590470499062866 0.49832047647504685 
		0.49832047647504685;
	setAttr -s 3 ".wl[517].w[6:8]"  0.00027950346491407394 0.50050218420992287 
		0.49921831232516295;
	setAttr -s 3 ".wl[518].w[6:8]"  0.011810329407701804 0.96979427095661908 
		0.018395399635679207;
	setAttr -s 3 ".wl[519].w[6:8]"  0.50018123167745254 0.49886941928145495 
		0.00094934904109261558;
	setAttr -s 3 ".wl[520].w[5:7]"  0.0093019201475583804 0.98057817147515769 
		0.01011990837728393;
	setAttr -s 3 ".wl[521].w[4:6]"  0.000712824603998778 0.4992993793712947 
		0.49998779602470655;
	setAttr -s 3 ".wl[522].w[4:6]"  0.022422542514005585 0.95770350440534435 
		0.01987395308065016;
	setAttr -s 3 ".wl[523].w[3:5]"  0.0013002011706532855 0.49901741278579514 
		0.49968238604355153;
	setAttr -s 3 ".wl[524].w[3:5]"  0.03168533947681762 0.92872695549166917 
		0.03958770503151323;
	setAttr -s 3 ".wl[525].w[3:5]"  0.49973615481675454 0.49846778849333706 
		0.001796056689908477;
	setAttr -s 3 ".wl[526].w[2:4]"  0.035238521208025043 0.93301706207851176 
		0.031744416713463203;
	setAttr -s 3 ".wl[527].w[1:3]"  0.00170542679961235 0.49936429450286773 
		0.49893027869751994;
	setAttr -s 3 ".wl[528].w[1:3]"  0.038074209924264961 0.92863440189663193 
		0.03329138817910314;
	setAttr -s 3 ".wl[529].w[0:2]"  0.0069425125466595133 0.49678401244636594 
		0.4962734750069745;
	setAttr -s 3 ".wl[530].w[0:2]"  0.011461632451579147 0.98735308647155762 
		0.0011852810768632365;
	setAttr -s 3 ".wl[531].w";
	setAttr ".wl[531].w[0]" 0.0010829513282373051;
	setAttr ".wl[531].w[1]" 0.84860085497192594;
	setAttr ".wl[531].w[9]" 0.15031619369983673;
	setAttr -s 3 ".wl[532].w";
	setAttr ".wl[532].w[0]" 0.0028172608581835917;
	setAttr ".wl[532].w[1]" 0.56036646402203494;
	setAttr ".wl[532].w[9]" 0.43681627511978149;
	setAttr -s 3 ".wl[533].w";
	setAttr ".wl[533].w[0]" 0.0018754227300498223;
	setAttr ".wl[533].w[1]" 0.18609390424291161;
	setAttr ".wl[533].w[9]" 0.81203067302703857;
	setAttr -s 3 ".wl[534].w";
	setAttr ".wl[534].w[1]" 0.01984962672158571;
	setAttr ".wl[534].w[9]" 0.97874099016189575;
	setAttr ".wl[534].w[10]" 0.0014093831165185367;
	setAttr -s 3 ".wl[535].w[6:8]"  0.0034264876928829474 0.49828675615355855 
		0.49828675615355855;
	setAttr -s 3 ".wl[536].w[6:8]"  0.00031216279236989729 0.50054215658698575 
		0.49914568062064429;
	setAttr -s 3 ".wl[537].w[6:8]"  0.012706253202840868 0.96806303752966105 
		0.019230709267498109;
	setAttr -s 3 ".wl[538].w[6:8]"  0.5002982702907306 0.49870687468163666 
		0.00099485502763277194;
	setAttr -s 3 ".wl[539].w[5:7]"  0.0096793245507842234 0.97982402899619236 
		0.01049664645302344;
	setAttr -s 3 ".wl[540].w[4:6]"  0.00074075033014780968 0.4993074480693987 
		0.4999518016004536;
	setAttr -s 3 ".wl[541].w[4:6]"  0.023120239182781929 0.95638904141680392 
		0.020490719400414172;
	setAttr -s 3 ".wl[542].w[3:5]"  0.0013464202260193578 0.49900252421104829 
		0.49965105556293227;
	setAttr -s 3 ".wl[543].w[3:5]"  0.032571133392720962 0.92676893825107953 
		0.040659928356199512;
	setAttr -s 3 ".wl[544].w[3:5]"  0.49969356654146652 0.49844813611740318 
		0.0018582973411303202;
	setAttr -s 3 ".wl[545].w[2:4]"  0.036212892222496559 0.93115132262984301 
		0.032635785147660482;
	setAttr -s 3 ".wl[546].w[1:3]"  0.00176527427238715 0.4993286646010241 
		0.4989060611265887;
	setAttr -s 3 ".wl[547].w[1:3]"  0.039136184144206831 0.92661056490329452 
		0.034253250952498683;
	setAttr -s 3 ".wl[548].w[0:2]"  0.007181045040344284 0.49664657953586971 
		0.49617237542378595;
	setAttr -s 3 ".wl[549].w[0:2]"  0.013619606589395967 0.98493969440460205 
		0.0014406990060019827;
	setAttr -s 3 ".wl[550].w";
	setAttr ".wl[550].w[0]" 0.0011461496495058772;
	setAttr ".wl[550].w[1]" 0.84224711655151341;
	setAttr ".wl[550].w[9]" 0.15660673379898071;
	setAttr -s 3 ".wl[551].w";
	setAttr ".wl[551].w[0]" 0.0028195617065866203;
	setAttr ".wl[551].w[1]" 0.57320735479731966;
	setAttr ".wl[551].w[9]" 0.42397308349609375;
	setAttr -s 3 ".wl[552].w";
	setAttr ".wl[552].w[0]" 0.0017815442741765087;
	setAttr ".wl[552].w[1]" 0.20268163960567578;
	setAttr ".wl[552].w[9]" 0.79553681612014771;
	setAttr -s 3 ".wl[553].w";
	setAttr ".wl[553].w[1]" 0.026466740137712122;
	setAttr ".wl[553].w[9]" 0.97142529487609863;
	setAttr ".wl[553].w[10]" 0.0021079649861892448;
	setAttr -s 3 ".wl[554].w";
	setAttr ".wl[554].w[1]" 0.019080975873075796;
	setAttr ".wl[554].w[9]" 0.70449244976043701;
	setAttr ".wl[554].w[10]" 0.27642657436648721;
	setAttr -s 3 ".wl[555].w";
	setAttr ".wl[555].w[1]" 0.01740714899612017;
	setAttr ".wl[555].w[9]" 0.74075549840927124;
	setAttr ".wl[555].w[10]" 0.24183735259460859;
	setAttr -s 3 ".wl[556].w";
	setAttr ".wl[556].w[1]" 0.016390920756786172;
	setAttr ".wl[556].w[9]" 0.75160366296768188;
	setAttr ".wl[556].w[10]" 0.23200541627553195;
	setAttr -s 3 ".wl[557].w";
	setAttr ".wl[557].w[1]" 0.015254625835807136;
	setAttr ".wl[557].w[9]" 0.77290481328964233;
	setAttr ".wl[557].w[10]" 0.21184056087455053;
	setAttr -s 3 ".wl[558].w";
	setAttr ".wl[558].w[1]" 0.02278125780627864;
	setAttr ".wl[558].w[9]" 0.81091821193695068;
	setAttr ".wl[558].w[10]" 0.16630053025677066;
	setAttr -s 3 ".wl[559].w";
	setAttr ".wl[559].w[1]" 0.017221903059974935;
	setAttr ".wl[559].w[9]" 0.75340378284454346;
	setAttr ".wl[559].w[10]" 0.22937431409548162;
	setAttr -s 3 ".wl[560].w";
	setAttr ".wl[560].w[1]" 0.020081096165751437;
	setAttr ".wl[560].w[9]" 0.74735826253890991;
	setAttr ".wl[560].w[10]" 0.23256064129533865;
	setAttr -s 3 ".wl[561].w";
	setAttr ".wl[561].w[1]" 0.020754930187928657;
	setAttr ".wl[561].w[9]" 0.74695533514022827;
	setAttr ".wl[561].w[10]" 0.23228973467184308;
	setAttr -s 3 ".wl[562].w";
	setAttr ".wl[562].w[1]" 0.01719859387022447;
	setAttr ".wl[562].w[9]" 0.77885937690734863;
	setAttr ".wl[562].w[10]" 0.20394202922242691;
	setAttr -s 3 ".wl[563].w";
	setAttr ".wl[563].w[1]" 0.016512800451579341;
	setAttr ".wl[563].w[9]" 0.79168450832366943;
	setAttr ".wl[563].w[10]" 0.19180269122475122;
	setAttr -s 3 ".wl[564].w";
	setAttr ".wl[564].w[1]" 0.01604982777960105;
	setAttr ".wl[564].w[9]" 0.8247029185295105;
	setAttr ".wl[564].w[10]" 0.15924725369088846;
	setAttr -s 3 ".wl[565].w";
	setAttr ".wl[565].w[1]" 0.021948815501841672;
	setAttr ".wl[565].w[9]" 0.80771255493164063;
	setAttr ".wl[565].w[10]" 0.17033862956651771;
	setAttr -s 3 ".wl[566].w";
	setAttr ".wl[566].w[1]" 0.012102057326392053;
	setAttr ".wl[566].w[9]" 0.75686657428741455;
	setAttr ".wl[566].w[10]" 0.2310313683861934;
	setAttr -s 3 ".wl[567].w";
	setAttr ".wl[567].w[1]" 0.014263704967961276;
	setAttr ".wl[567].w[9]" 0.76324719190597534;
	setAttr ".wl[567].w[10]" 0.22248910312606338;
	setAttr -s 3 ".wl[568].w";
	setAttr ".wl[568].w[1]" 0.011862477785363215;
	setAttr ".wl[568].w[9]" 0.78677445650100708;
	setAttr ".wl[568].w[10]" 0.20136306571362972;
	setAttr -s 3 ".wl[569].w";
	setAttr ".wl[569].w[1]" 0.013849730614127653;
	setAttr ".wl[569].w[9]" 0.80537891387939453;
	setAttr ".wl[569].w[10]" 0.18077135550647783;
	setAttr -s 3 ".wl[570].w";
	setAttr ".wl[570].w[1]" 0.0097600945977259889;
	setAttr ".wl[570].w[9]" 0.82899016141891479;
	setAttr ".wl[570].w[10]" 0.16124974398335923;
	setAttr -s 3 ".wl[571].w";
	setAttr ".wl[571].w[1]" 0.0091616546936669156;
	setAttr ".wl[571].w[9]" 0.83390796184539795;
	setAttr ".wl[571].w[10]" 0.15693038346093513;
	setAttr -s 3 ".wl[572].w";
	setAttr ".wl[572].w[1]" 0.0086565548648597033;
	setAttr ".wl[572].w[9]" 0.81170529127120972;
	setAttr ".wl[572].w[10]" 0.17963815386393059;
	setAttr -s 3 ".wl[573].w";
	setAttr ".wl[573].w[1]" 0.008609890132096485;
	setAttr ".wl[573].w[9]" 0.78888458013534546;
	setAttr ".wl[573].w[10]" 0.20250552973255806;
	setAttr -s 3 ".wl[574].w";
	setAttr ".wl[574].w[1]" 0.0085534032157603655;
	setAttr ".wl[574].w[9]" 0.75916141271591187;
	setAttr ".wl[574].w[10]" 0.23228518406832777;
	setAttr -s 3 ".wl[575].w";
	setAttr ".wl[575].w[1]" 0.014728063922294667;
	setAttr ".wl[575].w[9]" 0.77603799104690552;
	setAttr ".wl[575].w[10]" 0.20923394503079981;
	setAttr -s 3 ".wl[576].w";
	setAttr ".wl[576].w[1]" 0.015770360457962568;
	setAttr ".wl[576].w[9]" 0.74995338916778564;
	setAttr ".wl[576].w[10]" 0.23427625037425176;
	setAttr -s 3 ".wl[577].w";
	setAttr ".wl[577].w[1]" 0.018585501952288613;
	setAttr ".wl[577].w[9]" 0.71983152627944946;
	setAttr ".wl[577].w[10]" 0.26158297176826195;
	setAttr -s 3 ".wl[578].w";
	setAttr ".wl[578].w[1]" 0.010321724048915839;
	setAttr ".wl[578].w[9]" 0.95654916763305664;
	setAttr ".wl[578].w[10]" 0.033129108318027518;
	setAttr -s 3 ".wl[579].w";
	setAttr ".wl[579].w[1]" 0.010696026183234845;
	setAttr ".wl[579].w[9]" 0.95537972450256348;
	setAttr ".wl[579].w[10]" 0.033924249314201675;
	setAttr -s 3 ".wl[580].w";
	setAttr ".wl[580].w[1]" 0.0108335849577586;
	setAttr ".wl[580].w[9]" 0.95549255609512329;
	setAttr ".wl[580].w[10]" 0.033673858947118107;
	setAttr -s 3 ".wl[581].w";
	setAttr ".wl[581].w[1]" 0.0073823546763305374;
	setAttr ".wl[581].w[9]" 0.96873843669891357;
	setAttr ".wl[581].w[10]" 0.023879208624755888;
	setAttr -s 3 ".wl[582].w";
	setAttr ".wl[582].w[1]" 0.0083584265054769107;
	setAttr ".wl[582].w[9]" 0.96576708555221558;
	setAttr ".wl[582].w[10]" 0.025874487942307515;
	setAttr -s 3 ".wl[583].w";
	setAttr ".wl[583].w[1]" 0.010011808419875637;
	setAttr ".wl[583].w[9]" 0.96149510145187378;
	setAttr ".wl[583].w[10]" 0.028493090128250586;
	setAttr -s 3 ".wl[584].w";
	setAttr ".wl[584].w[1]" 0.010715309165231036;
	setAttr ".wl[584].w[9]" 0.9616316556930542;
	setAttr ".wl[584].w[10]" 0.027653035141714761;
	setAttr -s 3 ".wl[585].w";
	setAttr ".wl[585].w[1]" 0.0053769037724225996;
	setAttr ".wl[585].w[9]" 0.96721065044403076;
	setAttr ".wl[585].w[10]" 0.027412445783546638;
	setAttr -s 3 ".wl[586].w";
	setAttr ".wl[586].w[1]" 0.00513417954485588;
	setAttr ".wl[586].w[9]" 0.96793437004089355;
	setAttr ".wl[586].w[10]" 0.026931450414250564;
	setAttr -s 3 ".wl[587].w";
	setAttr ".wl[587].w[1]" 0.0045975233264851298;
	setAttr ".wl[587].w[9]" 0.98163521289825439;
	setAttr ".wl[587].w[10]" 0.013767263775260474;
	setAttr -s 3 ".wl[588].w";
	setAttr ".wl[588].w[1]" 0.0055319917056099724;
	setAttr ".wl[588].w[9]" 0.97944295406341553;
	setAttr ".wl[588].w[10]" 0.015025054230974501;
	setAttr -s 3 ".wl[589].w";
	setAttr ".wl[589].w[1]" 0.0054347217763075105;
	setAttr ".wl[589].w[9]" 0.98131340742111206;
	setAttr ".wl[589].w[10]" 0.01325187080258043;
	setAttr -s 3 ".wl[590].w";
	setAttr ".wl[590].w[1]" 0.010378273167241634;
	setAttr ".wl[590].w[9]" 0.98320412635803223;
	setAttr ".wl[590].w[10]" 0.0064176004747261385;
	setAttr -s 3 ".wl[591].w";
	setAttr ".wl[591].w[1]" 0.011817311511302638;
	setAttr ".wl[591].w[9]" 0.97841095924377441;
	setAttr ".wl[591].w[10]" 0.0097717292449229463;
	setAttr -s 3 ".wl[592].w";
	setAttr ".wl[592].w[1]" 0.0094777624678955893;
	setAttr ".wl[592].w[9]" 0.98017424345016479;
	setAttr ".wl[592].w[10]" 0.010347994081939614;
	setAttr -s 3 ".wl[593].w";
	setAttr ".wl[593].w[1]" 0.0092205189265296417;
	setAttr ".wl[593].w[9]" 0.97732257843017578;
	setAttr ".wl[593].w[10]" 0.013456902643294577;
	setAttr -s 3 ".wl[594].w";
	setAttr ".wl[594].w[1]" 0.0096060048275816382;
	setAttr ".wl[594].w[9]" 0.97263932228088379;
	setAttr ".wl[594].w[10]" 0.017754672891534574;
	setAttr -s 3 ".wl[595].w";
	setAttr ".wl[595].w[1]" 0.0063634224295442202;
	setAttr ".wl[595].w[9]" 0.98066788911819458;
	setAttr ".wl[595].w[10]" 0.012968688452261198;
	setAttr -s 3 ".wl[596].w";
	setAttr ".wl[596].w[1]" 0.0065859193615406021;
	setAttr ".wl[596].w[9]" 0.98040300607681274;
	setAttr ".wl[596].w[10]" 0.013011074561646655;
	setAttr -s 3 ".wl[597].w";
	setAttr ".wl[597].w[1]" 0.0079505604585751125;
	setAttr ".wl[597].w[9]" 0.97680395841598511;
	setAttr ".wl[597].w[10]" 0.01524548112543978;
	setAttr -s 3 ".wl[598].w";
	setAttr ".wl[598].w[1]" 0.0091523112613392642;
	setAttr ".wl[598].w[9]" 0.97322481870651245;
	setAttr ".wl[598].w[10]" 0.017622870032148283;
	setAttr -s 3 ".wl[599].w";
	setAttr ".wl[599].w[1]" 0.0079046720768228759;
	setAttr ".wl[599].w[9]" 0.97359848022460938;
	setAttr ".wl[599].w[10]" 0.018496847698567749;
	setAttr -s 3 ".wl[600].w";
	setAttr ".wl[600].w[1]" 0.011500251149157566;
	setAttr ".wl[600].w[9]" 0.95518630743026733;
	setAttr ".wl[600].w[10]" 0.033313441420575102;
	setAttr -s 3 ".wl[601].w";
	setAttr ".wl[601].w[1]" 0.011838321180924686;
	setAttr ".wl[601].w[9]" 0.95145827531814575;
	setAttr ".wl[601].w[10]" 0.036703403500929564;
	setAttr -s 3 ".wl[602].w";
	setAttr ".wl[602].w[1]" 0.00087263126580556757;
	setAttr ".wl[602].w[9]" 0.0036958859422937976;
	setAttr ".wl[602].w[10]" 0.99543148279190063;
	setAttr -s 3 ".wl[603].w";
	setAttr ".wl[603].w[1]" 0.00062876572011212888;
	setAttr ".wl[603].w[9]" 0.002449337345378594;
	setAttr ".wl[603].w[10]" 0.99692189693450928;
	setAttr -s 3 ".wl[604].w";
	setAttr ".wl[604].w[1]" 0.00093023358577956346;
	setAttr ".wl[604].w[9]" 0.003217594039495095;
	setAttr ".wl[604].w[10]" 0.99585217237472534;
	setAttr -s 3 ".wl[605].w";
	setAttr ".wl[605].w[1]" 0.0015143293486357579;
	setAttr ".wl[605].w[9]" 0.0050416451348542328;
	setAttr ".wl[605].w[10]" 0.99344402551651001;
	setAttr -s 3 ".wl[606].w";
	setAttr ".wl[606].w[1]" 0.0014576587548000236;
	setAttr ".wl[606].w[9]" 0.0057762589583652598;
	setAttr ".wl[606].w[10]" 0.99276608228683472;
	setAttr -s 3 ".wl[607].w";
	setAttr ".wl[607].w[1]" 0.0025928386624750059;
	setAttr ".wl[607].w[9]" 0.010959946257263764;
	setAttr ".wl[607].w[10]" 0.98644721508026123;
	setAttr -s 3 ".wl[608].w";
	setAttr ".wl[608].w[1]" 0.0045481055337463919;
	setAttr ".wl[608].w[9]" 0.019481983844610543;
	setAttr ".wl[608].w[10]" 0.97596991062164307;
	setAttr -s 3 ".wl[609].w";
	setAttr ".wl[609].w[1]" 0.0018890362525573322;
	setAttr ".wl[609].w[9]" 0.007559790060461466;
	setAttr ".wl[609].w[10]" 0.9905511736869812;
	setAttr -s 3 ".wl[610].w";
	setAttr ".wl[610].w[1]" 0.0020221426275233456;
	setAttr ".wl[610].w[9]" 0.0082179353448887642;
	setAttr ".wl[610].w[10]" 0.98975992202758789;
	setAttr -s 3 ".wl[611].w";
	setAttr ".wl[611].w[1]" 0.0027656818460451409;
	setAttr ".wl[611].w[9]" 0.01052871693859231;
	setAttr ".wl[611].w[10]" 0.98670560121536255;
	setAttr -s 3 ".wl[612].w";
	setAttr ".wl[612].w[1]" 0.0016520388788631285;
	setAttr ".wl[612].w[9]" 0.0080229870610782784;
	setAttr ".wl[612].w[10]" 0.99032497406005859;
	setAttr -s 3 ".wl[613].w";
	setAttr ".wl[613].w[1]" 0.0026901520825160273;
	setAttr ".wl[613].w[9]" 0.018451317396091151;
	setAttr ".wl[613].w[10]" 0.97885853052139282;
	setAttr -s 3 ".wl[614].w";
	setAttr ".wl[614].w[1]" 0.0021941604033882669;
	setAttr ".wl[614].w[9]" 0.018094247399193519;
	setAttr ".wl[614].w[10]" 0.97971159219741821;
	setAttr -s 3 ".wl[615].w";
	setAttr ".wl[615].w[1]" 0.0018625185785185129;
	setAttr ".wl[615].w[9]" 0.012774713248263713;
	setAttr ".wl[615].w[10]" 0.98536276817321777;
	setAttr -s 3 ".wl[616].w";
	setAttr ".wl[616].w[1]" 0.0010786702259474546;
	setAttr ".wl[616].w[9]" 0.0052384684459275454;
	setAttr ".wl[616].w[10]" 0.993682861328125;
	setAttr -s 3 ".wl[617].w";
	setAttr ".wl[617].w[1]" 0.0020385223610505585;
	setAttr ".wl[617].w[9]" 0.0077604812400236594;
	setAttr ".wl[617].w[10]" 0.99020099639892578;
	setAttr -s 3 ".wl[618].w";
	setAttr ".wl[618].w[1]" 0.0017491538043370315;
	setAttr ".wl[618].w[9]" 0.0071085136417994429;
	setAttr ".wl[618].w[10]" 0.99114233255386353;
	setAttr -s 3 ".wl[619].w";
	setAttr ".wl[619].w[1]" 0.0022202155068128566;
	setAttr ".wl[619].w[9]" 0.0088851430938035984;
	setAttr ".wl[619].w[10]" 0.98889464139938354;
	setAttr -s 3 ".wl[620].w";
	setAttr ".wl[620].w[1]" 0.0072194278428614174;
	setAttr ".wl[620].w[9]" 0.030924683790439365;
	setAttr ".wl[620].w[10]" 0.96185588836669922;
	setAttr -s 3 ".wl[621].w";
	setAttr ".wl[621].w[1]" 0.0037618287153369147;
	setAttr ".wl[621].w[9]" 0.015901266758906251;
	setAttr ".wl[621].w[10]" 0.98033690452575684;
	setAttr -s 3 ".wl[622].w";
	setAttr ".wl[622].w[1]" 0.0013308637265665873;
	setAttr ".wl[622].w[9]" 0.0052738077517048973;
	setAttr ".wl[622].w[10]" 0.99339532852172852;
	setAttr -s 3 ".wl[623].w";
	setAttr ".wl[623].w[1]" 0.0012327650528664415;
	setAttr ".wl[623].w[9]" 0.0041042348403220351;
	setAttr ".wl[623].w[10]" 0.99466300010681152;
	setAttr -s 3 ".wl[624].w";
	setAttr ".wl[624].w[1]" 0.00054919202671499371;
	setAttr ".wl[624].w[9]" 0.0018996051992371549;
	setAttr ".wl[624].w[10]" 0.99755120277404785;
	setAttr -s 3 ".wl[625].w";
	setAttr ".wl[625].w[1]" 0.00025665895300143124;
	setAttr ".wl[625].w[9]" 0.00099980695886380303;
	setAttr ".wl[625].w[10]" 0.99874353408813477;
	setAttr -s 3 ".wl[626].w";
	setAttr ".wl[626].w[1]" 0.00218061416915015;
	setAttr ".wl[626].w[9]" 0.0068841198129360312;
	setAttr ".wl[626].w[10]" 0.99093526601791382;
	setAttr -s 3 ".wl[627].w";
	setAttr ".wl[627].w[1]" 0.002524849358496241;
	setAttr ".wl[627].w[9]" 0.0073924694624571286;
	setAttr ".wl[627].w[10]" 0.99008268117904663;
	setAttr -s 3 ".wl[628].w";
	setAttr ".wl[628].w[1]" 0.003054590085517307;
	setAttr ".wl[628].w[9]" 0.0081154991593252231;
	setAttr ".wl[628].w[10]" 0.98882991075515747;
	setAttr -s 3 ".wl[629].w";
	setAttr ".wl[629].w[1]" 0.0049623844992514312;
	setAttr ".wl[629].w[9]" 0.011617243491471226;
	setAttr ".wl[629].w[10]" 0.98342037200927734;
	setAttr -s 3 ".wl[630].w";
	setAttr ".wl[630].w[1]" 0.0061691416398803453;
	setAttr ".wl[630].w[9]" 0.016984342227764918;
	setAttr ".wl[630].w[10]" 0.97684651613235474;
	setAttr -s 3 ".wl[631].w";
	setAttr ".wl[631].w[1]" 0.010719983275049583;
	setAttr ".wl[631].w[9]" 0.030797870461827862;
	setAttr ".wl[631].w[10]" 0.95848214626312256;
	setAttr -s 3 ".wl[632].w";
	setAttr ".wl[632].w[1]" 0.016271794943657499;
	setAttr ".wl[632].w[9]" 0.047080849499854471;
	setAttr ".wl[632].w[10]" 0.93664735555648804;
	setAttr -s 3 ".wl[633].w";
	setAttr ".wl[633].w[1]" 0.0067719646948089735;
	setAttr ".wl[633].w[9]" 0.018624859188247668;
	setAttr ".wl[633].w[10]" 0.97460317611694336;
	setAttr -s 3 ".wl[634].w";
	setAttr ".wl[634].w[1]" 0.0076540335704962364;
	setAttr ".wl[634].w[9]" 0.041764330118894577;
	setAttr ".wl[634].w[10]" 0.95058163631060921;
	setAttr -s 3 ".wl[635].w";
	setAttr ".wl[635].w[1]" 0.010070705218582056;
	setAttr ".wl[635].w[9]" 0.079453393816947937;
	setAttr ".wl[635].w[10]" 0.91047590096446995;
	setAttr -s 3 ".wl[636].w";
	setAttr ".wl[636].w[1]" 0.0079415059893882482;
	setAttr ".wl[636].w[9]" 0.09504883736371994;
	setAttr ".wl[636].w[10]" 0.89700965664689181;
	setAttr -s 3 ".wl[637].w";
	setAttr ".wl[637].w[1]" 0.0060720472487408271;
	setAttr ".wl[637].w[9]" 0.13862878084182739;
	setAttr ".wl[637].w[10]" 0.85529917190943183;
	setAttr -s 3 ".wl[638].w";
	setAttr ".wl[638].w[1]" 0.0091513267715968832;
	setAttr ".wl[638].w[9]" 0.1202026903629303;
	setAttr ".wl[638].w[10]" 0.87064598286547279;
	setAttr -s 3 ".wl[639].w";
	setAttr ".wl[639].w[1]" 0.0084422355712499147;
	setAttr ".wl[639].w[9]" 0.051560737192630768;
	setAttr ".wl[639].w[10]" 0.93999702723611933;
	setAttr -s 3 ".wl[640].w";
	setAttr ".wl[640].w[1]" 0.0041915721743520755;
	setAttr ".wl[640].w[9]" 0.013915246024805638;
	setAttr ".wl[640].w[10]" 0.98189318180084229;
	setAttr -s 3 ".wl[641].w";
	setAttr ".wl[641].w[1]" 0.0069737188695683221;
	setAttr ".wl[641].w[9]" 0.01905777527105668;
	setAttr ".wl[641].w[10]" 0.973968505859375;
	setAttr -s 3 ".wl[642].w";
	setAttr ".wl[642].w[1]" 0.006146180361049974;
	setAttr ".wl[642].w[9]" 0.017394197255832348;
	setAttr ".wl[642].w[10]" 0.97645962238311768;
	setAttr -s 3 ".wl[643].w";
	setAttr ".wl[643].w[1]" 0.0068800721194998433;
	setAttr ".wl[643].w[9]" 0.018922182557319006;
	setAttr ".wl[643].w[10]" 0.97419774532318115;
	setAttr -s 3 ".wl[644].w";
	setAttr ".wl[644].w[1]" 0.0163526026933851;
	setAttr ".wl[644].w[9]" 0.047314635065251374;
	setAttr ".wl[644].w[10]" 0.93633276224136353;
	setAttr -s 3 ".wl[645].w";
	setAttr ".wl[645].w[1]" 0.01176832653985809;
	setAttr ".wl[645].w[9]" 0.033809676389829409;
	setAttr ".wl[645].w[10]" 0.9544219970703125;
	setAttr -s 3 ".wl[646].w";
	setAttr ".wl[646].w[1]" 0.0082216058603821664;
	setAttr ".wl[646].w[9]" 0.022635003484100257;
	setAttr ".wl[646].w[10]" 0.96914339065551758;
	setAttr -s 3 ".wl[647].w";
	setAttr ".wl[647].w[1]" 0.0042731173963162722;
	setAttr ".wl[647].w[9]" 0.010003625538864393;
	setAttr ".wl[647].w[10]" 0.98572325706481934;
	setAttr -s 3 ".wl[648].w";
	setAttr ".wl[648].w[1]" 0.0020786857614691172;
	setAttr ".wl[648].w[9]" 0.0055226945867364492;
	setAttr ".wl[648].w[10]" 0.99239861965179443;
	setAttr -s 3 ".wl[649].w";
	setAttr ".wl[649].w[1]" 0.0011924159145279346;
	setAttr ".wl[649].w[9]" 0.0034912574672774856;
	setAttr ".wl[649].w[10]" 0.99531632661819458;
	setAttr -s 3 ".wl[650].w";
	setAttr ".wl[650].w[1]" 0.014877601106868945;
	setAttr ".wl[650].w[9]" 0.9822356104850769;
	setAttr ".wl[650].w[10]" 0.002886788408054152;
	setAttr -s 3 ".wl[651].w";
	setAttr ".wl[651].w[1]" 0.01184100725271171;
	setAttr ".wl[651].w[9]" 0.98385179042816162;
	setAttr ".wl[651].w[10]" 0.0043072023191266674;
	setAttr -s 3 ".wl[652].w";
	setAttr ".wl[652].w[1]" 0.0094710559941929371;
	setAttr ".wl[652].w[9]" 0.98604893684387207;
	setAttr ".wl[652].w[10]" 0.0044800071619349917;
	setAttr -s 3 ".wl[653].w";
	setAttr ".wl[653].w[1]" 0.0093199448517470689;
	setAttr ".wl[653].w[9]" 0.98566818237304688;
	setAttr ".wl[653].w[10]" 0.0050118727752060561;
	setAttr -s 3 ".wl[654].w";
	setAttr ".wl[654].w[1]" 0.0048712780998064129;
	setAttr ".wl[654].w[9]" 0.99265784025192261;
	setAttr ".wl[654].w[10]" 0.0024708816482709793;
	setAttr -s 3 ".wl[655].w";
	setAttr ".wl[655].w[1]" 0.0050590829194311531;
	setAttr ".wl[655].w[9]" 0.99270069599151611;
	setAttr ".wl[655].w[10]" 0.0022402210890527341;
	setAttr -s 3 ".wl[656].w";
	setAttr ".wl[656].w[1]" 0.0077757333567822556;
	setAttr ".wl[656].w[9]" 0.98914813995361328;
	setAttr ".wl[656].w[10]" 0.0030761266896044627;
	setAttr -s 3 ".wl[657].w";
	setAttr ".wl[657].w[1]" 0.0074882561200091628;
	setAttr ".wl[657].w[9]" 0.98973917961120605;
	setAttr ".wl[657].w[10]" 0.002772564268784783;
	setAttr -s 3 ".wl[658].w";
	setAttr ".wl[658].w[1]" 0.0092895437808074473;
	setAttr ".wl[658].w[9]" 0.98750323057174683;
	setAttr ".wl[658].w[10]" 0.0032072256474457266;
	setAttr -s 3 ".wl[659].w";
	setAttr ".wl[659].w[1]" 0.0084066509641893047;
	setAttr ".wl[659].w[9]" 0.98937100172042847;
	setAttr ".wl[659].w[10]" 0.0022223473153822281;
	setAttr -s 3 ".wl[660].w";
	setAttr ".wl[660].w[1]" 0.0090838811363449755;
	setAttr ".wl[660].w[9]" 0.98940449953079224;
	setAttr ".wl[660].w[10]" 0.0015116193328627884;
	setAttr -s 3 ".wl[661].w";
	setAttr ".wl[661].w[1]" 0.0050707569941190753;
	setAttr ".wl[661].w[9]" 0.99443608522415161;
	setAttr ".wl[661].w[10]" 0.00049315778172931326;
	setAttr -s 3 ".wl[662].w";
	setAttr ".wl[662].w[1]" 0.0056048614712529733;
	setAttr ".wl[662].w[9]" 0.99436837434768677;
	setAttr ".wl[662].w[10]" 2.6764181060259498e-005;
	setAttr -s 3 ".wl[663].w";
	setAttr ".wl[663].w[1]" 0.0042799094510914968;
	setAttr ".wl[663].w[9]" 0.99569481611251831;
	setAttr ".wl[663].w[10]" 2.5274436390192407e-005;
	setAttr -s 3 ".wl[664].w";
	setAttr ".wl[664].w[1]" 0.0057271824341387605;
	setAttr ".wl[664].w[9]" 0.99423414468765259;
	setAttr ".wl[664].w[10]" 3.867287820865134e-005;
	setAttr -s 3 ".wl[665].w";
	setAttr ".wl[665].w[1]" 0.007824882520537365;
	setAttr ".wl[665].w[9]" 0.99212890863418579;
	setAttr ".wl[665].w[10]" 4.6208845276843707e-005;
	setAttr -s 3 ".wl[666].w";
	setAttr ".wl[666].w[1]" 0.0079259288525235401;
	setAttr ".wl[666].w[9]" 0.99203622341156006;
	setAttr ".wl[666].w[10]" 3.784773591640196e-005;
	setAttr -s 3 ".wl[667].w";
	setAttr ".wl[667].w[1]" 0.0074021859304738997;
	setAttr ".wl[667].w[9]" 0.99256598949432373;
	setAttr ".wl[667].w[10]" 3.1824575202370115e-005;
	setAttr -s 3 ".wl[668].w";
	setAttr ".wl[668].w[1]" 0.0070708705428781634;
	setAttr ".wl[668].w[9]" 0.99289536476135254;
	setAttr ".wl[668].w[10]" 3.3764695769297601e-005;
	setAttr -s 3 ".wl[669].w";
	setAttr ".wl[669].w[1]" 0.0041000713212513626;
	setAttr ".wl[669].w[9]" 0.99587571620941162;
	setAttr ".wl[669].w[10]" 2.4212469337016538e-005;
	setAttr -s 3 ".wl[670].w";
	setAttr ".wl[670].w[1]" 0.0045327834981894943;
	setAttr ".wl[670].w[9]" 0.99543660879135132;
	setAttr ".wl[670].w[10]" 3.0607710459187039e-005;
	setAttr -s 3 ".wl[671].w";
	setAttr ".wl[671].w[1]" 0.0043914860732871029;
	setAttr ".wl[671].w[9]" 0.99558258056640625;
	setAttr ".wl[671].w[10]" 2.5933360306646763e-005;
	setAttr -s 3 ".wl[672].w";
	setAttr ".wl[672].w[1]" 0.0087961142534181309;
	setAttr ".wl[672].w[9]" 0.99116188287734985;
	setAttr ".wl[672].w[10]" 4.2002869232016147e-005;
	setAttr -s 3 ".wl[673].w";
	setAttr ".wl[673].w[1]" 0.0078172082466715139;
	setAttr ".wl[673].w[9]" 0.99177491664886475;
	setAttr ".wl[673].w[10]" 0.00040787510446374059;
	setAttr -s 3 ".wl[674].w[0:2]"  0.045469349193955122 0.76712339070486457 
		0.1874072601011802;
	setAttr -s 3 ".wl[675].w[0:2]"  0.046573810018493762 0.76279868973337706 
		0.19062750024812913;
	setAttr -s 3 ".wl[676].w[0:2]"  0.04715914476014918 0.76048659318755107 
		0.19235426205229977;
	setAttr -s 3 ".wl[677].w[0:2]"  0.046573803169204411 0.76279871323180004 
		0.19062748359899559;
	setAttr -s 3 ".wl[678].w[0:2]"  0.045469326321142756 0.76712347016233529 
		0.18740720351652196;
	setAttr -s 3 ".wl[679].w[0:2]"  0.04492189850171828 0.76931196420642178 
		0.18576613729185995;
	setAttr -s 3 ".wl[680].w[0:2]"  0.045469314533088605 0.76712351111266264 
		0.18740717435424875;
	setAttr -s 3 ".wl[681].w[0:2]"  0.04657384406749026 0.76279889576551352 
		0.19062726016699627;
	setAttr -s 3 ".wl[682].w[0:2]"  0.047159108768905771 0.76048671585691174 
		0.19235417537418253;
	setAttr -s 3 ".wl[683].w[0:2]"  0.046573773571205845 0.76279881477612044 
		0.19062741165267374;
	setAttr -s 3 ".wl[684].w[0:2]"  0.04546930057067166 0.76712355961648049 
		0.18740713981284793;
	setAttr -s 3 ".wl[685].w[0:2]"  0.044921881733620543 0.76931202281838995 
		0.1857660954479895;
	setAttr -s 3 ".wl[686].w[0:2]"  0.045469255015063582 0.76712339615810521 
		0.18740734882683113;
	setAttr -s 3 ".wl[687].w[0:2]"  0.046573740815139132 0.7627986043082019 
		0.19062765487665898;
	setAttr -s 3 ".wl[688].w[0:2]"  0.047159021491833916 0.76048636652092638 
		0.19235461198723969;
	setAttr -s 3 ".wl[689].w[0:2]"  0.04657369345257336 0.7627984439519917 
		0.19062786259543493;
	setAttr -s 3 ".wl[690].w[0:2]"  0.045469122942374984 0.76712288982320298 
		0.18740798723442209;
	setAttr -s 3 ".wl[691].w[0:2]"  0.044921825175003587 0.76931157837384301 
		0.18576659645115348;
	setAttr -s 3 ".wl[692].w[0:2]"  0.045469126626532679 0.76712287702482673 
		0.18740799634864055;
	setAttr -s 3 ".wl[693].w[0:2]"  0.04657371191007896 0.76279838062820093 
		0.19062790746172012;
	setAttr -s 3 ".wl[694].w[0:2]"  0.047159057483004363 0.76048624385164654 
		0.19235469866534899;
	setAttr -s 3 ".wl[695].w[0:2]"  0.046573772971228805 0.76279849398756283 
		0.19062773304120839;
	setAttr -s 3 ".wl[696].w[0:2]"  0.045469303638297494 0.76712322724653204 
		0.18740746911517051;
	setAttr -s 3 ".wl[697].w[0:2]"  0.044921932037916078 0.76931184698251187 
		0.18576622097957204;
	setAttr -s 3 ".wl[698].w[1:3]"  0.20219004311161842 0.79064063172068777 
		0.0071693251676938803;
	setAttr -s 3 ".wl[699].w[1:3]"  0.20072309149830467 0.79221950091769255 
		0.0070574075840027888;
	setAttr -s 3 ".wl[700].w[1:3]"  0.2021902092563449 0.79064047380083846 
		0.0071693169428167199;
	setAttr -s 3 ".wl[701].w[1:3]"  0.20509479190580485 0.78750770962260053 
		0.0073974984715946745;
	setAttr -s 3 ".wl[702].w[1:3]"  0.20664296218494052 0.78583640800833521 
		0.0075206298067242829;
	setAttr -s 3 ".wl[703].w[1:3]"  0.20509475168178998 0.7875077528652511 
		0.0073974954529590102;
	setAttr -s 3 ".wl[704].w[1:3]"  0.20219015007592503 0.79064053730039496 
		0.007169312623680109;
	setAttr -s 3 ".wl[705].w[1:3]"  0.20072297674062986 0.79221962393527767 
		0.0070573993240924384;
	setAttr -s 3 ".wl[706].w[1:3]"  0.20219015912271582 0.79064052759334658 
		0.0071693132839376192;
	setAttr -s 3 ".wl[707].w[1:3]"  0.2050947161414452 0.78750779107274171 
		0.0073974927858131284;
	setAttr -s 3 ".wl[708].w[1:3]"  0.2066428666067486 0.78583651086620498 
		0.0075206225270464441;
	setAttr -s 3 ".wl[709].w[1:3]"  0.20509429645645794 0.78750820032929303 
		0.0073975032142490392;
	setAttr -s 3 ".wl[710].w[1:3]"  0.20219007711624915 0.7906406155848491 
		0.0071693072989017287;
	setAttr -s 3 ".wl[711].w[1:3]"  0.20072297674062661 0.79221962393528123 
		0.0070573993240922069;
	setAttr -s 3 ".wl[712].w[1:3]"  0.20218995501824782 0.79064072624334214 
		0.007169318738410071;
	setAttr -s 3 ".wl[713].w[1:3]"  0.20509398352778979 0.78750849481793461 
		0.0073975216542756655;
	setAttr -s 3 ".wl[714].w[1:3]"  0.20664256773441578 0.78583678991850425 
		0.0075206423470799586;
	setAttr -s 3 ".wl[715].w[1:3]"  0.20509399849702534 0.78750847872531948 
		0.0073975227776552433;
	setAttr -s 3 ".wl[716].w[1:3]"  0.20218944728723348 0.79064120997826159 
		0.0071693427345049798;
	setAttr -s 3 ".wl[717].w[1:3]"  0.20072250201526753 0.79222007268063521 
		0.0070574253040972673;
	setAttr -s 3 ".wl[718].w[1:3]"  0.20218946026377652 0.79064119605465355 
		0.0071693436815699714;
	setAttr -s 3 ".wl[719].w[1:3]"  0.2050940788102292 0.78750839238493719 
		0.0073975288048336264;
	setAttr -s 3 ".wl[720].w[1:3]"  0.20664261552348542 0.78583673848958879 
		0.0075206459869258356;
	setAttr -s 3 ".wl[721].w[1:3]"  0.20509445945846819 0.78750802509467532 
		0.007397515446856546;
	setAttr -s 3 ".wl[722].w[1:3]"  0.008408589105248802 0.81474754022700024 
		0.17684387066775104;
	setAttr -s 3 ".wl[723].w[1:3]"  0.008284954656180862 0.81632422273176941 
		0.17539082261204977;
	setAttr -s 3 ".wl[724].w[1:3]"  0.0084085872998564161 0.81474756263357029 
		0.17684385006657327;
	setAttr -s 3 ".wl[725].w[1:3]"  0.0086595693180988881 0.81161395159533511 
		0.17972647908656594;
	setAttr -s 3 ".wl[726].w[1:3]"  0.0087954635615059736 0.80993490844155125 
		0.18126962799694282;
	setAttr -s 3 ".wl[727].w[1:3]"  0.0086595663113823596 0.81161398813161112 
		0.17972644555700656;
	setAttr -s 3 ".wl[728].w[1:3]"  0.008408582147358689 0.81474762658079702 
		0.17684379127184427;
	setAttr -s 3 ".wl[729].w[1:3]"  0.0082849450464173163 0.81632434326019832 
		0.17539071169338441;
	setAttr -s 3 ".wl[730].w[1:3]"  0.0084085793103141626 0.814747661791136 
		0.17684375889854992;
	setAttr -s 3 ".wl[731].w[1:3]"  0.0086595598214721809 0.81161406699413141 
		0.17972637318439644;
	setAttr -s 3 ".wl[732].w[1:3]"  0.0087954551238933771 0.80993500982297828 
		0.18126953505312837;
	setAttr -s 3 ".wl[733].w[1:3]"  0.0086595367909494212 0.81161357700775227 
		0.17972688620129826;
	setAttr -s 3 ".wl[734].w[1:3]"  0.0084085762182399392 0.81474770016663833 
		0.17684372361512174;
	setAttr -s 3 ".wl[735].w[1:3]"  0.0082849450464170041 0.8163243432602022 
		0.17539071169338086;
	setAttr -s 3 ".wl[736].w[1:3]"  0.0084085738231567293 0.81474747454619223 
		0.17684395163065098;
	setAttr -s 3 ".wl[737].w[1:3]"  0.0086595232360115529 0.81161322849218742 
		0.17972724827180109;
	setAttr -s 3 ".wl[738].w[1:3]"  0.0087954370556081064 0.80993445513642826 
		0.1812701078079636;
	setAttr -s 3 ".wl[739].w[1:3]"  0.0086595199644708704 0.81161301163152744 
		0.17972746840400167;
	setAttr -s 3 ".wl[740].w[1:3]"  0.0084085606537110478 0.81474712729963761 
		0.17684431204665138;
	setAttr -s 3 ".wl[741].w[1:3]"  0.0082849378559450067 0.81632392410375576 
		0.17539113804029929;
	setAttr -s 3 ".wl[742].w[1:3]"  0.008408562974923298 0.81474709849117077 
		0.17684433853390588;
	setAttr -s 3 ".wl[743].w[1:3]"  0.0086595264543474614 0.81161293276897017 
		0.17972754077668238;
	setAttr -s 3 ".wl[744].w[1:3]"  0.0087954426806693322 0.80993438754879254 
		0.18127016977053809;
	setAttr -s 3 ".wl[745].w[1:3]"  0.0086595489856274611 0.81161342882299292 
		0.17972702219137954;
	setAttr -s 3 ".wl[746].w[2:4]"  0.18965943381575862 0.80332696013475435 
		0.0070136060494871153;
	setAttr -s 3 ".wl[747].w[2:4]"  0.18823247267626578 0.80485703056802194 
		0.0069104967557122622;
	setAttr -s 3 ".wl[748].w[2:4]"  0.18965950497173739 0.8033268933798442 
		0.0070136016484182552;
	setAttr -s 3 ".wl[749].w[2:4]"  0.19249583706925555 0.8002810755027816 
		0.0072230874279628869;
	setAttr -s 3 ".wl[750].w[2:4]"  0.19400931799591753 0.79865396580282777 
		0.0073367162012546276;
	setAttr -s 3 ".wl[751].w[2:4]"  0.19249581663808671 0.80028109744927201 
		0.0072230859126412878;
	setAttr -s 3 ".wl[752].w[2:4]"  0.18965946544396456 0.80332693576770897 
		0.007013598788326485;
	setAttr -s 3 ".wl[753].w[2:4]"  0.1882326043596772 0.80485691772074719 
		0.00691047791957561;
	setAttr -s 3 ".wl[754].w[2:4]"  0.18965943261467402 0.80332697097241179 
		0.0070135964129142787;
	setAttr -s 3 ".wl[755].w[2:4]"  0.19249583824875241 0.80028108405675202 
		0.0072230776944956429;
	setAttr -s 3 ".wl[756].w[2:4]"  0.1940092395547362 0.79865405013920798 
		0.0073367103060556658;
	setAttr -s 3 ".wl[757].w[2:4]"  0.1924956325219794 0.80028128539979615 
		0.0072230820782244283;
	setAttr -s 3 ".wl[758].w[2:4]"  0.18965941993615595 0.80332698456830254 
		0.007013595495541391;
	setAttr -s 3 ".wl[759].w[2:4]"  0.18823233755305877 0.8048571753485555 
		0.0069104870983857265;
	setAttr -s 3 ".wl[760].w[2:4]"  0.18965925822513566 0.80332713888084284 
		0.0070136028940215537;
	setAttr -s 3 ".wl[761].w[2:4]"  0.19249557706918391 0.80028133514442112 
		0.0072230877863949721;
	setAttr -s 3 ".wl[762].w[2:4]"  0.19400892898245933 0.79865434418064996 
		0.007336726836890726;
	setAttr -s 3 ".wl[763].w[2:4]"  0.19249561442144753 0.80028129502184497 
		0.0072230905567076112;
	setAttr -s 3 ".wl[764].w[2:4]"  0.18965887854794988 0.80332749828183359 
		0.007013623170216433;
	setAttr -s 3 ".wl[765].w[2:4]"  0.18823227228480449 0.80485722644981816 
		0.0069105012653773645;
	setAttr -s 3 ".wl[766].w[2:4]"  0.18965890540825348 0.80332746947800449 
		0.0070136251137420478;
	setAttr -s 3 ".wl[767].w[2:4]"  0.1924956255878735 0.80028127320627684 
		0.0072231012058496715;
	setAttr -s 3 ".wl[768].w[2:4]"  0.19400909683280737 0.79865417368352465 
		0.007336729483667882;
	setAttr -s 3 ".wl[769].w[2:4]"  0.19249565390399298 0.80028125261098881 
		0.0072230934850182373;
	setAttr -s 3 ".wl[770].w[2:4]"  0.0071185476923005704 0.80478183209613718 
		0.18809962021156215;
	setAttr -s 3 ".wl[771].w[2:4]"  0.0070148056896444004 0.80630804754772334 
		0.18667714676263222;
	setAttr -s 3 ".wl[772].w[2:4]"  0.0071185503141976848 0.80478195777435424 
		0.18809949191144812;
	setAttr -s 3 ".wl[773].w[2:4]"  0.0073290579326443332 0.80173923742330477 
		0.19093170464405093;
	setAttr -s 3 ".wl[774].w[2:4]"  0.007443357450553599 0.80011366612972579 
		0.19244297641972066;
	setAttr -s 3 ".wl[775].w[2:4]"  0.0073290567839865896 0.80173928672506489 
		0.19093165649094862;
	setAttr -s 3 ".wl[776].w[2:4]"  0.0071185475139712816 0.80478206423854048 
		0.18809938824748826;
	setAttr -s 3 ".wl[777].w[2:4]"  0.00701480296367556 0.80630831690325855 
		0.18667688013306594;
	setAttr -s 3 ".wl[778].w[2:4]"  0.0071185449987352578 0.8047821009595143 
		0.18809935404175052;
	setAttr -s 3 ".wl[779].w[2:4]"  0.0073290539534104776 0.80173936003365787 
		0.19093158601293164;
	setAttr -s 3 ".wl[780].w[2:4]"  0.0074433526747771624 0.80011373347800951 
		0.19244291384721329;
	setAttr -s 3 ".wl[781].w[2:4]"  0.0073290488517916887 0.80173936703873894 
		0.19093158410946948;
	setAttr -s 3 ".wl[782].w[2:4]"  0.0071185392270002356 0.80478205405845615 
		0.18809940671454359;
	setAttr -s 3 ".wl[783].w[2:4]"  0.007014793579693381 0.80630812816368447 
		0.18667707825662219;
	setAttr -s 3 ".wl[784].w[2:4]"  0.0071185358182709524 0.8047819070763147 
		0.18809955710541434;
	setAttr -s 3 ".wl[785].w[2:4]"  0.0073290457597587422 0.80173914792148171 
		0.19093180631875947;
	setAttr -s 3 ".wl[786].w[2:4]"  0.0074433476578258636 0.80011350755385835 
		0.19244314478831584;
	setAttr -s 3 ".wl[787].w[2:4]"  0.0073290449016392319 0.80173902854409929 
		0.1909319265542615;
	setAttr -s 3 ".wl[788].w[2:4]"  0.0071185254609791859 0.80478143525223056 
		0.18810003928679031;
	setAttr -s 3 ".wl[789].w[2:4]"  0.0070147894076649318 0.80630760063268569 
		0.18667760995964927;
	setAttr -s 3 ".wl[790].w[2:4]"  0.0071185318248525023 0.80478137513445636 
		0.18810009304069122;
	setAttr -s 3 ".wl[791].w[2:4]"  0.007329051213554213 0.80173890554452254 
		0.1909320432419232;
	setAttr -s 3 ".wl[792].w[2:4]"  0.0074433524335980978 0.8001134402055774 
		0.19244320736082449;
	setAttr -s 3 ".wl[793].w[2:4]"  0.0073290529741034897 0.80173904494755066 
		0.19093190207834587;
	setAttr -s 3 ".wl[794].w[3:5]"  0.19570486886852068 0.79616719392367019 
		0.0081279372078090998;
	setAttr -s 3 ".wl[795].w[3:5]"  0.19427707019469748 0.79771206828626073 
		0.0080108615190418227;
	setAttr -s 3 ".wl[796].w[3:5]"  0.19570494036453268 0.79616712796154254 
		0.0081279316739247751;
	setAttr -s 3 ".wl[797].w[3:5]"  0.19854557041837881 0.79308899667950472 
		0.0083654329021164171;
	setAttr -s 3 ".wl[798].w[3:5]"  0.20006017446555771 0.79144548587770913 
		0.0084943396567331696;
	setAttr -s 3 ".wl[799].w[3:5]"  0.1985455456090939 0.79308902947396831 
		0.0083654249169377599;
	setAttr -s 3 ".wl[800].w[3:5]"  0.19570492756741806 0.79616714754031981 
		0.0081279248922621269;
	setAttr -s 3 ".wl[801].w[3:5]"  0.19427707118742021 0.79771207850234416 
		0.0080108503102356149;
	setAttr -s 3 ".wl[802].w[3:5]"  0.19570491466958662 0.79616716150481215 
		0.0081279238256012788;
	setAttr -s 3 ".wl[803].w[3:5]"  0.19854544617862149 0.79308912851011426 
		0.0083654253112643052;
	setAttr -s 3 ".wl[804].w[3:5]"  0.20005998712724424 0.79144567140416955 
		0.0084943414685861619;
	setAttr -s 3 ".wl[805].w[3:5]"  0.19854538731010735 0.79308918942791384 
		0.0083654232619787983;
	setAttr -s 3 ".wl[806].w[3:5]"  0.19570480989250688 0.79616726922371073 
		0.0081279208837823601;
	setAttr -s 3 ".wl[807].w[3:5]"  0.1942769095792681 0.79771223919934231 
		0.0080108512213895328;
	setAttr -s 3 ".wl[808].w[3:5]"  0.19570461944080608 0.79616744967094932 
		0.0081279308882445597;
	setAttr -s 3 ".wl[809].w[3:5]"  0.19854493955944424 0.79308961337292483 
		0.0083654470676309666;
	setAttr -s 3 ".wl[810].w[3:5]"  0.20005964692437569 0.7914459930857648 
		0.0084943599898594426;
	setAttr -s 3 ".wl[811].w[3:5]"  0.1985448172261694 0.79308972548920842 
		0.0083654572846222821;
	setAttr -s 3 ".wl[812].w[3:5]"  0.19570431069315417 0.79616773816566266 
		0.0081279511411832192;
	setAttr -s 3 ".wl[813].w[3:5]"  0.19427665335492983 0.79771246837170662 
		0.0080108782733635791;
	setAttr -s 3 ".wl[814].w[3:5]"  0.19570432003290339 0.79616771946849318 
		0.0081279604986035352;
	setAttr -s 3 ".wl[815].w[3:5]"  0.19854486446137115 0.79308967719087464 
		0.0083654583477542309;
	setAttr -s 3 ".wl[816].w[3:5]"  0.20005971067058667 0.7914459238636834 
		0.0084943654657299635;
	setAttr -s 3 ".wl[817].w[3:5]"  0.19854503143121985 0.79308951371309167 
		0.008365454855688504;
	setAttr -s 3 ".wl[818].w[3:5]"  0.0063774877420815926 0.79109163489331236 
		0.20253087736460615;
	setAttr -s 3 ".wl[819].w[3:5]"  0.0062835236742351868 0.79262722709865385 
		0.20108924922711097;
	setAttr -s 3 ".wl[820].w[3:5]"  0.0063774892888462413 0.79109175506107721 
		0.20253075565007655;
	setAttr -s 3 ".wl[821].w[3:5]"  0.0065683937463086439 0.78803738862014605 
		0.20539421763354529;
	setAttr -s 3 ".wl[822].w[3:5]"  0.0066719738825547856 0.78640769151437651 
		0.20692033460306877;
	setAttr -s 3 ".wl[823].w[3:5]"  0.0065683891200117375 0.78803746230889515 
		0.20539414857109303;
	setAttr -s 3 ".wl[824].w[3:5]"  0.0063774834961952027 0.7910918496274989 
		0.20253066687630597;
	setAttr -s 3 ".wl[825].w[3:5]"  0.0062835233779356134 0.7926275225188173 
		0.20108895410324712;
	setAttr -s 3 ".wl[826].w[3:5]"  0.0063774814080565416 0.79109188371688222 
		0.20253063487506132;
	setAttr -s 3 ".wl[827].w[3:5]"  0.0065683870204644862 0.7880374957509938 
		0.2053941172285417;
	setAttr -s 3 ".wl[828].w[3:5]"  0.0066719607454433141 0.78640760637959772 
		0.20692043287495898;
	setAttr -s 3 ".wl[829].w[3:5]"  0.0065683858829929742 0.78803751386892007 
		0.20539410024808699;
	setAttr -s 3 ".wl[830].w[3:5]"  0.0063774805209846309 0.79109189819855463 
		0.20253062128046068;
	setAttr -s 3 ".wl[831].w[3:5]"  0.0062835202655956435 0.79262757395717465 
		0.20108890577722974;
	setAttr -s 3 ".wl[832].w[3:5]"  0.0063774753393256705 0.79109169195234508 
		0.20253083270832928;
	setAttr -s 3 ".wl[833].w[3:5]"  0.0065683751087668458 0.78803710269966953 
		0.20539452219156362;
	setAttr -s 3 ".wl[834].w[3:5]"  0.0066719475679107723 0.78640693857674127 
		0.206921113855348;
	setAttr -s 3 ".wl[835].w[3:5]"  0.0065683719965956028 0.78803686087898728 
		0.20539476712441698;
	setAttr -s 3 ".wl[836].w[3:5]"  0.0063774710107161892 0.79109132636054746 
		0.20253120262873636;
	setAttr -s 3 ".wl[837].w[3:5]"  0.0062835236742353751 0.79262722709865097 
		0.20108924922711366;
	setAttr -s 3 ".wl[838].w[3:5]"  0.0063774668731284047 0.79109110306928254 
		0.20253143005758908;
	setAttr -s 3 ".wl[839].w[3:5]"  0.0065683760428582455 0.78803679642898483 
		0.20539482752815691;
	setAttr -s 3 ".wl[840].w[3:5]"  0.0066719532708894996 0.78640684892510504 
		0.20692119780400547;
	setAttr -s 3 ".wl[841].w[3:5]"  0.0065683828079598685 0.78803698006486878 
		0.20539463712717124;
	setAttr -s 3 ".wl[842].w[4:6]"  0.14598788448321529 0.84870489915542524 
		0.0053072163613595378;
	setAttr -s 3 ".wl[843].w[4:6]"  0.14461842418417195 0.85015579828757371 
		0.005225777528254357;
	setAttr -s 3 ".wl[844].w[4:6]"  0.14598801942278478 0.84870477059168292 
		0.0053072099855322481;
	setAttr -s 3 ".wl[845].w[4:6]"  0.14871488224474083 0.84581244873405459 
		0.00547266902120462;
	setAttr -s 3 ".wl[846].w[4:6]"  0.15017774480945159 0.84425984360262185 
		0.0055624115879265683;
	setAttr -s 3 ".wl[847].w[4:6]"  0.14871482820444076 0.84581250614033443 
		0.0054726656552248794;
	setAttr -s 3 ".wl[848].w[4:6]"  0.14598795799430622 0.84870483576786881 
		0.0053072062378250072;
	setAttr -s 3 ".wl[849].w[4:6]"  0.14461844292866244 0.85015579280407461 
		0.0052257642672629565;
	setAttr -s 3 ".wl[850].w[4:6]"  0.14598792487991802 0.8487048709025411 
		0.0053072042175407756;
	setAttr -s 3 ".wl[851].w[4:6]"  0.14871476831190317 0.84581256976336516 
		0.0054726619247315554;
	setAttr -s 3 ".wl[852].w[4:6]"  0.15017769470865572 0.84425989685877667 
		0.0055624084325675664;
	setAttr -s 3 ".wl[853].w[4:6]"  0.14871443989398969 0.84581288854650227 
		0.0054726715595079904;
	setAttr -s 3 ".wl[854].w[4:6]"  0.14598790834013695 0.8487048884514018 
		0.0053072032084612092;
	setAttr -s 3 ".wl[855].w[4:6]"  0.1446181207366054 0.85015610566567945 
		0.0052257735977151937;
	setAttr -s 3 ".wl[856].w[4:6]"  0.14598776236250474 0.84870502872664244 
		0.0053072089108528366;
	setAttr -s 3 ".wl[857].w[4:6]"  0.14871446385098575 0.8458128630973063 
		0.0054726730517079668;
	setAttr -s 3 ".wl[858].w[4:6]"  0.15017725386008229 0.8442603196253754 
		0.0055624265145423207;
	setAttr -s 3 ".wl[859].w[4:6]"  0.14871438726337768 0.84581292940988773 
		0.0054726833267346453;
	setAttr -s 3 ".wl[860].w[4:6]"  0.14598767150595271 0.84870511051790032 
		0.0053072179761470516;
	setAttr -s 3 ".wl[861].w[4:6]"  0.14461805454182208 0.85015616146470996 
		0.0052257839934680295;
	setAttr -s 3 ".wl[862].w[4:6]"  0.14598753972044476 0.84870523573516354 
		0.0053072245443916838;
	setAttr -s 3 ".wl[863].w[4:6]"  0.14871444715581233 0.84581286578694781 
		0.0054726870572399467;
	setAttr -s 3 ".wl[864].w[4:6]"  0.15017735406151658 0.84426021311320376 
		0.0055624328252797221;
	setAttr -s 3 ".wl[865].w[4:6]"  0.1487145981745536 0.84581272040717415 
		0.0054726814182723136;
	setAttr -s 3 ".wl[866].w[4:6]"  0.0041608756202078465 0.86252159000805262 
		0.13331753437173949;
	setAttr -s 3 ".wl[867].w[4:6]"  0.0040923923738840472 0.86389868460241759 
		0.13200892302369838;
	setAttr -s 3 ".wl[868].w[4:6]"  0.0041608743092937548 0.86252161724626641 
		0.13331750844443971;
	setAttr -s 3 ".wl[869].w[4:6]"  0.0043005855569586667 0.85977095591407338 
		0.13592845852896801;
	setAttr -s 3 ".wl[870].w[4:6]"  0.0043761504987858517 0.85829710338850285 
		0.13732674611271142;
	setAttr -s 3 ".wl[871].w[4:6]"  0.0043005830075802578 0.85977100781043803 
		0.13592840918198174;
	setAttr -s 3 ".wl[872].w[4:6]"  0.0041608722267148556 0.86252166051816659 
		0.13331746725511856;
	setAttr -s 3 ".wl[873].w[4:6]"  0.0040923862860205301 0.86389881238992716 
		0.1320088013240524;
	setAttr -s 3 ".wl[874].w[4:6]"  0.0041608704242086323 0.86252169797071687 
		0.1333174316050745;
	setAttr -s 3 ".wl[875].w[4:6]"  0.0043005816726649918 0.85977103498461827 
		0.13592838334271673;
	setAttr -s 3 ".wl[876].w[4:6]"  0.0043761464593201002 0.85829718472812999 
		0.13732666881254987;
	setAttr -s 3 ".wl[877].w[4:6]"  0.0043005766288662841 0.85977090383127486 
		0.13592851953985882;
	setAttr -s 3 ".wl[878].w[4:6]"  0.0041608720196542803 0.86252166482047943 
		0.1333174631598662;
	setAttr -s 3 ".wl[879].w[4:6]"  0.0040923790052378711 0.86389850465327456 
		0.13200911634148757;
	setAttr -s 3 ".wl[880].w[4:6]"  0.0041608730847717372 0.86252164268942788 
		0.13331748422580036;
	setAttr -s 3 ".wl[881].w[4:6]"  0.0043005788562512776 0.8597708584894812 
		0.13592856265426759;
	setAttr -s 3 ".wl[882].w[4:6]"  0.0043761413461207337 0.85829681758047804 
		0.13732704107340116;
	setAttr -s 3 ".wl[883].w[4:6]"  0.0043005761716691619 0.8597706793105343 
		0.1359287445177966;
	setAttr -s 3 ".wl[884].w[4:6]"  0.004160866573937807 0.86252131499856921 
		0.13331781842749307;
	setAttr -s 3 ".wl[885].w[4:6]"  0.0040923765947388935 0.86389809468567558 
		0.13200952871958552;
	setAttr -s 3 ".wl[886].w[4:6]"  0.0041608684583732359 0.8625212758435995 
		0.13331785569802726;
	setAttr -s 3 ".wl[887].w[4:6]"  0.0043005796718430774 0.85977060805913597 
		0.13592881226902095;
	setAttr -s 3 ".wl[888].w[4:6]"  0.0043761467320665159 0.85829670912756406 
		0.13732714414036951;
	setAttr -s 3 ".wl[889].w[4:6]"  0.0043005815189073558 0.85977057045932914 
		0.13592884802176353;
	setAttr -s 3 ".wl[890].w[5:7]"  0.097907040246242 0.89963953124618878 
		0.002453428507569291;
	setAttr -s 3 ".wl[891].w[5:7]"  0.096601523278121382 0.90098838763834643 
		0.002410089083532132;
	setAttr -s 3 ".wl[892].w[5:7]"  0.097907077669837486 0.89963949902943308 
		0.0024534233007292893;
	setAttr -s 3 ".wl[893].w[5:7]"  0.10051362334049825 0.89694480171585256 
		0.0025415749436492048;
	setAttr -s 3 ".wl[894].w[5:7]"  0.10192020515951003 0.89549055431257307 
		0.0025892405279168752;
	setAttr -s 3 ".wl[895].w[5:7]"  0.10051359163254964 0.89694483460430208 
		0.0025415737631481372;
	setAttr -s 3 ".wl[896].w[5:7]"  0.09790705855847627 0.89963951884053039 
		0.0024534226009933231;
	setAttr -s 3 ".wl[897].w[5:7]"  0.096601163693971162 0.90098874735495316 
		0.0024100889510756543;
	setAttr -s 3 ".wl[898].w[5:7]"  0.097907050304260751 0.89963952739696262 
		0.0024534222987767076;
	setAttr -s 3 ".wl[899].w[5:7]"  0.10051352924473116 0.89694489931484622 
		0.0025415714404226561;
	setAttr -s 3 ".wl[900].w[5:7]"  0.10191998130885006 0.89549077963607648 
		0.0025892390550735366;
	setAttr -s 3 ".wl[901].w[5:7]"  0.1005135462595854 0.89694488166652164 
		0.0025415720738929328;
	setAttr -s 3 ".wl[902].w[5:7]"  0.097906952212931511 0.89963962250272334 
		0.002453425284345162;
	setAttr -s 3 ".wl[903].w[5:7]"  0.0966010614929632 0.90098884680461921 
		0.0024100917024175608;
	setAttr -s 3 ".wl[904].w[5:7]"  0.097906972991128979 0.89963960096375961 
		0.002453426045111398;
	setAttr -s 3 ".wl[905].w[5:7]"  0.10051359163254964 0.89694483460430208 
		0.0025415737631481372;
	setAttr -s 3 ".wl[906].w[5:7]"  0.10191978731355565 0.89549096704758424 
		0.0025892456388601518;
	setAttr -s 3 ".wl[907].w[5:7]"  0.10051344020382792 0.89694498486131535 
		0.002541574934856725;
	setAttr -s 3 ".wl[908].w[5:7]"  0.097906989134174727 0.89963958422965762 
		0.0024534266361677633;
	setAttr -s 3 ".wl[909].w[5:7]"  0.096601150168043243 0.90098875490945429 
		0.0024100949225023299;
	setAttr -s 3 ".wl[910].w[5:7]"  0.097906769388043796 0.89963979886739875 
		0.0024534317445574273;
	setAttr -s 3 ".wl[911].w[5:7]"  0.10051349691997526 0.89694492603359732 
		0.0025415770464274532;
	setAttr -s 3 ".wl[912].w[5:7]"  0.10191962503180241 0.89549112155434751 
		0.0025892534138500715;
	setAttr -s 3 ".wl[913].w[5:7]"  0.10051370725391363 0.89694471467830195 
		0.0025415780677844691;
	setAttr -s 3 ".wl[914].w[5:7]"  0.0016434886935485476 0.93009679607631124 
		0.068259715230140211;
	setAttr -s 3 ".wl[915].w[5:7]"  0.0016066301577835698 0.93109402645482786 
		0.067299343387388508;
	setAttr -s 3 ".wl[916].w[5:7]"  0.0016434867916339236 0.93009685703007272 
		0.068259656178293437;
	setAttr -s 3 ".wl[917].w[5:7]"  0.001719689952665348 0.92810333991940674 
		0.070176970127927882;
	setAttr -s 3 ".wl[918].w[5:7]"  0.0017608576510587631 0.92703961250736322 
		0.071199529841578041;
	setAttr -s 3 ".wl[919].w[5:7]"  0.0017196894269100643 0.9281033563981913 
		0.070176954174898623;
	setAttr -s 3 ".wl[920].w[5:7]"  0.0016434869887649887 0.93009685071229042 
		0.06825966229894459;
	setAttr -s 3 ".wl[921].w[5:7]"  0.0016066245161564985 0.93109393935109352 
		0.067299436132750079;
	setAttr -s 3 ".wl[922].w[5:7]"  0.0016434866640687186 0.93009686111836387 
		0.068259652217567426;
	setAttr -s 3 ".wl[923].w[5:7]"  0.001719687930597727 0.92810340329722418 
		0.070176908772178109;
	setAttr -s 3 ".wl[924].w[5:7]"  0.0017608527612987513 0.92703948272353276 
		0.071199664515168529;
	setAttr -s 3 ".wl[925].w[5:7]"  0.0017196825680131293 0.92810301473870771 
		0.070177302693279139;
	setAttr -s 3 ".wl[926].w[5:7]"  0.0016434867916339236 0.93009685703007272 
		0.068259656178293437;
	setAttr -s 3 ".wl[927].w[5:7]"  0.0016066251404074448 0.93109391912602435 
		0.067299455733568214;
	setAttr -s 3 ".wl[928].w[5:7]"  0.0016434873444169573 0.9300968393141299 
		0.068259673341453109;
	setAttr -s 3 ".wl[929].w[5:7]"  0.0017196889790607817 0.92810337043516411 
		0.070176940585775061;
	setAttr -s 3 ".wl[930].w[5:7]"  0.0017608546412941793 0.92703942448164534 
		0.07119972087706046;
	setAttr -s 3 ".wl[931].w[5:7]"  0.0017196836434571229 0.92810298103074229 
		0.070177335325800574;
	setAttr -s 3 ".wl[932].w[5:7]"  0.0016434884964178459 0.93009680239407921 
		0.068259709109502922;
	setAttr -s 3 ".wl[933].w[5:7]"  0.0016066244927957758 0.93109367022112433 
		0.067299705286079814;
	setAttr -s 3 ".wl[934].w[5:7]"  0.0016434861549746074 0.93009660470226763 
		0.068259909142757771;
	setAttr -s 3 ".wl[935].w[5:7]"  0.0017196844103254559 0.92810295699456202 
		0.070177358595112579;
	setAttr -s 3 ".wl[936].w[5:7]"  0.0017608567562900409 0.9270393589595205 
		0.07119978428418948;
	setAttr -s 3 ".wl[937].w[5:7]"  0.0017196862661311137 0.92810289882751551 
		0.070177414906353472;
	setAttr -s 3 ".wl[938].w[6:8]"  0.1141851394443754 0.88149749595351123 
		0.004317364602113404;
	setAttr -s 3 ".wl[939].w[6:8]"  0.11157843715196716 0.88419850915156051 
		0.0042230536964724084;
	setAttr -s 3 ".wl[940].w[6:8]"  0.11418509016287372 0.881497548057941 
		0.0043173617791852697;
	setAttr -s 3 ".wl[941].w[6:8]"  0.11953581825979251 0.87595742702348056 
		0.0045067547167269755;
	setAttr -s 3 ".wl[942].w[6:8]"  0.12250733859379813 0.87288654892439654 
		0.0046061124818052683;
	setAttr -s 3 ".wl[943].w[6:8]"  0.11953578504971511 0.87595746216206116 
		0.0045067527882237494;
	setAttr -s 3 ".wl[944].w[6:8]"  0.11418510040544551 0.88149753722865742 
		0.0043173623658970947;
	setAttr -s 3 ".wl[945].w[6:8]"  0.111577967784513 0.88419897366371936 
		0.0042230585517677088;
	setAttr -s 3 ".wl[946].w[6:8]"  0.11418508589599277 0.88149755256923612 
		0.0043173615347711289;
	setAttr -s 3 ".wl[947].w[6:8]"  0.11953496959466384 0.87595825745544531 
		0.0045067729498908275;
	setAttr -s 3 ".wl[948].w[6:8]"  0.12250724834319794 0.87288664445031861 
		0.0046061072064834457;
	setAttr -s 3 ".wl[949].w[6:8]"  0.11953456555236289 0.8759586512029961 
		0.0045067832446410681;
	setAttr -s 3 ".wl[950].w[6:8]"  0.11418509229631452 0.88149754580229311 
		0.0043173619013923605;
	setAttr -s 3 ".wl[951].w[6:8]"  0.11157840583647244 0.88419854224840977 
		0.0042230519151177379;
	setAttr -s 3 ".wl[952].w[6:8]"  0.11418504643240401 0.88149759429336538 
		0.0043173592742305408;
	setAttr -s 3 ".wl[953].w[6:8]"  0.11953574151839233 0.8759575082212393 
		0.0045067502603683878;
	setAttr -s 3 ".wl[954].w[6:8]"  0.12250733859378286 0.87288654892441286 
		0.0046061124818043775;
	setAttr -s 3 ".wl[955].w[6:8]"  0.11953423825223991 0.87595896375194482 
		0.0045067979958154057;
	setAttr -s 3 ".wl[956].w[6:8]"  0.11418516162811317 0.88149747249905097 
		0.0043173658728359217;
	setAttr -s 3 ".wl[957].w[6:8]"  0.11157771762628257 0.88419920649711747 
		0.0042230758765999859;
	setAttr -s 3 ".wl[958].w[6:8]"  0.11418520003006508 0.88149743189736895 
		0.0043173680725660376;
	setAttr -s 3 ".wl[959].w[6:8]"  0.11953391573931864 0.87595927123570938 
		0.0045068130249720567;
	setAttr -s 3 ".wl[960].w[6:8]"  0.12250741756303188 0.87288646533925585 
		0.0046061170977123554;
	setAttr -s 3 ".wl[961].w[6:8]"  0.11953585883640433 0.87595738409059154 
		0.0045067570730041688;
	setAttr -s 3 ".wl[962].w[6:8]"  0.0018136094396651362 0.8778209642025101 
		0.1203654263578248;
	setAttr -s 3 ".wl[963].w[6:8]"  0.0017376409850583547 0.88020313911645554 
		0.11805921989848614;
	setAttr -s 3 ".wl[964].w[6:8]"  0.0018136081670006511 0.87782101865442708 
		0.12036537317857235;
	setAttr -s 3 ".wl[965].w[6:8]"  0.0019762643705454638 0.87294559735512955 
		0.12507813827432496;
	setAttr -s 3 ".wl[966].w[6:8]"  0.0020700603188170035 0.87050737527408517 
		0.12742256440709787;
	setAttr -s 3 ".wl[967].w[6:8]"  0.0019762644254832295 0.87294559514157422 
		0.12507814043294252;
	setAttr -s 3 ".wl[968].w[6:8]"  0.0018136073242606776 0.87782105471170935 
		0.12036533796402991;
	setAttr -s 3 ".wl[969].w[6:8]"  0.0017376297565854942 0.8802023254811796 
		0.11806004476223482;
	setAttr -s 3 ".wl[970].w[6:8]"  0.0018136070957811318 0.87782106448738562 
		0.12036532841683331;
	setAttr -s 3 ".wl[971].w[6:8]"  0.0019762533896834941 0.87294469359012283 
		0.12507905302019365;
	setAttr -s 3 ".wl[972].w[6:8]"  0.0020700581810517782 0.87050745854396572 
		0.12742248327498262;
	setAttr -s 3 ".wl[973].w[6:8]"  0.0019762538864340788 0.87294467357483596 
		0.12507907253872994;
	setAttr -s 3 ".wl[974].w[6:8]"  0.0018136078525130071 0.87782103211002316 
		0.12036536003746375;
	setAttr -s 3 ".wl[975].w[6:8]"  0.001737640090924309 0.88020317852182017 
		0.11805918138725539;
	setAttr -s 3 ".wl[976].w[6:8]"  0.0018136059336497164 0.87782111421009812 
		0.12036527985625214;
	setAttr -s 3 ".wl[977].w[6:8]"  0.0019762647566516902 0.87294558179811754 
		0.12507815344523079;
	setAttr -s 3 ".wl[978].w[6:8]"  0.0020700585373459339 0.87050744466565044 
		0.12742249679700363;
	setAttr -s 3 ".wl[979].w[6:8]"  0.0019762558966504857 0.87294459257836843 
		0.12507915152498109;
	setAttr -s 3 ".wl[980].w[6:8]"  0.0018136096853696812 0.87782095368985702 
		0.12036543662477323;
	setAttr -s 3 ".wl[981].w[6:8]"  0.0017376353708141155 0.88020273229962431 
		0.11805963232956163;
	setAttr -s 3 ".wl[982].w[6:8]"  0.0018136103241545264 0.87782092635897291 
		0.12036546331687262;
	setAttr -s 3 ".wl[983].w[6:8]"  0.0019762482189700564 0.8729435557132994 
		0.12508019606773052;
	setAttr -s 3 ".wl[984].w[6:8]"  0.0020700599625224922 0.87050738915240677 
		0.12742255088507071;
	setAttr -s 3 ".wl[985].w[6:8]"  0.0019762660101420725 0.87294553129243091 
		0.12507820269742706;
	setAttr -s 3 ".wl[986].w[6:8]"  0.00080969053189418718 0.49959515473405286 
		0.49959515473405286;
	setAttr -s 3 ".wl[987].w[6:8]"  0.00082852292621060566 0.4995857385368947 
		0.4995857385368947;
	setAttr -s 3 ".wl[988].w[6:8]"  0.00086968213851827713 0.49956515893074088 
		0.49956515893074088;
	setAttr -s 3 ".wl[989].w[6:8]"  0.00089506183533782414 0.49955246908233109 
		0.49955246908233109;
	setAttr -s 3 ".wl[990].w[6:8]"  0.000869682071652764 0.49956515896417364 
		0.49956515896417364;
	setAttr -s 3 ".wl[991].w[6:8]"  0.00082852212466069078 0.49958573893766961 
		0.49958573893766961;
	setAttr -s 3 ".wl[992].w[6:8]"  0.00080968972661431184 0.49959515513669284 
		0.49959515513669284;
	setAttr -s 3 ".wl[993].w[6:8]"  0.00082852199691026997 0.4995857390015449 
		0.4995857390015449;
	setAttr -s 3 ".wl[994].w[6:8]"  0.000869681682004242 0.49956515915899791 
		0.49956515915899791;
	setAttr -s 3 ".wl[995].w[6:8]"  0.00089506140481385047 0.49955246929759306 
		0.49955246929759306;
	setAttr -s 3 ".wl[996].w[6:8]"  0.00086968164027343699 0.49956515917986327 
		0.49956515917986327;
	setAttr -s 3 ".wl[997].w[6:8]"  0.00082852249891121556 0.49958573875054446 
		0.49958573875054435;
	setAttr -s 3 ".wl[998].w[6:8]"  0.00080968981608976005 0.49959515509195512 
		0.49959515509195512;
	setAttr -s 3 ".wl[999].w[6:8]"  0.00082852249742897631 0.49958573875128548 
		0.49958573875128548;
	setAttr -s 3 ".wl[1000].w[6:8]"  0.00086968202992170258 0.49956515898503911 
		0.49956515898503911;
	setAttr -s 3 ".wl[1001].w[6:8]"  0.00089506492423194444 0.49955246753788402 
		0.49955246753788402;
	setAttr -s 3 ".wl[1002].w[6:8]"  0.00086968234633067072 0.49956515882683467 
		0.49956515882683467;
	setAttr -s 3 ".wl[1003].w[6:8]"  0.000828522885127146 0.49958573855743643 
		0.49958573855743643;
	setAttr -s 3 ".wl[1004].w[6:8]"  0.0008096899950408281 0.49959515500247959 
		0.49959515500247959;
	setAttr -s 3 ".wl[1005].w[6:8]"  0.00082852301287763912 0.49958573849356119 
		0.49958573849356119;
	setAttr -s 3 ".wl[1006].w[6:8]"  0.00086968276195592477 0.49956515861902206 
		0.49956515861902206;
	setAttr -s 3 ".wl[1007].w[6:8]"  0.00089506535475641165 0.49955246732262176 
		0.49955246732262176;
	setAttr -s 3 ".wl[1008].w[6:8]"  0.00086968255414322055 0.49956515872292839 
		0.49956515872292839;
	setAttr -s 3 ".wl[1009].w[6:8]"  0.00082852311447446339 0.49958573844276277 
		0.49958573844276277;
	setAttr -s 11 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 4.4854793811538611 0 -0 1;
	setAttr ".pm[1]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 4.4854793811538611 0 -0 1;
	setAttr ".pm[2]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 3.3635845406877114 0 -0 1;
	setAttr ".pm[3]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 1.6978511812187449 0 -0 1;
	setAttr ".pm[4]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -0.014764809198741125 0 -0 1;
	setAttr ".pm[5]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -1.6397037616105927 0 -0 1;
	setAttr ".pm[6]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -3.3115253449709643 0 -0 1;
	setAttr ".pm[7]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -5.1085300710957844 0 -0 1;
	setAttr ".pm[8]" -type "matrix" 1 -0 0 -0 -0 1 -0 0 0 -0 1 -0 -6.3209018711606726 0 -0 1;
	setAttr ".pm[9]" -type "matrix" -1 -0 1.2246467991473532e-016 -0 0 1 -0 0 -1.2246467991473532e-016 -0 -1 0
		 -5.3199934170866854 0 6.5151129097201989e-016 1;
	setAttr ".pm[10]" -type "matrix" -1 -0 1.2246467991473532e-016 -0 0 1 -0 0 -1.2246467991473532e-016 -0 -1 0
		 -6.0497343905442129 0 1.0420784550921857e-015 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 11 ".ma";
	setAttr -s 11 ".dpf[0:10]"  4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 11 ".lw";
	setAttr -s 11 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 11 ".ifcl";
	setAttr -s 11 ".ifcl";
createNode tweak -n "tweak1";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	setAttr -s 11 ".wm";
	setAttr -s 11 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 -4.4854793811538611 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.1218948404661497 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.6657333594689665 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.712615990417486 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.6249389524118516 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.6718215833603716 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.7970047261248201 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2123718000648882 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 -0.83451403593282425 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 6.123233995736766e-017 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.72974097345752753 0
		 -3.9056716412016585e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 11 ".m";
	setAttr -s 11 ".p";
	setAttr ".bp" yes;
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
connectAttr "mesh.di" "snake.do";
connectAttr "skinCluster1.og[0]" "snakeShape.i";
connectAttr "skinCluster1GroupId.id" "snakeShape.iog.og[4].gid";
connectAttr "skinCluster1Set.mwc" "snakeShape.iog.og[4].gco";
connectAttr "groupId2.id" "snakeShape.iog.og[5].gid";
connectAttr "tweakSet1.mwc" "snakeShape.iog.og[5].gco";
connectAttr "tweak1.vl[0].vt[0]" "snakeShape.twl";
connectAttr "polySplitRing19.out" "snakeShapeOrig.i";
connectAttr "root_CTRL.r" "root.r";
connectAttr "joints.di" "root.do";
connectAttr "root_pointConstraint1.ctx" "root.tx";
connectAttr "root_pointConstraint1.cty" "root.ty";
connectAttr "root_pointConstraint1.ctz" "root.tz";
connectAttr "root.s" "body_01.is";
connectAttr "body_01_CTRL.r" "body_01.r";
connectAttr "joints.di" "body_01.do";
connectAttr "body_01.s" "body_02.is";
connectAttr "body_02_CTRL.r" "body_02.r";
connectAttr "joints.di" "body_02.do";
connectAttr "body_02.s" "body_03.is";
connectAttr "body_03_CTRL.r" "body_03.r";
connectAttr "joints.di" "body_03.do";
connectAttr "body_03.s" "body_04.is";
connectAttr "body_04_CTRL.r" "body_04.r";
connectAttr "joints.di" "body_04.do";
connectAttr "body_04.s" "body_05.is";
connectAttr "body_05_CTRL.r" "body_05.r";
connectAttr "joints.di" "body_05.do";
connectAttr "body_05.s" "body_06.is";
connectAttr "body_06_CTRL.r" "body_06.r";
connectAttr "joints.di" "body_06.do";
connectAttr "body_06.s" "body_07.is";
connectAttr "body_07_CTRL.r" "body_07.r";
connectAttr "joints.di" "body_07.do";
connectAttr "body_07.s" "body_08.is";
connectAttr "body_08_CTRL.r" "body_08.r";
connectAttr "joints.di" "body_08.do";
connectAttr "body_01.s" "neck.is";
connectAttr "neck_CTRL.r" "neck.r";
connectAttr "joints.di" "neck.do";
connectAttr "neck.s" "head.is";
connectAttr "head_CTRL.r" "head.r";
connectAttr "joints.di" "head.do";
connectAttr "root.pim" "root_pointConstraint1.cpim";
connectAttr "root.rp" "root_pointConstraint1.crp";
connectAttr "root.rpt" "root_pointConstraint1.crt";
connectAttr "root_CTRL.t" "root_pointConstraint1.tg[0].tt";
connectAttr "root_CTRL.rp" "root_pointConstraint1.tg[0].trp";
connectAttr "root_CTRL.rpt" "root_pointConstraint1.tg[0].trt";
connectAttr "root_CTRL.pm" "root_pointConstraint1.tg[0].tpm";
connectAttr "root_pointConstraint1.w0" "root_pointConstraint1.tg[0].tw";
connectAttr "root.jo" "root_GRP.r";
connectAttr "controls.di" "root_CTRL.do";
connectAttr "transformGeometry2.og" "root_CTRLShape.cr";
connectAttr "controls.di" "root_CTRLShape.do";
connectAttr "body_01.jo" "body_01_GRP.r";
connectAttr "controls.di" "body_01_GRP.do";
connectAttr "controls.di" "body_01_CTRL.do";
connectAttr "transformGeometry3.og" "body_01_CTRLShape.cr";
connectAttr "controls.di" "body_01_CTRLShape.do";
connectAttr "body_02.jo" "body_02_GRP.r";
connectAttr "controls.di" "body_02_GRP.do";
connectAttr "body_01_CTRL.ry" "body_02_CTRL.ry";
connectAttr "controls.di" "body_02_CTRL.do";
connectAttr "transformGeometry4.og" "body_02_CTRLShape.cr";
connectAttr "controls.di" "body_02_CTRLShape.do";
connectAttr "body_03.jo" "body_03_GRP.r";
connectAttr "controls.di" "body_03_GRP.do";
connectAttr "body_02_CTRL.ry" "body_03_CTRL.ry";
connectAttr "controls.di" "body_03_CTRL.do";
connectAttr "transformGeometry5.og" "body_03_CTRLShape.cr";
connectAttr "controls.di" "body_03_CTRLShape.do";
connectAttr "body_04.jo" "body_04_GRP.r";
connectAttr "controls.di" "body_04_GRP.do";
connectAttr "body_03_CTRL.ry" "body_04_CTRL.ry";
connectAttr "controls.di" "body_04_CTRL.do";
connectAttr "transformGeometry6.og" "body_04_CTRLShape.cr";
connectAttr "controls.di" "body_04_CTRLShape.do";
connectAttr "body_05.jo" "body_05_GRP.r";
connectAttr "controls.di" "body_05_GRP.do";
connectAttr "body_04_CTRL.ry" "body_05_CTRL.ry";
connectAttr "controls.di" "body_05_CTRL.do";
connectAttr "transformGeometry7.og" "body_05_CTRLShape.cr";
connectAttr "controls.di" "body_05_CTRLShape.do";
connectAttr "body_06.jo" "body_06_GRP.r";
connectAttr "controls.di" "body_06_GRP.do";
connectAttr "body_05_CTRL.ry" "body_06_CTRL.ry";
connectAttr "controls.di" "body_06_CTRL.do";
connectAttr "transformGeometry8.og" "body_06_CTRLShape.cr";
connectAttr "controls.di" "body_06_CTRLShape.do";
connectAttr "body_07.jo" "body_07_GRP.r";
connectAttr "controls.di" "body_07_GRP.do";
connectAttr "body_06_CTRL.ry" "body_07_CTRL.ry";
connectAttr "controls.di" "body_07_CTRL.do";
connectAttr "transformGeometry9.og" "body_07_CTRLShape.cr";
connectAttr "controls.di" "body_07_CTRLShape.do";
connectAttr "body_08.jo" "body_08_GRP.r";
connectAttr "controls.di" "body_08_GRP.do";
connectAttr "body_07_CTRL.ry" "body_08_CTRL.ry";
connectAttr "controls.di" "body_08_CTRL.do";
connectAttr "transformGeometry10.og" "body_08_CTRLShape.cr";
connectAttr "controls.di" "body_08_CTRLShape.do";
connectAttr "neck.jo" "neck_GRP.r";
connectAttr "controls.di" "neck_GRP.do";
connectAttr "controls.di" "neck_CTRL.do";
connectAttr "transformGeometry11.og" "neck_CTRLShape.cr";
connectAttr "controls.di" "neck_CTRLShape.do";
connectAttr "head.jo" "head_GRP.r";
connectAttr "controls.di" "head_GRP.do";
connectAttr "controls.di" "head_CTRL.do";
connectAttr "transformGeometry12.og" "head_CTRLShape.cr";
connectAttr "controls.di" "head_CTRLShape.do";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyAverageVertex1.ip";
connectAttr "snakeShape.wm" "polyAverageVertex1.mp";
connectAttr "polyAverageVertex1.out" "polyAverageVertex2.ip";
connectAttr "snakeShape.wm" "polyAverageVertex2.mp";
connectAttr "polyAverageVertex2.out" "polyAverageVertex3.ip";
connectAttr "snakeShape.wm" "polyAverageVertex3.mp";
connectAttr "polyAverageVertex3.out" "polyAverageVertex4.ip";
connectAttr "snakeShape.wm" "polyAverageVertex4.mp";
connectAttr "polyAverageVertex4.out" "polyAverageVertex5.ip";
connectAttr "snakeShape.wm" "polyAverageVertex5.mp";
connectAttr "polyAverageVertex5.out" "polyAverageVertex6.ip";
connectAttr "snakeShape.wm" "polyAverageVertex6.mp";
connectAttr "polyAverageVertex6.out" "polyAverageVertex7.ip";
connectAttr "snakeShape.wm" "polyAverageVertex7.mp";
connectAttr "polyAverageVertex7.out" "polyAverageVertex8.ip";
connectAttr "snakeShape.wm" "polyAverageVertex8.mp";
connectAttr "polyAverageVertex8.out" "polyAverageVertex9.ip";
connectAttr "snakeShape.wm" "polyAverageVertex9.mp";
connectAttr "polyAverageVertex9.out" "polyAverageVertex10.ip";
connectAttr "snakeShape.wm" "polyAverageVertex10.mp";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "snakeShape.wm" "polySplitRing1.mp";
connectAttr "polyAverageVertex10.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polySplitRing2.ip";
connectAttr "snakeShape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polySplitRing3.ip";
connectAttr "snakeShape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polySplitRing4.ip";
connectAttr "snakeShape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing3.out" "polyTweak4.ip";
connectAttr "polySplitRing4.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "transformGeometry1.ig";
connectAttr "layerManager.dli[1]" "mesh.id";
connectAttr "polyTweak6.out" "polySplitRing5.ip";
connectAttr "snakeShape.wm" "polySplitRing5.mp";
connectAttr "transformGeometry1.og" "polyTweak6.ip";
connectAttr "layerManager.dli[3]" "controls.id";
connectAttr "makeNurbCircle1.oc" "transformGeometry2.ig";
connectAttr "makeNurbCircle2.oc" "transformGeometry3.ig";
connectAttr "makeNurbCircle3.oc" "transformGeometry4.ig";
connectAttr "makeNurbCircle4.oc" "transformGeometry5.ig";
connectAttr "makeNurbCircle5.oc" "transformGeometry6.ig";
connectAttr "makeNurbCircle6.oc" "transformGeometry7.ig";
connectAttr "makeNurbCircle7.oc" "transformGeometry8.ig";
connectAttr "makeNurbCircle8.oc" "transformGeometry9.ig";
connectAttr "makeNurbCircle9.oc" "transformGeometry10.ig";
connectAttr "makeNurbCircle10.oc" "transformGeometry11.ig";
connectAttr "makeNurbCircle11.oc" "transformGeometry12.ig";
connectAttr "layerManager.dli[4]" "joints.id";
connectAttr "polySplitRing5.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "transformGeometry13.ig";
connectAttr "transformGeometry13.og" "polySplitRing6.ip";
connectAttr "snakeShape.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "snakeShape.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "snakeShape.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "snakeShape.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "snakeShape.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "snakeShape.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "snakeShape.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "snakeShape.wm" "polySplitRing13.mp";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "snakeShape.wm" "polySplitRing14.mp";
connectAttr "polySplitRing14.out" "polySplitRing15.ip";
connectAttr "snakeShape.wm" "polySplitRing15.mp";
connectAttr "polySplitRing15.out" "polySplitRing16.ip";
connectAttr "snakeShape.wm" "polySplitRing16.mp";
connectAttr "polySplitRing16.out" "polySplitRing17.ip";
connectAttr "snakeShape.wm" "polySplitRing17.mp";
connectAttr "polySplitRing17.out" "polySplitRing18.ip";
connectAttr "snakeShape.wm" "polySplitRing18.mp";
connectAttr "polySplitRing18.out" "polySplitRing19.ip";
connectAttr "snakeShape.wm" "polySplitRing19.mp";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "root.wm" "skinCluster1.ma[0]";
connectAttr "body_01.wm" "skinCluster1.ma[1]";
connectAttr "body_02.wm" "skinCluster1.ma[2]";
connectAttr "body_03.wm" "skinCluster1.ma[3]";
connectAttr "body_04.wm" "skinCluster1.ma[4]";
connectAttr "body_05.wm" "skinCluster1.ma[5]";
connectAttr "body_06.wm" "skinCluster1.ma[6]";
connectAttr "body_07.wm" "skinCluster1.ma[7]";
connectAttr "body_08.wm" "skinCluster1.ma[8]";
connectAttr "neck.wm" "skinCluster1.ma[9]";
connectAttr "head.wm" "skinCluster1.ma[10]";
connectAttr "root.liw" "skinCluster1.lw[0]";
connectAttr "body_01.liw" "skinCluster1.lw[1]";
connectAttr "body_02.liw" "skinCluster1.lw[2]";
connectAttr "body_03.liw" "skinCluster1.lw[3]";
connectAttr "body_04.liw" "skinCluster1.lw[4]";
connectAttr "body_05.liw" "skinCluster1.lw[5]";
connectAttr "body_06.liw" "skinCluster1.lw[6]";
connectAttr "body_07.liw" "skinCluster1.lw[7]";
connectAttr "body_08.liw" "skinCluster1.lw[8]";
connectAttr "neck.liw" "skinCluster1.lw[9]";
connectAttr "head.liw" "skinCluster1.lw[10]";
connectAttr "root.obcc" "skinCluster1.ifcl[0]";
connectAttr "body_01.obcc" "skinCluster1.ifcl[1]";
connectAttr "body_02.obcc" "skinCluster1.ifcl[2]";
connectAttr "body_03.obcc" "skinCluster1.ifcl[3]";
connectAttr "body_04.obcc" "skinCluster1.ifcl[4]";
connectAttr "body_05.obcc" "skinCluster1.ifcl[5]";
connectAttr "body_06.obcc" "skinCluster1.ifcl[6]";
connectAttr "body_07.obcc" "skinCluster1.ifcl[7]";
connectAttr "body_08.obcc" "skinCluster1.ifcl[8]";
connectAttr "neck.obcc" "skinCluster1.ifcl[9]";
connectAttr "head.obcc" "skinCluster1.ifcl[10]";
connectAttr "neck.msg" "skinCluster1.ptt";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "snakeShape.iog.og[4]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "snakeShape.iog.og[5]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "snakeShapeOrig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "root.msg" "bindPose1.m[0]";
connectAttr "body_01.msg" "bindPose1.m[1]";
connectAttr "body_02.msg" "bindPose1.m[2]";
connectAttr "body_03.msg" "bindPose1.m[3]";
connectAttr "body_04.msg" "bindPose1.m[4]";
connectAttr "body_05.msg" "bindPose1.m[5]";
connectAttr "body_06.msg" "bindPose1.m[6]";
connectAttr "body_07.msg" "bindPose1.m[7]";
connectAttr "body_08.msg" "bindPose1.m[8]";
connectAttr "neck.msg" "bindPose1.m[9]";
connectAttr "head.msg" "bindPose1.m[10]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[1]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "root.bps" "bindPose1.wm[0]";
connectAttr "body_01.bps" "bindPose1.wm[1]";
connectAttr "body_02.bps" "bindPose1.wm[2]";
connectAttr "body_03.bps" "bindPose1.wm[3]";
connectAttr "body_04.bps" "bindPose1.wm[4]";
connectAttr "body_05.bps" "bindPose1.wm[5]";
connectAttr "body_06.bps" "bindPose1.wm[6]";
connectAttr "body_07.bps" "bindPose1.wm[7]";
connectAttr "body_08.bps" "bindPose1.wm[8]";
connectAttr "neck.bps" "bindPose1.wm[9]";
connectAttr "head.bps" "bindPose1.wm[10]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "snakeShape.iog" ":initialShadingGroup.dsm" -na;
// End of snake_03.ma
