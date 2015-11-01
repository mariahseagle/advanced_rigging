//Maya ASCII 2015 scene
//Name: snake_02.ma
//Last modified: Mon, Sep 14, 2015 02:07:44 PM
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
	setAttr ".t" -type "double3" 1.0648833221655321 3.6382582850260046 20.712318076999907 ;
	setAttr ".r" -type "double3" 2151.8616472690419 2.6000000000518075 7.462106752796667e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 23.058232879004755;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.8213005958765827 100.1 0.5127370774206137 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 7.6728680818624877;
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
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.45580623240232176 -0.34079149137895648 
		0 8.8817841970012523e-016 -0.48195194904947347 0 0.45580623240232665 -0.34079149137895681 
		0 0.6446073556775529 -1.8794104606613493e-016 0 0.45580623240232665 0.51391216915335303 
		0 8.8817841970012523e-016 0.75125078114297916 0 -0.45580623240232043 0.51391216915335325 
		0 -0.64460735567755023 2.1057390327739479e-016 0 0 0 0 0 0 0 0 0 0;
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
		-1.5837688558297722e-016 0 0.28718311495821069 0.52305890437138525 0 0 0.75540364440619789 
		0 -0.28718311495821114 0.52305890437138536 0 -0.406138256058453 1.7744946984273619e-016 
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
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n"
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
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
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
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.456625\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -currentNode \"snake\" \n                -opaqueContainers 0\n                -dropTargetNode \"root\" \n                -dropNode \"body_01\" \n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.456625\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -currentNode \"snake\" \n                -opaqueContainers 0\n                -dropTargetNode \"root\" \n                -dropNode \"body_01\" \n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
	setAttr ".ix" -type "matrix" 2.2204460492503131e-016 0 1 0 -0 1 0 0 -1 -0 2.2204460492503131e-016 0
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
	setAttr ".wl[0].w[1]" 0.0037084478321720528;
	setAttr ".wl[0].w[9]" 0.032937918287212715;
	setAttr ".wl[0].w[10]" 0.96335363388061523;
	setAttr -s 3 ".wl[1].w";
	setAttr ".wl[1].w[1]" 0.0018542260229602767;
	setAttr ".wl[1].w[9]" 0.022294357389210134;
	setAttr ".wl[1].w[10]" 0.97585141658782959;
	setAttr -s 3 ".wl[2].w";
	setAttr ".wl[2].w[1]" 0.00115424683380129;
	setAttr ".wl[2].w[9]" 0.015270349475860574;
	setAttr ".wl[2].w[10]" 0.98357540369033813;
	setAttr -s 3 ".wl[3].w";
	setAttr ".wl[3].w[1]" 0.0013497035897898834;
	setAttr ".wl[3].w[9]" 0.017436130722649081;
	setAttr ".wl[3].w[10]" 0.98121416568756104;
	setAttr -s 3 ".wl[4].w";
	setAttr ".wl[4].w[1]" 0.001578927131401419;
	setAttr ".wl[4].w[9]" 0.019130289463294627;
	setAttr ".wl[4].w[10]" 0.97929078340530396;
	setAttr -s 3 ".wl[5].w";
	setAttr ".wl[5].w[1]" 0.0035442552260072147;
	setAttr ".wl[5].w[9]" 0.03410233643735338;
	setAttr ".wl[5].w[10]" 0.9623534083366394;
	setAttr -s 3 ".wl[6].w";
	setAttr ".wl[6].w[1]" 0.010388077842484451;
	setAttr ".wl[6].w[9]" 0.065774975670088789;
	setAttr ".wl[6].w[10]" 0.92383694648742676;
	setAttr -s 3 ".wl[7].w";
	setAttr ".wl[7].w[1]" 0.0018810800327995613;
	setAttr ".wl[7].w[9]" 0.020090741752173583;
	setAttr ".wl[7].w[10]" 0.97802817821502686;
	setAttr -s 3 ".wl[8].w";
	setAttr ".wl[8].w[1]" 0.0011068246975955707;
	setAttr ".wl[8].w[9]" 0.0088391043528499857;
	setAttr ".wl[8].w[10]" 0.99005407094955444;
	setAttr -s 3 ".wl[9].w";
	setAttr ".wl[9].w[1]" 0.0016963594516648003;
	setAttr ".wl[9].w[9]" 0.01189248627816308;
	setAttr ".wl[9].w[10]" 0.98641115427017212;
	setAttr -s 3 ".wl[10].w";
	setAttr ".wl[10].w[1]" 0.0015260726972839637;
	setAttr ".wl[10].w[9]" 0.010229393763897678;
	setAttr ".wl[10].w[10]" 0.98824453353881836;
	setAttr -s 3 ".wl[11].w";
	setAttr ".wl[11].w[1]" 0.0027474959446878904;
	setAttr ".wl[11].w[9]" 0.01926163834791465;
	setAttr ".wl[11].w[10]" 0.97799086570739746;
	setAttr -s 3 ".wl[12].w";
	setAttr ".wl[12].w[1]" 0.0038437556631949837;
	setAttr ".wl[12].w[9]" 0.030696241914472254;
	setAttr ".wl[12].w[10]" 0.96546000242233276;
	setAttr -s 3 ".wl[13].w";
	setAttr ".wl[13].w[1]" 0.0059198682689268348;
	setAttr ".wl[13].w[9]" 0.047631865224878098;
	setAttr ".wl[13].w[10]" 0.94644826650619507;
	setAttr -s 3 ".wl[14].w";
	setAttr ".wl[14].w[1]" 0.0012474884156268011;
	setAttr ".wl[14].w[9]" 0.014684773528190339;
	setAttr ".wl[14].w[10]" 0.98406773805618286;
	setAttr -s 3 ".wl[15].w";
	setAttr ".wl[15].w[1]" 0.00081538749213549413;
	setAttr ".wl[15].w[9]" 0.0055601041269746129;
	setAttr ".wl[15].w[10]" 0.99362450838088989;
	setAttr -s 3 ".wl[16].w";
	setAttr ".wl[16].w[1]" 0.0018033994154623716;
	setAttr ".wl[16].w[9]" 0.0099017607255288392;
	setAttr ".wl[16].w[10]" 0.98829483985900879;
	setAttr -s 3 ".wl[17].w";
	setAttr ".wl[17].w[1]" 0.0027935168967226269;
	setAttr ".wl[17].w[9]" 0.014365885473730255;
	setAttr ".wl[17].w[10]" 0.98284059762954712;
	setAttr -s 3 ".wl[18].w";
	setAttr ".wl[18].w[1]" 0.0018252554994907214;
	setAttr ".wl[18].w[9]" 0.01002176369606592;
	setAttr ".wl[18].w[10]" 0.98815298080444336;
	setAttr -s 3 ".wl[19].w";
	setAttr ".wl[19].w[1]" 0.0010758711768747912;
	setAttr ".wl[19].w[9]" 0.0073363111542104143;
	setAttr ".wl[19].w[10]" 0.99158781766891479;
	setAttr -s 3 ".wl[20].w";
	setAttr ".wl[20].w[1]" 0.0041537102336465931;
	setAttr ".wl[20].w[9]" 0.038489956033748426;
	setAttr ".wl[20].w[10]" 0.95735633373260498;
	setAttr -s 3 ".wl[21].w";
	setAttr ".wl[21].w[1]" 0.00042661428713482765;
	setAttr ".wl[21].w[9]" 0.0050845503780873403;
	setAttr ".wl[21].w[10]" 0.99448883533477783;
	setAttr -s 3 ".wl[22].w";
	setAttr ".wl[22].w[1]" 0.00064427922362448556;
	setAttr ".wl[22].w[9]" 0.0042878263176047626;
	setAttr ".wl[22].w[10]" 0.99506789445877075;
	setAttr -s 3 ".wl[23].w";
	setAttr ".wl[23].w[1]" 0.0022331768381665357;
	setAttr ".wl[23].w[9]" 0.011612445701353728;
	setAttr ".wl[23].w[10]" 0.98615437746047974;
	setAttr -s 3 ".wl[24].w";
	setAttr ".wl[24].w[1]" 0.0033319897521289772;
	setAttr ".wl[24].w[9]" 0.016177325738593679;
	setAttr ".wl[24].w[10]" 0.98049068450927734;
	setAttr -s 3 ".wl[25].w";
	setAttr ".wl[25].w[1]" 0.001764470362740356;
	setAttr ".wl[25].w[9]" 0.0091751873254005134;
	setAttr ".wl[25].w[10]" 0.98906034231185913;
	setAttr -s 3 ".wl[26].w";
	setAttr ".wl[26].w[1]" 0.0013029240242987837;
	setAttr ".wl[26].w[9]" 0.0086712576277703079;
	setAttr ".wl[26].w[10]" 0.99002581834793091;
	setAttr -s 3 ".wl[27].w";
	setAttr ".wl[27].w[1]" 0.0013703531026403838;
	setAttr ".wl[27].w[9]" 0.013270097374959714;
	setAttr ".wl[27].w[10]" 0.9853595495223999;
	setAttr -s 3 ".wl[28].w";
	setAttr ".wl[28].w[1]" 0.00058406956806959299;
	setAttr ".wl[28].w[9]" 0.0070087873159330929;
	setAttr ".wl[28].w[10]" 0.99240714311599731;
	setAttr -s 3 ".wl[29].w";
	setAttr ".wl[29].w[1]" 0.00050014114382152777;
	setAttr ".wl[29].w[9]" 0.0037590279578935603;
	setAttr ".wl[29].w[10]" 0.99574083089828491;
	setAttr -s 3 ".wl[30].w";
	setAttr ".wl[30].w[1]" 0.0015848329557804431;
	setAttr ".wl[30].w[9]" 0.0093911239610286381;
	setAttr ".wl[30].w[10]" 0.98902404308319092;
	setAttr -s 3 ".wl[31].w";
	setAttr ".wl[31].w[1]" 0.0011914622233211601;
	setAttr ".wl[31].w[9]" 0.0065728772237003243;
	setAttr ".wl[31].w[10]" 0.99223566055297852;
	setAttr -s 3 ".wl[32].w";
	setAttr ".wl[32].w[1]" 0.0017389304898015143;
	setAttr ".wl[32].w[9]" 0.010304247591710936;
	setAttr ".wl[32].w[10]" 0.98795682191848755;
	setAttr -s 3 ".wl[33].w";
	setAttr ".wl[33].w[1]" 0.00071509557435006318;
	setAttr ".wl[33].w[9]" 0.0053745917730620464;
	setAttr ".wl[33].w[10]" 0.99391031265258789;
	setAttr -s 3 ".wl[34].w";
	setAttr ".wl[34].w[1]" 0.0013315937789892542;
	setAttr ".wl[34].w[9]" 0.012339089128115238;
	setAttr ".wl[34].w[10]" 0.98632931709289551;
	setAttr -s 3 ".wl[35].w";
	setAttr ".wl[35].w[1]" 0.00084264142381580969;
	setAttr ".wl[35].w[9]" 0.0093823565734681251;
	setAttr ".wl[35].w[10]" 0.98977500200271606;
	setAttr -s 3 ".wl[36].w";
	setAttr ".wl[36].w[1]" 0.0003501179791628291;
	setAttr ".wl[36].w[9]" 0.0039865371607602663;
	setAttr ".wl[36].w[10]" 0.9956633448600769;
	setAttr -s 3 ".wl[37].w";
	setAttr ".wl[37].w[1]" 0.00046913228384791645;
	setAttr ".wl[37].w[9]" 0.0040460983718222498;
	setAttr ".wl[37].w[10]" 0.99548476934432983;
	setAttr -s 3 ".wl[38].w";
	setAttr ".wl[38].w[1]" 0.0011849118285638129;
	setAttr ".wl[38].w[9]" 0.0097361492104071339;
	setAttr ".wl[38].w[10]" 0.98907893896102905;
	setAttr -s 3 ".wl[39].w";
	setAttr ".wl[39].w[1]" 0.00060152052030063507;
	setAttr ".wl[39].w[9]" 0.005187878626733056;
	setAttr ".wl[39].w[10]" 0.99421060085296631;
	setAttr -s 3 ".wl[40].w";
	setAttr ".wl[40].w[1]" 0.00072500944654204356;
	setAttr ".wl[40].w[9]" 0.0070735430665805153;
	setAttr ".wl[40].w[10]" 0.99220144748687744;
	setAttr -s 3 ".wl[41].w";
	setAttr ".wl[41].w[1]" 0.001671039768612198;
	setAttr ".wl[41].w[9]" 0.013354277900302598;
	setAttr ".wl[41].w[10]" 0.98497468233108521;
	setAttr -s 3 ".wl[42].w";
	setAttr ".wl[42].w[1]" 0.0034791173037753095;
	setAttr ".wl[42].w[9]" 0.02569890603454256;
	setAttr ".wl[42].w[10]" 0.97082197666168213;
	setAttr -s 3 ".wl[43].w";
	setAttr ".wl[43].w[1]" 0.0014500717286725748;
	setAttr ".wl[43].w[9]" 0.013323297106776644;
	setAttr ".wl[43].w[10]" 0.98522663116455078;
	setAttr -s 3 ".wl[44].w";
	setAttr ".wl[44].w[1]" 0.0012718439283398752;
	setAttr ".wl[44].w[9]" 0.012951612454411589;
	setAttr ".wl[44].w[10]" 0.98577654361724854;
	setAttr -s 3 ".wl[45].w";
	setAttr ".wl[45].w[1]" 0.0021014400774172224;
	setAttr ".wl[45].w[9]" 0.018831174725896987;
	setAttr ".wl[45].w[10]" 0.97906738519668579;
	setAttr -s 3 ".wl[46].w";
	setAttr ".wl[46].w[1]" 0.0013949939348917053;
	setAttr ".wl[46].w[9]" 0.011794262256361958;
	setAttr ".wl[46].w[10]" 0.98681074380874634;
	setAttr -s 3 ".wl[47].w";
	setAttr ".wl[47].w[1]" 0.0020473929351786488;
	setAttr ".wl[47].w[9]" 0.014133658795930969;
	setAttr ".wl[47].w[10]" 0.98381894826889038;
	setAttr -s 3 ".wl[48].w";
	setAttr ".wl[48].w[1]" 0.0042120095407305784;
	setAttr ".wl[48].w[9]" 0.022726369270151991;
	setAttr ".wl[48].w[10]" 0.97306162118911743;
	setAttr -s 3 ".wl[49].w";
	setAttr ".wl[49].w[0]" 3.9010356735679616e-006;
	setAttr ".wl[49].w[1]" 0.00048521467935328753;
	setAttr ".wl[49].w[9]" 0.99951088428497314;
	setAttr -s 3 ".wl[50].w";
	setAttr ".wl[50].w[0]" 3.4166420910690352e-006;
	setAttr ".wl[50].w[1]" 0.0004548834715869095;
	setAttr ".wl[50].w[9]" 0.99954169988632202;
	setAttr -s 3 ".wl[51].w";
	setAttr ".wl[51].w[0]" 2.3908512486908642e-006;
	setAttr ".wl[51].w[1]" 0.00037252236438851618;
	setAttr ".wl[51].w[9]" 0.99962508678436279;
	setAttr -s 3 ".wl[52].w";
	setAttr ".wl[52].w[0]" 4.2825969996555909e-006;
	setAttr ".wl[52].w[1]" 0.00069905221134995373;
	setAttr ".wl[52].w[9]" 0.99929666519165039;
	setAttr -s 3 ".wl[53].w";
	setAttr ".wl[53].w[0]" 4.8383322012093333e-006;
	setAttr ".wl[53].w[1]" 0.00066738285157564615;
	setAttr ".wl[53].w[9]" 0.99932777881622314;
	setAttr -s 3 ".wl[54].w";
	setAttr ".wl[54].w[0]" 2.062250066428608e-006;
	setAttr ".wl[54].w[1]" 0.00022717721373972374;
	setAttr ".wl[54].w[9]" 0.99977076053619385;
	setAttr -s 3 ".wl[55].w";
	setAttr ".wl[55].w[0]" 3.6478719564931254e-006;
	setAttr ".wl[55].w[1]" 0.00035326474095854593;
	setAttr ".wl[55].w[9]" 0.99964308738708496;
	setAttr -s 3 ".wl[56].w";
	setAttr ".wl[56].w[0]" 1.1379880970940716e-005;
	setAttr ".wl[56].w[1]" 0.0010396288203535222;
	setAttr ".wl[56].w[9]" 0.99894899129867554;
	setAttr -s 3 ".wl[57].w";
	setAttr ".wl[57].w[0]" 9.8647055376805883e-006;
	setAttr ".wl[57].w[1]" 0.00088843689587223148;
	setAttr ".wl[57].w[9]" 0.99910169839859009;
	setAttr -s 3 ".wl[58].w";
	setAttr ".wl[58].w[0]" 7.9049963912095397e-006;
	setAttr ".wl[58].w[1]" 0.00074627257395180804;
	setAttr ".wl[58].w[9]" 0.99924582242965698;
	setAttr -s 3 ".wl[59].w";
	setAttr ".wl[59].w[0]" 1.1352352178004352e-005;
	setAttr ".wl[59].w[1]" 0.0010936581573129625;
	setAttr ".wl[59].w[9]" 0.99889498949050903;
	setAttr -s 3 ".wl[60].w";
	setAttr ".wl[60].w[0]" 7.3092566378055662e-006;
	setAttr ".wl[60].w[1]" 0.00068994587794471397;
	setAttr ".wl[60].w[9]" 0.99930274486541748;
	setAttr -s 3 ".wl[61].w";
	setAttr ".wl[61].w[0]" 5.1243179738159503e-006;
	setAttr ".wl[61].w[1]" 0.00042230058971051021;
	setAttr ".wl[61].w[9]" 0.99957257509231567;
	setAttr -s 3 ".wl[62].w";
	setAttr ".wl[62].w[0]" 1.1300368860956212e-005;
	setAttr ".wl[62].w[1]" 0.00082578726236462972;
	setAttr ".wl[62].w[9]" 0.99916291236877441;
	setAttr -s 3 ".wl[63].w";
	setAttr ".wl[63].w[1]" 0.0029960309699392411;
	setAttr ".wl[63].w[2]" 0.018173095063843719;
	setAttr ".wl[63].w[9]" 0.97883087396621704;
	setAttr -s 3 ".wl[64].w";
	setAttr ".wl[64].w[1]" 0.0027263558122769911;
	setAttr ".wl[64].w[2]" 0.0044353806760652941;
	setAttr ".wl[64].w[9]" 0.99283826351165771;
	setAttr -s 3 ".wl[65].w";
	setAttr ".wl[65].w[0]" 3.2996082970514242e-005;
	setAttr ".wl[65].w[1]" 0.0024860154145270445;
	setAttr ".wl[65].w[9]" 0.99748098850250244;
	setAttr -s 3 ".wl[66].w";
	setAttr ".wl[66].w[0]" 3.342194332521354e-005;
	setAttr ".wl[66].w[1]" 0.0025533600352819642;
	setAttr ".wl[66].w[9]" 0.99741321802139282;
	setAttr -s 3 ".wl[67].w";
	setAttr ".wl[67].w[0]" 3.3729129579522346e-005;
	setAttr ".wl[67].w[1]" 0.0023886036340923528;
	setAttr ".wl[67].w[9]" 0.99757766723632813;
	setAttr -s 3 ".wl[68].w";
	setAttr ".wl[68].w[0]" 1.9923244959035839e-005;
	setAttr ".wl[68].w[1]" 0.0016849484095514621;
	setAttr ".wl[68].w[9]" 0.9982951283454895;
	setAttr -s 3 ".wl[69].w";
	setAttr ".wl[69].w[0]" 4.3743049194524801e-005;
	setAttr ".wl[69].w[1]" 0.0032665797123411196;
	setAttr ".wl[69].w[9]" 0.99668967723846436;
	setAttr -s 3 ".wl[70].w";
	setAttr ".wl[70].w[1]" 0.002101104879170645;
	setAttr ".wl[70].w[2]" 0.50470827875158197;
	setAttr ".wl[70].w[9]" 0.49319061636924744;
	setAttr -s 3 ".wl[71].w";
	setAttr ".wl[71].w[1]" 0.0021165454379834217;
	setAttr ".wl[71].w[2]" 0.47093446612436402;
	setAttr ".wl[71].w[9]" 0.52694898843765259;
	setAttr -s 3 ".wl[72].w";
	setAttr ".wl[72].w[1]" 0.0019303648486475148;
	setAttr ".wl[72].w[2]" 0.47357057642790279;
	setAttr ".wl[72].w[9]" 0.52449905872344971;
	setAttr -s 3 ".wl[73].w";
	setAttr ".wl[73].w[1]" 0.0020653986135958035;
	setAttr ".wl[73].w[2]" 0.48690625198683757;
	setAttr ".wl[73].w[9]" 0.51102834939956665;
	setAttr -s 3 ".wl[74].w";
	setAttr ".wl[74].w[1]" 0.0025732527111983422;
	setAttr ".wl[74].w[2]" 0.4998094131613755;
	setAttr ".wl[74].w[9]" 0.49761733412742615;
	setAttr -s 3 ".wl[75].w";
	setAttr ".wl[75].w[1]" 0.0025878337923106384;
	setAttr ".wl[75].w[2]" 0.45745917281474502;
	setAttr ".wl[75].w[9]" 0.53995299339294434;
	setAttr -s 3 ".wl[76].w";
	setAttr ".wl[76].w[1]" 0.0047505113773501336;
	setAttr ".wl[76].w[2]" 0.48977933195303319;
	setAttr ".wl[76].w[9]" 0.5054701566696167;
	setAttr -s 3 ".wl[77].w";
	setAttr ".wl[77].w[1]" 0.00036846884802264424;
	setAttr ".wl[77].w[2]" 0.98169249296188354;
	setAttr ".wl[77].w[9]" 0.01793903819009381;
	setAttr -s 3 ".wl[78].w";
	setAttr ".wl[78].w[1]" 0.00037185881744330296;
	setAttr ".wl[78].w[2]" 0.9789283275604248;
	setAttr ".wl[78].w[9]" 0.020699813622131892;
	setAttr -s 3 ".wl[79].w";
	setAttr ".wl[79].w[1]" 0.00031459990697645416;
	setAttr ".wl[79].w[2]" 0.97992986440658569;
	setAttr ".wl[79].w[9]" 0.019755535686437852;
	setAttr -s 3 ".wl[80].w";
	setAttr ".wl[80].w[1]" 0.0002691868228063771;
	setAttr ".wl[80].w[2]" 0.97937697172164917;
	setAttr ".wl[80].w[9]" 0.020353841455544454;
	setAttr -s 3 ".wl[81].w";
	setAttr ".wl[81].w[1]" 0.00033331250040656855;
	setAttr ".wl[81].w[2]" 0.9794151782989502;
	setAttr ".wl[81].w[9]" 0.020251509200643236;
	setAttr -s 3 ".wl[82].w";
	setAttr ".wl[82].w[1]" 0.00073238626685700949;
	setAttr ".wl[82].w[2]" 0.97474569082260132;
	setAttr ".wl[82].w[9]" 0.024521922910541671;
	setAttr -s 3 ".wl[83].w";
	setAttr ".wl[83].w[1]" 0.00085742842608955571;
	setAttr ".wl[83].w[2]" 0.97481369972229004;
	setAttr ".wl[83].w[9]" 0.024328871851620405;
	setAttr -s 3 ".wl[84].w[0:2]"  3.3468195031844898e-007 2.2732315577757724e-005 
		0.99997693300247192;
	setAttr -s 3 ".wl[85].w[0:2]"  2.6080979846995423e-007 1.8037816147574968e-005 
		0.99998170137405396;
	setAttr -s 3 ".wl[86].w[0:2]"  3.3352382575151907e-007 2.3865961953057076e-005 
		0.99997580051422119;
	setAttr -s 3 ".wl[87].w[0:2]"  3.303299764309901e-007 2.4047969736703775e-005 
		0.99997562170028687;
	setAttr -s 3 ".wl[88].w[0:2]"  6.5554675296599638e-007 4.6908959777795724e-005 
		0.99995243549346924;
	setAttr -s 3 ".wl[89].w[0:2]"  5.5050473120750621e-007 3.8073305083245619e-005 
		0.99996137619018555;
	setAttr -s 3 ".wl[90].w[0:2]"  7.2471258745407895e-007 4.9223979734323265e-005 
		0.99995005130767822;
	setAttr -s 3 ".wl[91].w[1:3]"  0.079396178055629041 0.677543044090271 
		0.24306077785409996;
	setAttr -s 3 ".wl[92].w[1:3]"  0.077800300806992781 0.66415375471115112 
		0.25804594448185608;
	setAttr -s 3 ".wl[93].w[1:3]"  0.07445987622910015 0.65035998821258545 
		0.27518013555831439;
	setAttr -s 3 ".wl[94].w[1:3]"  0.074161005157848597 0.67105978727340698 
		0.25477920756874445;
	setAttr -s 3 ".wl[95].w[1:3]"  0.053602183882096151 0.69877064228057861 
		0.24762717383732522;
	setAttr -s 3 ".wl[96].w[1:3]"  0.022308320968932763 0.7604326605796814 
		0.21725901845138584;
	setAttr -s 3 ".wl[97].w[1:3]"  0.02454726027754069 0.77886331081390381 
		0.19658942890855549;
	setAttr -s 3 ".wl[98].w[1:3]"  0.00012399316813280055 0.034434362640125254 
		0.96544164419174194;
	setAttr -s 3 ".wl[99].w[1:3]"  0.00012866594529450015 0.036394676187273857 
		0.96347665786743164;
	setAttr -s 3 ".wl[100].w[1:3]"  0.00013636075819520451 0.039927676087965686 
		0.95993596315383911;
	setAttr -s 3 ".wl[101].w[1:3]"  9.207999129050786e-005 0.027435073500683371 
		0.97247284650802612;
	setAttr -s 3 ".wl[102].w[1:3]"  5.1753005936627658e-005 0.015153749504134173 
		0.9847944974899292;
	setAttr -s 3 ".wl[103].w[1:3]"  8.3888055718168259e-005 0.023728703973853366 
		0.97618740797042847;
	setAttr -s 3 ".wl[104].w[1:3]"  8.2880884334492278e-005 0.023016958803012921 
		0.97690016031265259;
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
	setAttr -s 3 ".wl[112].w[3:5]"  0.011943053407692014 0.98801171779632568 
		4.5228795982301577e-005;
	setAttr -s 3 ".wl[113].w[3:5]"  0.01192860279774427 0.98802703619003296 
		4.4361012222770889e-005;
	setAttr -s 3 ".wl[114].w[3:5]"  0.012129938257414343 0.98782646656036377 
		4.3595182221887846e-005;
	setAttr -s 3 ".wl[115].w[3:5]"  0.01884579626944095 0.98108762502670288 
		6.6578703856168199e-005;
	setAttr -s 3 ".wl[116].w[3:5]"  0.019713124357571596 0.98021602630615234 
		7.0849336276059948e-005;
	setAttr -s 3 ".wl[117].w[3:5]"  0.034265642308024105 0.9656069278717041 
		0.00012742982027179269;
	setAttr -s 3 ".wl[118].w[3:5]"  0.034071103234234366 0.96579986810684204 
		0.00012902865892359372;
	setAttr -s 3 ".wl[119].w[3:5]"  0.025077804873019978 0.80660517518755737 
		0.16831701993942261;
	setAttr -s 3 ".wl[120].w[3:5]"  0.024578650114890622 0.80074485707486009 
		0.17467649281024933;
	setAttr -s 3 ".wl[121].w[3:5]"  0.025394565320823011 0.8174632574550178 
		0.15714217722415924;
	setAttr -s 3 ".wl[122].w[3:5]"  0.02701549653068246 0.83285671051487264 
		0.14012779295444489;
	setAttr -s 3 ".wl[123].w[3:5]"  0.029011391697692183 0.85035233885212014 
		0.12063626945018768;
	setAttr -s 3 ".wl[124].w[3:5]"  0.031365719296586728 0.89247039272581319 
		0.076163887977600098;
	setAttr -s 3 ".wl[125].w[3:5]"  0.032590797492698345 0.91280949642376552 
		0.054599706083536148;
	setAttr -s 3 ".wl[126].w[3:5]"  2.5545844100547875e-005 0.0092936999711765514 
		0.9906807541847229;
	setAttr -s 3 ".wl[127].w[3:5]"  2.2140779335061805e-005 0.0082056843854598598 
		0.99177217483520508;
	setAttr -s 3 ".wl[128].w[3:5]"  2.1485857676887128e-005 0.0082462744191175458 
		0.99173223972320557;
	setAttr -s 3 ".wl[129].w[3:5]"  2.2032602735422928e-005 0.0086058589377919215 
		0.99137210845947266;
	setAttr -s 3 ".wl[130].w[3:5]"  2.5861557918656524e-005 0.0099256703291357874 
		0.99004846811294556;
	setAttr -s 3 ".wl[131].w[3:5]"  3.0948033600804535e-005 0.011469768175810817 
		0.98849928379058838;
	setAttr -s 3 ".wl[132].w[3:5]"  5.6599509776229169e-005 0.020591164696156388 
		0.97935223579406738;
	setAttr -s 3 ".wl[133].w[4:6]"  0.020553956362449902 0.96123373508453369 
		0.01821230855301641;
	setAttr -s 3 ".wl[134].w[4:6]"  0.021079778156402301 0.96023786067962646 
		0.018682361163971234;
	setAttr -s 3 ".wl[135].w[4:6]"  0.021331364397638497 0.95976179838180542 
		0.018906837220556087;
	setAttr -s 3 ".wl[136].w[4:6]"  0.021156539033141786 0.96008741855621338 
		0.018756042410644838;
	setAttr -s 3 ".wl[137].w[4:6]"  0.021537205932562267 0.95937347412109375 
		0.019089319946343983;
	setAttr -s 3 ".wl[138].w[4:6]"  0.022529582003012315 0.95750313997268677 
		0.019967278024300917;
	setAttr -s 3 ".wl[139].w[4:6]"  0.023501393094413351 0.95567465357318948 
		0.02082395333239722;
	setAttr -s 3 ".wl[140].w[4:6]"  9.3177131268500731e-006 0.0061554118820574761 
		0.99383527040481567;
	setAttr -s 3 ".wl[141].w[4:6]"  8.3849209084739624e-006 0.0056519105655417215 
		0.9943397045135498;
	setAttr -s 3 ".wl[142].w[4:6]"  7.040800537683842e-006 0.0049317404609064081 
		0.99506121873855591;
	setAttr -s 3 ".wl[143].w[4:6]"  5.6724430256906408e-006 0.0040501256107157643 
		0.99594420194625854;
	setAttr -s 3 ".wl[144].w[4:6]"  9.9567453678886458e-006 0.0069742175061885082 
		0.9930158257484436;
	setAttr -s 3 ".wl[145].w[4:6]"  1.0798585655303615e-005 0.0072788494703749694 
		0.99271035194396973;
	setAttr -s 3 ".wl[146].w[4:6]"  7.3886282968579902e-006 0.0048810267083120289 
		0.99511158466339111;
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
	setAttr -s 3 ".wl[154].w[6:8]"  0.0033947802964091754 0.99659830331802368 
		6.9163855671431022e-006;
	setAttr -s 3 ".wl[155].w[6:8]"  0.0035459815846123227 0.99644696712493896 
		7.0512904487125798e-006;
	setAttr -s 3 ".wl[156].w[6:8]"  0.0035558206268876194 0.9964374303817749 
		6.7489913374783588e-006;
	setAttr -s 3 ".wl[157].w[6:8]"  0.0071509221276504203 0.99283581972122192 
		1.3258151127655946e-005;
	setAttr -s 3 ".wl[158].w[6:8]"  0.0070770170589662344 0.99290955066680908 
		1.343227422468331e-005;
	setAttr -s 3 ".wl[159].w[6:8]"  0.015732772516602964 0.98423594236373901 
		3.128511965802143e-005;
	setAttr -s 3 ".wl[160].w[6:8]"  0.01643307788321292 0.98353344202041626 
		3.3480096370819194e-005;
	setAttr -s 3 ".wl[161].w[6:8]"  0.0019682099333027257 0.39629989366624563 
		0.60173189640045166;
	setAttr -s 3 ".wl[162].w[6:8]"  0.00192611382004584 0.38121230437758602 
		0.61686158180236816;
	setAttr -s 3 ".wl[163].w[6:8]"  0.0018746026595553118 0.38571675933995642 
		0.61240863800048828;
	setAttr -s 3 ".wl[164].w[6:8]"  0.0019226147528000276 0.38908361655518336 
		0.6089937686920166;
	setAttr -s 3 ".wl[165].w[6:8]"  0.0019384233120812513 0.38772634586058718 
		0.61033523082733154;
	setAttr -s 3 ".wl[166].w[6:8]"  0.0025342213872351534 0.45207332494226316 
		0.54539245367050171;
	setAttr -s 3 ".wl[167].w[6:8]"  0.0026345367028087377 0.45457809023124279 
		0.54278737306594849;
	setAttr -s 3 ".wl[168].w[6:8]"  1.1786872320887904e-005 0.017830446308678867 
		0.98215776681900024;
	setAttr -s 3 ".wl[169].w[6:8]"  1.0560415409727439e-005 0.016933251954890566 
		0.98305618762969971;
	setAttr -s 3 ".wl[170].w[6:8]"  8.8719077676176433e-006 0.015886733179512655 
		0.98410439491271973;
	setAttr -s 3 ".wl[171].w[6:8]"  7.8734503942995967e-006 0.014875942791823717 
		0.98511618375778198;
	setAttr -s 3 ".wl[172].w[6:8]"  8.3122176678777943e-006 0.014884504325911223 
		0.9851071834564209;
	setAttr -s 3 ".wl[173].w[6:8]"  9.4934973308536441e-006 0.015222473475020221 
		0.98476803302764893;
	setAttr -s 3 ".wl[174].w[6:8]"  4.815818750843927e-006 0.0072850706558585309 
		0.99271011352539063;
	setAttr -s 3 ".wl[175].w[6:8]"  0.00018766176190816242 0.026946458702416787 
		0.97286587953567505;
	setAttr -s 3 ".wl[176].w[6:8]"  0.00017239030191718249 0.025069342295433891 
		0.97475826740264893;
	setAttr -s 3 ".wl[177].w[6:8]"  0.0001138026366454056 0.016882819448925883 
		0.98300337791442871;
	setAttr -s 3 ".wl[178].w[6:8]"  0.0001111000491216405 0.016635778574840762 
		0.9832531213760376;
	setAttr -s 3 ".wl[179].w[6:8]"  0.00011293223092008736 0.016753692124396074 
		0.98313337564468384;
	setAttr -s 3 ".wl[180].w[6:8]"  0.00011279056473849564 0.016402225991047636 
		0.98348498344421387;
	setAttr -s 3 ".wl[181].w[6:8]"  7.286959625190436e-005 0.01046338385604912 
		0.98946374654769897;
	setAttr -s 3 ".wl[182].w[6:8]"  0.000570790199794751 0.036453528972110766 
		0.96297568082809448;
	setAttr -s 3 ".wl[183].w[6:8]"  0.00065058855163902462 0.036531146487118298 
		0.96281826496124268;
	setAttr -s 3 ".wl[184].w[6:8]"  0.00046357320938267033 0.023903401621244772 
		0.97563302516937256;
	setAttr -s 3 ".wl[185].w[6:8]"  0.00030405163384006388 0.015227190259928247 
		0.98446875810623169;
	setAttr -s 3 ".wl[186].w[6:8]"  0.00029703000734759648 0.015315870249762999 
		0.9843870997428894;
	setAttr -s 3 ".wl[187].w[6:8]"  0.00028015135306946876 0.01573072911720641 
		0.98398911952972412;
	setAttr -s 3 ".wl[188].w[6:8]"  0.00011581023232413879 0.0073962227533631167 
		0.99248796701431274;
	setAttr -s 3 ".wl[189].w[6:8]"  0.00046067549715985665 0.025867351751222713 
		0.97367197275161743;
	setAttr -s 3 ".wl[190].w[6:8]"  0.00084680114333777546 0.035640837807010127 
		0.9635123610496521;
	setAttr -s 3 ".wl[191].w[6:8]"  0.00096076684595361071 0.035179853862511969 
		0.96385937929153442;
	setAttr -s 3 ".wl[192].w[6:8]"  0.00042383717296766015 0.014892827999609243 
		0.9846833348274231;
	setAttr -s 3 ".wl[193].w[6:8]"  0.00016982121792764751 0.006218246981230067 
		0.99361193180084229;
	setAttr -s 3 ".wl[194].w[6:8]"  0.00015459740562384273 0.0065068176944738133 
		0.99333858489990234;
	setAttr -s 3 ".wl[195].w[6:8]"  0.00012826756948738338 0.0072023288775035837 
		0.99266940355300903;
	setAttr -s 3 ".wl[196].w[6:8]"  0.00066968243900048527 0.03453109223064673 
		0.96479922533035278;
	setAttr -s 3 ".wl[197].w[6:8]"  0.00053372289968430864 0.019543028809300065 
		0.97992324829101563;
	setAttr -s 3 ".wl[198].w[6:8]"  0.00048101281054932206 0.014956292163052973 
		0.98456269502639771;
	setAttr -s 3 ".wl[199].w[6:8]"  0.00023707089674297272 0.0070137149308937457 
		0.99274921417236328;
	setAttr -s 3 ".wl[200].w[6:8]"  0.00021072804105101844 0.0065522533737439031 
		0.99323701858520508;
	setAttr -s 3 ".wl[201].w[6:8]"  0.00017272251012408755 0.0063244817936173679 
		0.99350279569625854;
	setAttr -s 3 ".wl[202].w[6:8]"  0.00014736687097065433 0.0075987335547495604 
		0.99225389957427979;
	setAttr -s 3 ".wl[203].w[6:8]"  0.00068555753196382157 0.034333363366473676 
		0.9649810791015625;
	setAttr -s 3 ".wl[204].w[6:8]"  0.0010449523743073816 0.036717629927786127 
		0.96223741769790649;
	setAttr -s 3 ".wl[205].w[6:8]"  0.0011853213425085378 0.035067594516713874 
		0.96374708414077759;
	setAttr -s 3 ".wl[206].w[6:8]"  0.00026524293344476393 0.0074596978433801872 
		0.99227505922317505;
	setAttr -s 3 ".wl[207].w[6:8]"  0.00034332094438438974 0.010157110116406626 
		0.98949956893920898;
	setAttr -s 3 ".wl[208].w[6:8]"  0.00043873415562540365 0.01541628016856283 
		0.98414498567581177;
	setAttr -s 3 ".wl[209].w[6:8]"  0.00029390341477330938 0.014718956883383429 
		0.98498713970184326;
	setAttr -s 3 ".wl[210].w[6:8]"  0.00066607984100425124 0.034345330872191548 
		0.9649885892868042;
	setAttr -s 3 ".wl[211].w[6:8]"  0.00093948487347447838 0.034400585851012827 
		0.9646599292755127;
	setAttr -s 3 ".wl[212].w[6:8]"  0.00025669121441653311 0.0079813859492797561 
		0.99176192283630371;
	setAttr -s 3 ".wl[213].w[6:8]"  0.00027747982211169997 0.0082092083149427428 
		0.99151331186294556;
	setAttr -s 3 ".wl[214].w[6:8]"  0.00053913105478144456 0.016763382067777149 
		0.98269748687744141;
	setAttr -s 3 ".wl[215].w[6:8]"  0.0004306693579242767 0.01576957506880302 
		0.98379975557327271;
	setAttr -s 3 ".wl[216].w[6:8]"  0.00028401443373177258 0.01464474371064689 
		0.98507124185562134;
	setAttr -s 3 ".wl[217].w[6:8]"  0.00014679531216862338 0.0082426776492571571 
		0.99161052703857422;
	setAttr -s 3 ".wl[218].w[6:8]"  0.0001563652464374902 0.0065812245896831149 
		0.99326241016387939;
	setAttr -s 3 ".wl[219].w[6:8]"  0.0001883000803846056 0.0068948774861437145 
		0.99291682243347168;
	setAttr -s 3 ".wl[220].w[6:8]"  0.0001994898371502559 0.0070096919484332401 
		0.9927908182144165;
	setAttr -s 3 ".wl[221].w[6:8]"  0.00043297642144731542 0.015854052368072948 
		0.98371297121047974;
	setAttr -s 3 ".wl[222].w[6:8]"  0.0003570541519696131 0.015027977548164664 
		0.98461496829986572;
	setAttr -s 3 ".wl[223].w[6:8]"  0.00055993151894241308 0.031440669772714078 
		0.96799939870834351;
	setAttr -s 3 ".wl[224].w[6:8]"  0.00010290054944817955 0.0065717467817896138 
		0.99332535266876221;
	setAttr -s 3 ".wl[225].w[6:8]"  0.00011065948841407385 0.006213631740833973 
		0.99367570877075195;
	setAttr -s 3 ".wl[226].w[6:8]"  0.00011910636549294676 0.0061415271031349831 
		0.99373936653137207;
	setAttr -s 3 ".wl[227].w[6:8]"  0.00012192241108014729 0.0061059881075660929 
		0.99377208948135376;
	setAttr -s 3 ".wl[228].w[6:8]"  0.0002715885270225156 0.014004021919907416 
		0.98572438955307007;
	setAttr -s 3 ".wl[229].w[6:8]"  0.00026236469919825307 0.014732018159078115 
		0.98500561714172363;
	setAttr -s 3 ".wl[230].w[6:8]"  0.00025551465274200832 0.016318450896726986 
		0.98342603445053101;
	setAttr -s 3 ".wl[231].w[6:8]"  6.2761265691023291e-005 0.0090119266920726492 
		0.99092531204223633;
	setAttr -s 3 ".wl[232].w[6:8]"  5.8249479691967094e-005 0.0084707579551530042 
		0.99147099256515503;
	setAttr -s 3 ".wl[233].w[6:8]"  5.7673934588441551e-005 0.00855603170048236 
		0.9913862943649292;
	setAttr -s 3 ".wl[234].w[6:8]"  5.4202016461706415e-005 0.0081160450614801878 
		0.99182975292205811;
	setAttr -s 3 ".wl[235].w[6:8]"  0.00010329299644277184 0.015323700373613381 
		0.98457300662994385;
	setAttr -s 3 ".wl[236].w[6:8]"  0.00010418376263119828 0.01515061178866885 
		0.98474520444869995;
	setAttr -s 3 ".wl[237].w[6:8]"  0.00011475756204300522 0.016478102659819787 
		0.98340713977813721;
	setAttr -s 3 ".wl[238].w[6:8]"  9.1577890351809889e-006 0.013853332864956519 
		0.9861375093460083;
	setAttr -s 3 ".wl[239].w[6:8]"  8.1284276568135746e-006 0.013033665872422532 
		0.98695820569992065;
	setAttr -s 3 ".wl[240].w[6:8]"  9.0680259215398189e-006 0.016237966046954436 
		0.98375296592712402;
	setAttr -s 3 ".wl[241].w[6:8]"  8.4175145202584836e-006 0.015903876873297123 
		0.98408770561218262;
	setAttr -s 3 ".wl[242].w[6:8]"  8.6840559530795857e-006 0.015550393206925339 
		0.98444092273712158;
	setAttr -s 3 ".wl[243].w[6:8]"  9.852121240822757e-006 0.015797538091771871 
		0.9841926097869873;
	setAttr -s 3 ".wl[244].w[6:8]"  1.0784412684112844e-005 0.016313974116978974 
		0.98367524147033691;
	setAttr -s 3 ".wl[245].w[6:8]"  0.0037398478772717862 0.5885761239740771 
		0.40768402814865112;
	setAttr -s 3 ".wl[246].w[6:8]"  0.003732787289011249 0.55817909368098995 
		0.43808811902999878;
	setAttr -s 3 ".wl[247].w[6:8]"  0.0035131613942634425 0.54276889159951092 
		0.45371794700622559;
	setAttr -s 3 ".wl[248].w[6:8]"  0.0022221413453367904 0.53047410575549325 
		0.46730375289916992;
	setAttr -s 3 ".wl[249].w[6:8]"  0.0020118647556159591 0.47669681968881156 
		0.52129131555557251;
	setAttr -s 3 ".wl[250].w[6:8]"  0.0021992342529019607 0.5072195215168277 
		0.49058124423027039;
	setAttr -s 3 ".wl[251].w[6:8]"  0.0030671990251906868 0.51064204808708347 
		0.48629075288772583;
	setAttr -s 3 ".wl[252].w[6:8]"  0.0091506969088497245 0.99083065986633301 
		1.8643224817267563e-005;
	setAttr -s 3 ".wl[253].w[6:8]"  0.017322248038945796 0.98264330625534058 
		3.4445705713628932e-005;
	setAttr -s 3 ".wl[254].w[6:8]"  0.016722411101887012 0.983245849609375 
		3.1739288737988308e-005;
	setAttr -s 3 ".wl[255].w[6:8]"  0.0039216289014189542 0.99607110023498535 
		7.2708635956938922e-006;
	setAttr -s 3 ".wl[256].w[6:8]"  0.0038063997949745821 0.99618637561798096 
		7.2245870444608734e-006;
	setAttr -s 3 ".wl[257].w[6:8]"  0.0038225336640544828 0.99616986513137817 
		7.6012045673435704e-006;
	setAttr -s 3 ".wl[258].w[6:8]"  0.0037723812774070136 0.9962199330329895 
		7.6856896034844457e-006;
	setAttr -s 3 ".wl[259].w[5:7]"  0.0097740574049753146 0.96803892196538033 
		0.022187020629644394;
	setAttr -s 3 ".wl[260].w[5:7]"  0.0093421145410572896 0.94568968647408136 
		0.044968198984861374;
	setAttr -s 3 ".wl[261].w[5:7]"  0.0090210675648279559 0.95097230231251051 
		0.040006630122661591;
	setAttr -s 3 ".wl[262].w[5:7]"  0.0089014913117962668 0.9582172897481841 
		0.032881218940019608;
	setAttr -s 3 ".wl[263].w[5:7]"  0.0092803107209374867 0.97830080822036958 
		0.012418881058692932;
	setAttr -s 3 ".wl[264].w[5:7]"  0.0096793236944802512 0.97982403077678037 
		0.010496645528739365;
	setAttr -s 3 ".wl[265].w[5:7]"  0.0098889269175779296 0.97941222759683977 
		0.010698845485582359;
	setAttr -s 3 ".wl[266].w[4:6]"  1.3510593123598927e-005 0.0089252787745521828 
		0.99106121063232422;
	setAttr -s 3 ".wl[267].w[4:6]"  1.1688242809697874e-005 0.0078785362139774107 
		0.99210977554321289;
	setAttr -s 3 ".wl[268].w[4:6]"  1.0371493977482975e-005 0.0072647330287275947 
		0.99272489547729492;
	setAttr -s 3 ".wl[269].w[4:6]"  5.4662810534654915e-006 0.0039029294861584484 
		0.99609160423278809;
	setAttr -s 3 ".wl[270].w[4:6]"  5.9962246527650761e-006 0.0042000651385674494 
		0.99579393863677979;
	setAttr -s 3 ".wl[271].w[4:6]"  6.8170557132712836e-006 0.0045950787534603131 
		0.99539810419082642;
	setAttr -s 3 ".wl[272].w[4:6]"  7.0534139652718779e-006 0.0046595730394343865 
		0.99533337354660034;
	setAttr -s 3 ".wl[273].w[4:6]"  0.023446786954708469 0.95577764511108398 
		0.02077556793420755;
	setAttr -s 3 ".wl[274].w[4:6]"  0.02312029645270261 0.95638905261713347 
		0.02049065093016398;
	setAttr -s 3 ".wl[275].w[4:6]"  0.02216215025928497 0.94658228043171888 
		0.031255569308996201;
	setAttr -s 3 ".wl[276].w[4:6]"  0.021562940878454239 0.93609608759206198 
		0.042340971529483795;
	setAttr -s 3 ".wl[277].w[4:6]"  0.021849703535046436 0.93323676611522211 
		0.044913530349731445;
	setAttr -s 3 ".wl[278].w[4:6]"  0.022744436824268209 0.94084064561730019 
		0.036414917558431625;
	setAttr -s 3 ".wl[279].w[4:6]"  0.023392207511242009 0.95123562071425138 
		0.025372171774506569;
	setAttr -s 3 ".wl[280].w[3:5]"  4.1908688141910072e-005 0.015246563487456235 
		0.98471152782440186;
	setAttr -s 3 ".wl[281].w[3:5]"  3.9602365402466007e-005 0.014677201662154906 
		0.98528319597244263;
	setAttr -s 3 ".wl[282].w[3:5]"  5.0724674742838043e-005 0.019468127559143882 
		0.98048114776611328;
	setAttr -s 3 ".wl[283].w[3:5]"  4.1869383813772616e-005 0.01635405709171113 
		0.9836040735244751;
	setAttr -s 3 ".wl[284].w[3:5]"  4.0413147771036395e-005 0.015510557883417929 
		0.98444902896881104;
	setAttr -s 3 ".wl[285].w[3:5]"  2.7029752888639391e-005 0.010017604589304964 
		0.9899553656578064;
	setAttr -s 3 ".wl[286].w[3:5]"  3.3401934864060284e-005 0.012151754410503372 
		0.98781484365463257;
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
	setAttr -s 3 ".wl[292].w[3:5]"  0.032419966088886969 0.92246415696824002 
		0.045115876942873001;
	setAttr -s 3 ".wl[293].w[3:5]"  0.031823254252740907 0.89131013390891833 
		0.076866611838340759;
	setAttr -s 3 ".wl[294].w[3:5]"  0.019049090110837778 0.98087877035140991 
		7.2139537752309582e-005;
	setAttr -s 3 ".wl[295].w[3:5]"  0.019648972498979053 0.98027795553207397 
		7.3071968946970746e-005;
	setAttr -s 3 ".wl[296].w[3:5]"  0.025708784172731643 0.97419881820678711 
		9.2397620481245963e-005;
	setAttr -s 3 ".wl[297].w[3:5]"  0.038867075720028649 0.96099561452865601 
		0.00013730975131534656;
	setAttr -s 3 ".wl[298].w[3:5]"  0.039957384512670939 0.95989900827407837 
		0.00014360721325069382;
	setAttr -s 3 ".wl[299].w[3:5]"  0.019242787248029056 0.98068565130233765 
		7.1561449633298437e-005;
	setAttr -s 3 ".wl[300].w[3:5]"  0.019513974319392512 0.98041212558746338 
		7.3900093144108184e-005;
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
	setAttr -s 3 ".wl[308].w[1:3]"  2.5572087704165557e-005 0.0071016533113131683 
		0.99287277460098267;
	setAttr -s 3 ".wl[309].w[1:3]"  2.3305862817275534e-005 0.0065923328700928808 
		0.99338436126708984;
	setAttr -s 3 ".wl[310].w[1:3]"  2.3181626683060453e-005 0.0067877815271560511 
		0.99318903684616089;
	setAttr -s 3 ".wl[311].w[1:3]"  2.6283411101832744e-005 0.0078310988864140358 
		0.99214261770248413;
	setAttr -s 3 ".wl[312].w[1:3]"  3.2475266290392863e-005 0.0095090362693541382 
		0.99045848846435547;
	setAttr -s 3 ".wl[313].w[1:3]"  6.9146396106379947e-005 0.01955884194236408 
		0.98037201166152954;
	setAttr -s 3 ".wl[314].w[1:3]"  0.0001330117901479044 0.036938812283643596 
		0.9629281759262085;
	setAttr -s 3 ".wl[315].w[1:3]"  0.1602122004366385 0.56668682738776333 
		0.27310097217559814;
	setAttr -s 3 ".wl[316].w[1:3]"  0.15294282792069355 0.53436724187872964 
		0.31268993020057678;
	setAttr -s 3 ".wl[317].w[1:3]"  0.14074494062287426 0.49697457136290452 
		0.36228048801422119;
	setAttr -s 3 ".wl[318].w[1:3]"  0.12975642773290263 0.48048868087152846 
		0.38975489139556885;
	setAttr -s 3 ".wl[319].w[1:3]"  0.1199719608083709 0.48713895675983593 
		0.39288908243179321;
	setAttr -s 3 ".wl[320].w[1:3]"  0.11330581428047345 0.51579614757064651 
		0.37089803814888;
	setAttr -s 3 ".wl[321].w[1:3]"  0.082725930715486742 0.59631253430755404 
		0.32096153497695923;
	setAttr -s 3 ".wl[322].w[0:2]"  3.6140543515570956e-006 0.00024547375616480033 
		0.99975091218948364;
	setAttr -s 3 ".wl[323].w[0:2]"  4.7149668735817958e-006 0.00032609081162983616 
		0.99966919422149658;
	setAttr -s 3 ".wl[324].w[0:2]"  4.1937122636330778e-006 0.00030008799931473604 
		0.99969571828842163;
	setAttr -s 3 ".wl[325].w[0:2]"  6.5597587427083151e-006 0.00047754916612301434 
		0.99951589107513428;
	setAttr -s 3 ".wl[326].w[0:2]"  3.4699781629743975e-006 0.00024830004136827558 
		0.99974822998046875;
	setAttr -s 3 ".wl[327].w[0:2]"  2.1714324977992032e-006 0.00015017803954809922 
		0.9998476505279541;
	setAttr -s 3 ".wl[328].w[0:2]"  2.0504742620307262e-006 0.00013927213850042043 
		0.99985867738723755;
	setAttr -s 3 ".wl[329].w";
	setAttr ".wl[329].w[1]" 0.0034203506265929255;
	setAttr ".wl[329].w[2]" 0.94049209356307983;
	setAttr ".wl[329].w[9]" 0.05608755581032724;
	setAttr -s 3 ".wl[330].w";
	setAttr ".wl[330].w[1]" 0.0025324440305512608;
	setAttr ".wl[330].w[2]" 0.93557941913604736;
	setAttr ".wl[330].w[9]" 0.061888136833401379;
	setAttr -s 3 ".wl[331].w";
	setAttr ".wl[331].w[1]" 0.0016344765288943482;
	setAttr ".wl[331].w[2]" 0.93634814023971558;
	setAttr ".wl[331].w[9]" 0.062017383231390069;
	setAttr -s 3 ".wl[332].w";
	setAttr ".wl[332].w[1]" 0.0017473031005402291;
	setAttr ".wl[332].w[2]" 0.9351697564125061;
	setAttr ".wl[332].w[9]" 0.063082940486953662;
	setAttr -s 3 ".wl[333].w";
	setAttr ".wl[333].w[1]" 0.0012852840194633945;
	setAttr ".wl[333].w[2]" 0.95561695098876953;
	setAttr ".wl[333].w[9]" 0.043097764991767075;
	setAttr -s 3 ".wl[334].w";
	setAttr ".wl[334].w[1]" 0.0014184535331643164;
	setAttr ".wl[334].w[2]" 0.97175687551498413;
	setAttr ".wl[334].w[9]" 0.026824670951851554;
	setAttr -s 3 ".wl[335].w";
	setAttr ".wl[335].w[1]" 0.0015650818212436599;
	setAttr ".wl[335].w[2]" 0.97778779268264771;
	setAttr ".wl[335].w[9]" 0.020647125496108636;
	setAttr -s 3 ".wl[336].w";
	setAttr ".wl[336].w[1]" 0.0026197579113512136;
	setAttr ".wl[336].w[2]" 0.56087292764506058;
	setAttr ".wl[336].w[9]" 0.43650731444358826;
	setAttr -s 3 ".wl[337].w";
	setAttr ".wl[337].w[1]" 0.0023794402131428224;
	setAttr ".wl[337].w[2]" 0.54586736068636277;
	setAttr ".wl[337].w[9]" 0.45175319910049438;
	setAttr -s 3 ".wl[338].w";
	setAttr ".wl[338].w[1]" 0.0031356710204148552;
	setAttr ".wl[338].w[2]" 0.51590619504365676;
	setAttr ".wl[338].w[9]" 0.48095813393592834;
	setAttr -s 3 ".wl[339].w";
	setAttr ".wl[339].w[1]" 0.0032798653256916684;
	setAttr ".wl[339].w[2]" 0.47435861772179366;
	setAttr ".wl[339].w[9]" 0.52236151695251465;
	setAttr -s 3 ".wl[340].w";
	setAttr ".wl[340].w[1]" 0.0031831764481004238;
	setAttr ".wl[340].w[2]" 0.46846837765956562;
	setAttr ".wl[340].w[9]" 0.52834844589233398;
	setAttr -s 3 ".wl[341].w";
	setAttr ".wl[341].w[1]" 0.0028201876564088587;
	setAttr ".wl[341].w[2]" 0.41809803858565658;
	setAttr ".wl[341].w[9]" 0.57908177375793457;
	setAttr -s 3 ".wl[342].w";
	setAttr ".wl[342].w[1]" 0.0036932007679109065;
	setAttr ".wl[342].w[2]" 0.44997968512686448;
	setAttr ".wl[342].w[9]" 0.54632711410522461;
	setAttr -s 3 ".wl[343].w";
	setAttr ".wl[343].w[1]" 0.0021781756948514382;
	setAttr ".wl[343].w[2]" 0.015765862219424685;
	setAttr ".wl[343].w[9]" 0.98205596208572388;
	setAttr -s 3 ".wl[344].w";
	setAttr ".wl[344].w[1]" 0.0019778697653669102;
	setAttr ".wl[344].w[2]" 0.023937752945814732;
	setAttr ".wl[344].w[9]" 0.97408437728881836;
	setAttr -s 3 ".wl[345].w";
	setAttr ".wl[345].w[1]" 0.0029993131468974842;
	setAttr ".wl[345].w[2]" 0.018493644921950173;
	setAttr ".wl[345].w[9]" 0.97850704193115234;
	setAttr -s 3 ".wl[346].w";
	setAttr ".wl[346].w[1]" 0.0028900343044238768;
	setAttr ".wl[346].w[2]" 0.0082905453578991217;
	setAttr ".wl[346].w[9]" 0.988819420337677;
	setAttr -s 3 ".wl[347].w";
	setAttr ".wl[347].w[1]" 0.0018770201771870351;
	setAttr ".wl[347].w[2]" 0.0007184044749125744;
	setAttr ".wl[347].w[9]" 0.99740457534790039;
	setAttr -s 3 ".wl[348].w";
	setAttr ".wl[348].w[0]" 1.3977268549131021e-005;
	setAttr ".wl[348].w[1]" 0.0012157857624567284;
	setAttr ".wl[348].w[9]" 0.99877023696899414;
	setAttr -s 3 ".wl[349].w";
	setAttr ".wl[349].w[0]" 5.2564110874268026e-005;
	setAttr ".wl[349].w[1]" 0.0019300055836447749;
	setAttr ".wl[349].w[9]" 0.99801743030548096;
	setAttr -s 3 ".wl[350].w";
	setAttr ".wl[350].w[0]" 6.1193725103961707e-006;
	setAttr ".wl[350].w[1]" 0.00059737765584043389;
	setAttr ".wl[350].w[9]" 0.99939650297164917;
	setAttr -s 3 ".wl[351].w";
	setAttr ".wl[351].w[0]" 4.5321099024398633e-006;
	setAttr ".wl[351].w[1]" 0.00054901622612661292;
	setAttr ".wl[351].w[9]" 0.99944645166397095;
	setAttr -s 3 ".wl[352].w";
	setAttr ".wl[352].w[0]" 3.9867307834662813e-006;
	setAttr ".wl[352].w[1]" 0.00047684393861960989;
	setAttr ".wl[352].w[9]" 0.99951916933059692;
	setAttr -s 3 ".wl[353].w";
	setAttr ".wl[353].w[0]" 3.8912230360770379e-006;
	setAttr ".wl[353].w[1]" 0.00045881963435528039;
	setAttr ".wl[353].w[9]" 0.99953728914260864;
	setAttr -s 3 ".wl[354].w";
	setAttr ".wl[354].w[0]" 3.4744348960360286e-006;
	setAttr ".wl[354].w[1]" 0.00036065034003682531;
	setAttr ".wl[354].w[9]" 0.99963587522506714;
	setAttr -s 3 ".wl[355].w";
	setAttr ".wl[355].w[0]" 4.1876313150579986e-006;
	setAttr ".wl[355].w[1]" 0.00037346739798181698;
	setAttr ".wl[355].w[9]" 0.99962234497070313;
	setAttr -s 3 ".wl[356].w";
	setAttr ".wl[356].w[0]" 7.2675442398793908e-006;
	setAttr ".wl[356].w[1]" 0.00044382040742027687;
	setAttr ".wl[356].w[9]" 0.99954891204833984;
	setAttr -s 3 ".wl[357].w";
	setAttr ".wl[357].w[0]" 2.0695463180711024e-006;
	setAttr ".wl[357].w[1]" 0.00025309793796537614;
	setAttr ".wl[357].w[9]" 0.99974483251571655;
	setAttr -s 3 ".wl[358].w";
	setAttr ".wl[358].w[0]" 1.9511394995571055e-006;
	setAttr ".wl[358].w[1]" 0.00027145536608515967;
	setAttr ".wl[358].w[9]" 0.99972659349441528;
	setAttr -s 3 ".wl[359].w";
	setAttr ".wl[359].w[0]" 2.7728225856712719e-006;
	setAttr ".wl[359].w[1]" 0.00046440838316384042;
	setAttr ".wl[359].w[9]" 0.99953281879425049;
	setAttr -s 3 ".wl[360].w";
	setAttr ".wl[360].w[0]" 1.2066226151502101e-006;
	setAttr ".wl[360].w[1]" 0.00022266842316121698;
	setAttr ".wl[360].w[9]" 0.99977612495422363;
	setAttr -s 3 ".wl[361].w";
	setAttr ".wl[361].w[0]" 2.6963815523026886e-006;
	setAttr ".wl[361].w[1]" 0.00044350398923627155;
	setAttr ".wl[361].w[9]" 0.99955379962921143;
	setAttr -s 3 ".wl[362].w";
	setAttr ".wl[362].w[0]" 1.7335899230913567e-006;
	setAttr ".wl[362].w[1]" 0.00023108215256958443;
	setAttr ".wl[362].w[9]" 0.99976718425750732;
	setAttr -s 3 ".wl[363].w";
	setAttr ".wl[363].w[0]" 1.8882971099725086e-006;
	setAttr ".wl[363].w[1]" 0.00021948335358582829;
	setAttr ".wl[363].w[9]" 0.9997786283493042;
	setAttr -s 3 ".wl[364].w[6:8]"  0.00015696992406103154 0.02282687912455347 
		0.9770161509513855;
	setAttr -s 3 ".wl[365].w[6:8]"  1.0454560361299993e-005 0.016763544176973906 
		0.98322600126266479;
	setAttr -s 3 ".wl[366].w[6:8]"  0.0035152333861159456 0.61858151377384196 
		0.37790325284004211;
	setAttr -s 3 ".wl[367].w[6:8]"  0.0036679286257868342 0.99632477760314941 
		7.2937710637517935e-006;
	setAttr -s 3 ".wl[368].w[5:7]"  0.0096793293256204234 0.97982401906745609 
		0.01049665160692349;
	setAttr -s 3 ".wl[369].w[4:6]"  2.2868184141406406e-005 0.015414436789460889 
		0.98456269502639771;
	setAttr -s 3 ".wl[370].w[4:6]"  0.023120326887030963 0.95638899490574003 
		0.020490678207229097;
	setAttr -s 3 ".wl[371].w[3:5]"  3.5326636151886092e-005 0.013092536770983123 
		0.98687213659286499;
	setAttr -s 3 ".wl[372].w[3:5]"  0.030680116701916744 0.87295880497614953 
		0.096361078321933746;
	setAttr -s 3 ".wl[373].w[3:5]"  0.01654052720300847 0.9833979606628418 
		6.1512134149731718e-005;
	setAttr -s 3 ".wl[374].w[2:4]"  0.036212905176053134 0.93115129784614958 
		0.032635796977797324;
	setAttr -s 3 ".wl[375].w[1:3]"  0.00014436459568382948 0.040835139989582284 
		0.95902049541473389;
	setAttr -s 3 ".wl[376].w[1:3]"  0.080134179153962065 0.62909487291284094 
		0.29077094793319702;
	setAttr -s 3 ".wl[377].w[0:2]"  2.3014134333566632e-006 0.00015916756926317654 
		0.99983853101730347;
	setAttr -s 3 ".wl[378].w";
	setAttr ".wl[378].w[1]" 0.0015780695107908418;
	setAttr ".wl[378].w[2]" 0.97956365346908569;
	setAttr ".wl[378].w[9]" 0.018858277020123465;
	setAttr -s 3 ".wl[379].w";
	setAttr ".wl[379].w[1]" 0.0043710481645227997;
	setAttr ".wl[379].w[2]" 0.43575703983291375;
	setAttr ".wl[379].w[9]" 0.55987191200256348;
	setAttr -s 3 ".wl[380].w";
	setAttr ".wl[380].w[0]" 7.1679542742551344e-005;
	setAttr ".wl[380].w[1]" 0.0020639548795596948;
	setAttr ".wl[380].w[9]" 0.99786436557769775;
	setAttr -s 3 ".wl[381].w";
	setAttr ".wl[381].w[0]" 1.0241677666156343e-005;
	setAttr ".wl[381].w[1]" 0.00054598886737778902;
	setAttr ".wl[381].w[9]" 0.99944376945495605;
	setAttr -s 3 ".wl[382].w";
	setAttr ".wl[382].w[0]" 2.3023224184417135e-006;
	setAttr ".wl[382].w[1]" 0.00028648218151832588;
	setAttr ".wl[382].w[9]" 0.99971121549606323;
	setAttr -s 3 ".wl[383].w[6:8]"  0.00010497719666967875 0.015573547774338623 
		0.9843214750289917;
	setAttr -s 3 ".wl[384].w[6:8]"  9.215452447176166e-006 0.016501926801428556 
		0.98348885774612427;
	setAttr -s 3 ".wl[385].w[6:8]"  0.0032685396056264995 0.60624370008896888 
		0.39048776030540466;
	setAttr -s 3 ".wl[386].w[6:8]"  0.0066761023171920154 0.99331122636795044 
		1.2671314857545317e-005;
	setAttr -s 3 ".wl[387].w[5:7]"  0.0092803038883279079 0.98062330484390259 
		0.010096391267769502;
	setAttr -s 3 ".wl[388].w[4:6]"  2.278415493123581e-005 0.015959188062628579 
		0.98401802778244019;
	setAttr -s 3 ".wl[389].w[4:6]"  0.022422555515125012 0.9577034797535513 
		0.019873964731323704;
	setAttr -s 3 ".wl[390].w[3:5]"  3.5100180737642069e-005 0.013471431534655425 
		0.98649346828460693;
	setAttr -s 3 ".wl[391].w[3:5]"  0.030360813306194865 0.88990174694218005 
		0.079737439751625061;
	setAttr -s 3 ".wl[392].w[3:5]"  0.02225447358119664 0.97766554355621338 
		7.9982862589982753e-005;
	setAttr -s 3 ".wl[393].w[2:4]"  0.035156765349118095 0.93317252397537231 
		0.03167071067550959;
	setAttr -s 3 ".wl[394].w[1:3]"  0.00015578616629690538 0.045615514626397187 
		0.95422869920730591;
	setAttr -s 3 ".wl[395].w[1:3]"  0.029478827031287274 0.75150620937347412 
		0.21901496359523862;
	setAttr -s 3 ".wl[396].w[0:2]"  4.0466676092424228e-006 0.0002895658125543318 
		0.99970638751983643;
	setAttr -s 3 ".wl[397].w";
	setAttr ".wl[397].w[1]" 0.0021823674939367012;
	setAttr ".wl[397].w[2]" 0.97229838371276855;
	setAttr ".wl[397].w[9]" 0.025519248793294744;
	setAttr -s 3 ".wl[398].w";
	setAttr ".wl[398].w[1]" 0.0063205647379826497;
	setAttr ".wl[398].w[2]" 0.44031426430635939;
	setAttr ".wl[398].w[9]" 0.55336517095565796;
	setAttr -s 3 ".wl[399].w";
	setAttr ".wl[399].w[0]" 7.2919985639674314e-005;
	setAttr ".wl[399].w[1]" 0.0018893245250109607;
	setAttr ".wl[399].w[9]" 0.99803775548934937;
	setAttr -s 3 ".wl[400].w";
	setAttr ".wl[400].w[0]" 1.2114154324966424e-005;
	setAttr ".wl[400].w[1]" 0.00067369688846067807;
	setAttr ".wl[400].w[9]" 0.99931418895721436;
	setAttr -s 3 ".wl[401].w";
	setAttr ".wl[401].w[0]" 3.9620948059633715e-006;
	setAttr ".wl[401].w[1]" 0.00056335491416620461;
	setAttr ".wl[401].w[9]" 0.99943268299102783;
	setAttr -s 3 ".wl[402].w[6:8]"  0.00010688131052185147 0.016004075358331909 
		0.98388904333114624;
	setAttr -s 3 ".wl[403].w[6:8]"  8.6442983548566512e-006 0.016332326694687135 
		0.98365902900695801;
	setAttr -s 3 ".wl[404].w[6:8]"  0.0031304242088740311 0.58350129108882498 
		0.41336828470230103;
	setAttr -s 3 ".wl[405].w[6:8]"  0.0071759692585478827 0.99281072616577148 
		1.3304575680632599e-005;
	setAttr -s 3 ".wl[406].w[5:7]"  0.0091127435970223668 0.98095207403724816 
		0.0099351823657294683;
	setAttr -s 3 ".wl[407].w[4:6]"  1.3738997739692379e-005 0.0098096429030476613 
		0.99017661809921265;
	setAttr -s 3 ".wl[408].w[4:6]"  0.022075674638056732 0.95835362612521957 
		0.019570699236723735;
	setAttr -s 3 ".wl[409].w[3:5]"  5.7188560658018345e-005 0.022337647388286072 
		0.97760516405105591;
	setAttr -s 3 ".wl[410].w[3:5]"  0.030376038082811519 0.90378549086215765 
		0.065838471055030823;
	setAttr -s 3 ".wl[411].w[3:5]"  0.019183337093294648 0.98074889183044434 
		6.7771076261014565e-005;
	setAttr -s 3 ".wl[412].w[2:4]"  0.03411088718102865 0.93516743183135986 
		0.030721680987611487;
	setAttr -s 3 ".wl[413].w[1:3]"  0.0001091185348673493 0.032511669085677083 
		0.96737921237945557;
	setAttr -s 3 ".wl[414].w[1:3]"  0.028670823754138552 0.79805105924606323 
		0.17327811699979823;
	setAttr -s 3 ".wl[415].w[0:2]"  3.1603499449613417e-006 0.00023007262506114217 
		0.9997667670249939;
	setAttr -s 3 ".wl[416].w";
	setAttr ".wl[416].w[1]" 0.0016447330933477416;
	setAttr ".wl[416].w[2]" 0.97322225570678711;
	setAttr ".wl[416].w[9]" 0.025133011199865149;
	setAttr -s 3 ".wl[417].w";
	setAttr ".wl[417].w[1]" 0.0039539854230549567;
	setAttr ".wl[417].w[2]" 0.42042780712226363;
	setAttr ".wl[417].w[9]" 0.5756182074546814;
	setAttr -s 3 ".wl[418].w";
	setAttr ".wl[418].w[0]" 8.6741484620296396e-005;
	setAttr ".wl[418].w[1]" 0.002033395730040348;
	setAttr ".wl[418].w[9]" 0.99787986278533936;
	setAttr -s 3 ".wl[419].w";
	setAttr ".wl[419].w[0]" 1.0449764847511754e-005;
	setAttr ".wl[419].w[1]" 0.0004888583444359355;
	setAttr ".wl[419].w[9]" 0.99950069189071655;
	setAttr -s 3 ".wl[420].w";
	setAttr ".wl[420].w[0]" 1.9531088360005352e-006;
	setAttr ".wl[420].w[1]" 0.00029380513853948773;
	setAttr ".wl[420].w[9]" 0.99970424175262451;
	setAttr -s 3 ".wl[421].w[6:8]"  4.8759912857536603e-005 0.007233616376510139 
		0.99271762371063232;
	setAttr -s 3 ".wl[422].w[6:8]"  4.1447617875865314e-006 0.0074219383261335562 
		0.99257391691207886;
	setAttr -s 3 ".wl[423].w[6:8]"  0.0022908470097705732 0.39606308727825434 
		0.6016460657119751;
	setAttr -s 3 ".wl[424].w[6:8]"  0.0081936768200628913 0.991790771484375 
		1.5551695562109334e-005;
	setAttr -s 3 ".wl[425].w[5:7]"  0.0093019300886481304 0.98057815077000787 
		0.010119919141344079;
	setAttr -s 3 ".wl[426].w[4:6]"  7.0133606822611216e-006 0.0049125156004993795 
		0.99508047103881836;
	setAttr -s 3 ".wl[427].w[4:6]"  0.0224225621290484 0.95770346721270272 
		0.019873970658248946;
	setAttr -s 3 ".wl[428].w[3:5]"  9.1669840845547154e-005 0.035182835774388826 
		0.96472549438476563;
	setAttr -s 3 ".wl[429].w[3:5]"  0.031464644471726061 0.92225601454583683 
		0.046279340982437134;
	setAttr -s 3 ".wl[430].w[3:5]"  0.018054981732120598 0.98188012838363647 
		6.4889884242925824e-005;
	setAttr -s 3 ".wl[431].w[2:4]"  0.034665707897215466 0.93410593271255493 
		0.03122835939022961;
	setAttr -s 3 ".wl[432].w[1:3]"  9.0007709603762313e-005 0.026355023456472899 
		0.97355496883392334;
	setAttr -s 3 ".wl[433].w[1:3]"  0.026475813791988295 0.77348423004150391 
		0.2000399561665078;
	setAttr -s 3 ".wl[434].w[0:2]"  1.3833901398168416e-006 9.8990831661940974e-005 
		0.99989962577819824;
	setAttr -s 3 ".wl[435].w";
	setAttr ".wl[435].w[1]" 0.001357342742235789;
	setAttr ".wl[435].w[2]" 0.97710347175598145;
	setAttr ".wl[435].w[9]" 0.021539185501782767;
	setAttr -s 3 ".wl[436].w";
	setAttr ".wl[436].w[1]" 0.004874675227691856;
	setAttr ".wl[436].w[2]" 0.5224705052837828;
	setAttr ".wl[436].w[9]" 0.47265481948852539;
	setAttr -s 3 ".wl[437].w";
	setAttr ".wl[437].w[0]" 5.1486149946542963e-005;
	setAttr ".wl[437].w[1]" 0.0021715882862412012;
	setAttr ".wl[437].w[9]" 0.99777692556381226;
	setAttr -s 3 ".wl[438].w";
	setAttr ".wl[438].w[0]" 4.3506341317380212e-006;
	setAttr ".wl[438].w[1]" 0.00029969265886752955;
	setAttr ".wl[438].w[9]" 0.99969595670700073;
	setAttr -s 3 ".wl[439].w";
	setAttr ".wl[439].w[0]" 2.3577844929032249e-006;
	setAttr ".wl[439].w[1]" 0.00031074541451222372;
	setAttr ".wl[439].w[9]" 0.99968689680099487;
	setAttr -s 3 ".wl[440].w[6:8]"  7.0605845073547184e-005 0.010267640977283631 
		0.98966175317764282;
	setAttr -s 3 ".wl[441].w[6:8]"  4.6214013722044659e-006 0.0074102560133311648 
		0.99258512258529663;
	setAttr -s 3 ".wl[442].w[6:8]"  0.0024933313771321546 0.45689504390515545 
		0.5406116247177124;
	setAttr -s 3 ".wl[443].w[6:8]"  0.0079177527152741387 0.99206650257110596 
		1.5744713619903472e-005;
	setAttr -s 3 ".wl[444].w[5:7]"  0.0096793419886897873 0.97982399273602394 
		0.010496665275286279;
	setAttr -s 3 ".wl[445].w[4:6]"  7.3465774308316963e-006 0.00495199828646077 
		0.9950406551361084;
	setAttr -s 3 ".wl[446].w[4:6]"  0.023120249255199378 0.95638898238368686 
		0.020490768361113729;
	setAttr -s 3 ".wl[447].w[3:5]"  5.8889996682258994e-005 0.021825432169760611 
		0.97811567783355713;
	setAttr -s 3 ".wl[448].w[3:5]"  0.032571158400928564 0.92676888293458781 
		0.040659958664483568;
	setAttr -s 3 ".wl[449].w[3:5]"  0.018929596911980481 0.98100000619888306 
		7.0396889136462991e-005;
	setAttr -s 3 ".wl[450].w[2:4]"  0.036212905544237547 0.93115129714171219 
		0.032635797314050308;
	setAttr -s 3 ".wl[451].w[1:3]"  8.3191174972884377e-005 0.023531573038589128 
		0.97638523578643799;
	setAttr -s 3 ".wl[452].w[1:3]"  0.025725350194759758 0.77862679958343506 
		0.19564785022180517;
	setAttr -s 3 ".wl[453].w[0:2]"  9.4894119517566751e-007 6.5629447018935666e-005 
		0.99993342161178589;
	setAttr -s 3 ".wl[454].w";
	setAttr ".wl[454].w[1]" 0.0010660529823009073;
	setAttr ".wl[454].w[2]" 0.97278469800949097;
	setAttr ".wl[454].w[9]" 0.026149249008208125;
	setAttr -s 3 ".wl[455].w";
	setAttr ".wl[455].w[1]" 0.0031990001584277961;
	setAttr ".wl[455].w[2]" 0.50540233751285213;
	setAttr ".wl[455].w[9]" 0.49139866232872009;
	setAttr -s 3 ".wl[456].w";
	setAttr ".wl[456].w[0]" 2.5672737993058443e-005;
	setAttr ".wl[456].w[1]" 0.0019056369620191486;
	setAttr ".wl[456].w[9]" 0.99806869029998779;
	setAttr -s 3 ".wl[457].w";
	setAttr ".wl[457].w[0]" 4.8852929611555625e-006;
	setAttr ".wl[457].w[1]" 0.00036728610901638352;
	setAttr ".wl[457].w[9]" 0.99962782859802246;
	setAttr -s 3 ".wl[458].w";
	setAttr ".wl[458].w[0]" 1.4053777480009524e-006;
	setAttr ".wl[458].w[1]" 0.0001507652803635713;
	setAttr ".wl[458].w[9]" 0.99984782934188843;
	setAttr -s 3 ".wl[459].w[6:8]"  0.00010403556407241218 0.015129063896529394 
		0.98476690053939819;
	setAttr -s 3 ".wl[460].w[6:8]"  5.2092071028918628e-006 0.0083527925018814838 
		0.99164199829101563;
	setAttr -s 3 ".wl[461].w[6:8]"  0.0023822643215607149 0.41286243420291441 
		0.5847553014755249;
	setAttr -s 3 ".wl[462].w[6:8]"  0.0039379371768493553 0.99605423212051392 
		7.8307026367283459e-006;
	setAttr -s 3 ".wl[463].w[5:7]"  0.0096568376544451627 0.97754841905352119 
		0.012794743292033672;
	setAttr -s 3 ".wl[464].w[4:6]"  1.425693910796624e-005 0.0096099858434848077 
		0.99037575721740723;
	setAttr -s 3 ".wl[465].w[4:6]"  0.022475852395845101 0.95760452747344971 
		0.019919620130705196;
	setAttr -s 3 ".wl[466].w[3:5]"  4.610794218070351e-005 0.017088260477466512 
		0.98286563158035278;
	setAttr -s 3 ".wl[467].w[3:5]"  0.031890419154179152 0.90739735511063335 
		0.060712225735187531;
	setAttr -s 3 ".wl[468].w[3:5]"  0.01602204729550178 0.98391836881637573 
		5.958388812248582e-005;
	setAttr -s 3 ".wl[469].w[2:4]"  0.036212892960760024 0.9311513507799366 
		0.0326357562593034;
	setAttr -s 3 ".wl[470].w[1:3]"  2.7229070102704488e-005 0.0077020628457908505 
		0.99227070808410645;
	setAttr -s 3 ".wl[471].w[1:3]"  0.13864342232817828 0.64828908443450928 
		0.21306749323731247;
	setAttr -s 3 ".wl[472].w[0:2]"  5.516078997493674e-006 0.00038149687952911766 
		0.99961298704147339;
	setAttr -s 3 ".wl[473].w";
	setAttr ".wl[473].w[1]" 0.004581516567430088;
	setAttr ".wl[473].w[2]" 0.91846674680709839;
	setAttr ".wl[473].w[9]" 0.076951736625471528;
	setAttr -s 3 ".wl[474].w";
	setAttr ".wl[474].w[1]" 0.004678852422225376;
	setAttr ".wl[474].w[2]" 0.56869637264491335;
	setAttr ".wl[474].w[9]" 0.42662477493286133;
	setAttr -s 3 ".wl[475].w";
	setAttr ".wl[475].w[0]" 4.5485208237189105e-005;
	setAttr ".wl[475].w[1]" 0.0036180546782374201;
	setAttr ".wl[475].w[9]" 0.99633646011352539;
	setAttr -s 3 ".wl[476].w";
	setAttr ".wl[476].w[0]" 1.0925037584903414e-005;
	setAttr ".wl[476].w[1]" 0.0010881846120732997;
	setAttr ".wl[476].w[9]" 0.9989008903503418;
	setAttr -s 3 ".wl[477].w";
	setAttr ".wl[477].w[0]" 3.5723788337096485e-006;
	setAttr ".wl[477].w[1]" 0.00046998652390676886;
	setAttr ".wl[477].w[9]" 0.99952644109725952;
	setAttr -s 3 ".wl[478].w[6:8]"  0.00027599599839152355 0.040944490165701494 
		0.95877951383590698;
	setAttr -s 3 ".wl[479].w[6:8]"  2.1619767678823567e-005 0.038714127569662485 
		0.96126425266265869;
	setAttr -s 3 ".wl[480].w[6:8]"  0.0023287390349456699 0.43837602390069275 
		0.55929523706436157;
	setAttr -s 3 ".wl[481].w[6:8]"  0.0073307493128953747 0.99265533685684204 
		1.391383026258475e-005;
	setAttr -s 3 ".wl[482].w[5:7]"  0.0093019172907425202 0.98057817742529019 
		0.010119905283967339;
	setAttr -s 3 ".wl[483].w[4:6]"  2.4646225042817417e-005 0.017263502178124907 
		0.98271185159683228;
	setAttr -s 3 ".wl[484].w[4:6]"  0.020808183091235326 0.96074873208999634 
		0.01844308481876834;
	setAttr -s 3 ".wl[485].w[3:5]"  0.00010997967324210791 0.042210212186956864 
		0.95767980813980103;
	setAttr -s 3 ".wl[486].w[3:5]"  0.029772064494938119 0.87264622111335355 
		0.097581714391708374;
	setAttr -s 3 ".wl[487].w[3:5]"  0.020437103210861011 0.97948944568634033 
		7.3451102798655925e-005;
	setAttr -s 3 ".wl[488].w[2:4]"  0.035238539124485845 0.93301707108811371 
		0.031744389787400476;
	setAttr -s 3 ".wl[489].w[1:3]"  2.9388997204173048e-005 0.0086053570774723403 
		0.99136525392532349;
	setAttr -s 3 ".wl[490].w[1:3]"  0.12503803835492014 0.66971558332443237 
		0.20524637832064749;
	setAttr -s 3 ".wl[491].w[0:2]"  3.4469736707313721e-006 0.00024665411580680768 
		0.99974989891052246;
	setAttr -s 3 ".wl[492].w";
	setAttr ".wl[492].w[1]" 0.0028898038627973876;
	setAttr ".wl[492].w[2]" 0.9445682168006897;
	setAttr ".wl[492].w[9]" 0.052541979336512917;
	setAttr -s 3 ".wl[493].w";
	setAttr ".wl[493].w[1]" 0.0045880368331184824;
	setAttr ".wl[493].w[2]" 0.59083524435966106;
	setAttr ".wl[493].w[9]" 0.40457671880722046;
	setAttr -s 3 ".wl[494].w";
	setAttr ".wl[494].w[0]" 4.6083610529483156e-005;
	setAttr ".wl[494].w[1]" 0.0037090090103201264;
	setAttr ".wl[494].w[9]" 0.99624490737915039;
	setAttr -s 3 ".wl[495].w";
	setAttr ".wl[495].w[0]" 4.7250537143524118e-006;
	setAttr ".wl[495].w[1]" 0.00050704042632715148;
	setAttr ".wl[495].w[9]" 0.9994882345199585;
	setAttr -s 3 ".wl[496].w";
	setAttr ".wl[496].w[0]" 1.6903400488097997e-006;
	setAttr ".wl[496].w[1]" 0.00026021246909425661;
	setAttr ".wl[496].w[9]" 0.99973809719085693;
	setAttr -s 3 ".wl[497].w[6:8]"  0.00027022202652942495 0.040462221306142694 
		0.95926755666732788;
	setAttr -s 3 ".wl[498].w[6:8]"  2.0389830428543287e-005 0.038524145806473314 
		0.96145546436309814;
	setAttr -s 3 ".wl[499].w[6:8]"  0.0021471396353837961 0.43030202237099435 
		0.56755083799362183;
	setAttr -s 3 ".wl[500].w[6:8]"  0.0069824936891059045 0.99300456047058105 
		1.2945840313041244e-005;
	setAttr -s 3 ".wl[501].w[5:7]"  0.009112696044748363 0.98095209730550048 
		0.0099352066497511386;
	setAttr -s 3 ".wl[502].w[4:6]"  4.9040951047762981e-005 0.035015298686708586 
		0.96493566036224365;
	setAttr -s 3 ".wl[503].w[4:6]"  0.019563346516382106 0.963093101978302 
		0.017343551505315889;
	setAttr -s 3 ".wl[504].w[3:5]"  9.6982940893987018e-005 0.037881248965996879 
		0.96202176809310913;
	setAttr -s 3 ".wl[505].w[3:5]"  0.028495413551223862 0.84995474915753544 
		0.12154983729124069;
	setAttr -s 3 ".wl[506].w[3:5]"  0.016733122913828412 0.98320776224136353 
		5.9114844808061143e-005;
	setAttr -s 3 ".wl[507].w[2:4]"  0.034756623245989271 0.93394009128222455 
		0.031303285471786228;
	setAttr -s 3 ".wl[508].w[1:3]"  5.5676523808697684e-005 0.016588741715784807 
		0.98335558176040649;
	setAttr -s 3 ".wl[509].w[1:3]"  0.11065700719696567 0.69370549917221069 
		0.19563749363082364;
	setAttr -s 3 ".wl[510].w[0:2]"  1.640343512243301e-006 0.00011941669002657506 
		0.99987894296646118;
	setAttr -s 3 ".wl[511].w";
	setAttr ".wl[511].w[1]" 0.0018945662225198694;
	setAttr ".wl[511].w[2]" 0.94558560848236084;
	setAttr ".wl[511].w[9]" 0.052519825295119289;
	setAttr -s 3 ".wl[512].w";
	setAttr ".wl[512].w[1]" 0.0066786412555692454;
	setAttr ".wl[512].w[2]" 0.6554647083919527;
	setAttr ".wl[512].w[9]" 0.33785665035247803;
	setAttr -s 3 ".wl[513].w";
	setAttr ".wl[513].w[1]" 0.0032781152548542435;
	setAttr ".wl[513].w[2]" 0.00073852254726977987;
	setAttr ".wl[513].w[9]" 0.99598336219787598;
	setAttr -s 3 ".wl[514].w";
	setAttr ".wl[514].w[0]" 7.32025269480771e-006;
	setAttr ".wl[514].w[1]" 0.00089968362685231146;
	setAttr ".wl[514].w[9]" 0.99909299612045288;
	setAttr -s 3 ".wl[515].w";
	setAttr ".wl[515].w[0]" 2.4610372355964843e-006;
	setAttr ".wl[515].w[1]" 0.00040726129095043867;
	setAttr ".wl[515].w[9]" 0.99959027767181396;
	setAttr -s 3 ".wl[516].w[6:8]"  0.00026839576933490979 0.039816979539655566 
		0.95991462469100952;
	setAttr -s 3 ".wl[517].w[6:8]"  2.1055503035046134e-005 0.037703737454270865 
		0.96227520704269409;
	setAttr -s 3 ".wl[518].w[6:8]"  0.0021242673323308217 0.42196927715085397 
		0.57590645551681519;
	setAttr -s 3 ".wl[519].w[6:8]"  0.0065185087324779976 0.99346911907196045 
		1.2372195561552879e-005;
	setAttr -s 3 ".wl[520].w[5:7]"  0.0093019201475583804 0.98057817147515769 
		0.01011990837728393;
	setAttr -s 3 ".wl[521].w[4:6]"  3.3204568360852607e-005 0.023258204447294664 
		0.97670859098434448;
	setAttr -s 3 ".wl[522].w[4:6]"  0.019454205714196659 0.96330279111862183 
		0.017243003167181515;
	setAttr -s 3 ".wl[523].w[3:5]"  3.052924499665078e-005 0.011717129007719413 
		0.98825234174728394;
	setAttr -s 3 ".wl[524].w[3:5]"  0.026444871628428256 0.82439074972853588 
		0.14916437864303589;
	setAttr -s 3 ".wl[525].w[3:5]"  0.011181817328217098 0.98877799510955811 
		4.018756222479649e-005;
	setAttr -s 3 ".wl[526].w[2:4]"  0.035238521208025043 0.93301706207851176 
		0.031744416713463203;
	setAttr -s 3 ".wl[527].w[1:3]"  6.2725782119692328e-005 0.018366672754562437 
		0.98157060146331787;
	setAttr -s 3 ".wl[528].w[1:3]"  0.09403051793374724 0.70561343431472778 
		0.20035604775152496;
	setAttr -s 3 ".wl[529].w[0:2]"  6.4158321118524939e-007 4.5909644358394831e-005 
		0.99995344877243042;
	setAttr -s 3 ".wl[530].w";
	setAttr ".wl[530].w[1]" 0.00060097917718298169;
	setAttr ".wl[530].w[2]" 0.96962010860443115;
	setAttr ".wl[530].w[9]" 0.029778912218385866;
	setAttr -s 3 ".wl[531].w";
	setAttr ".wl[531].w[1]" 0.001916686879795724;
	setAttr ".wl[531].w[2]" 0.50526918948968058;
	setAttr ".wl[531].w[9]" 0.49281412363052368;
	setAttr -s 3 ".wl[532].w";
	setAttr ".wl[532].w[1]" 0.0012641850916268686;
	setAttr ".wl[532].w[2]" 0.00077590308510042626;
	setAttr ".wl[532].w[9]" 0.99795991182327271;
	setAttr -s 3 ".wl[533].w";
	setAttr ".wl[533].w[0]" 3.5003690305403779e-006;
	setAttr ".wl[533].w[1]" 0.00041975221351950846;
	setAttr ".wl[533].w[9]" 0.99957674741744995;
	setAttr -s 3 ".wl[534].w";
	setAttr ".wl[534].w[0]" 1.7209124448465187e-006;
	setAttr ".wl[534].w[1]" 0.00026405619860862025;
	setAttr ".wl[534].w[9]" 0.99973422288894653;
	setAttr -s 3 ".wl[535].w[6:8]"  8.9361363633040346e-005 0.012995109862105485 
		0.98691552877426147;
	setAttr -s 3 ".wl[536].w[6:8]"  5.7847295124170292e-006 0.0092756121363323091 
		0.99071860313415527;
	setAttr -s 3 ".wl[537].w[6:8]"  0.0020944675796202242 0.38995013624499525 
		0.60795539617538452;
	setAttr -s 3 ".wl[538].w[6:8]"  0.0063998394749196445 0.9935874342918396 
		1.2726233240755722e-005;
	setAttr -s 3 ".wl[539].w[5:7]"  0.0096793245507842234 0.97982402899619236 
		0.01049664645302344;
	setAttr -s 3 ".wl[540].w[4:6]"  1.8079803066439134e-005 0.012186805679721647 
		0.98779511451721191;
	setAttr -s 3 ".wl[541].w[4:6]"  0.019898459390298277 0.96246618032455444 
		0.017635360285147283;
	setAttr -s 3 ".wl[542].w[3:5]"  2.9128487609599853e-005 0.01079543263146999 
		0.98917543888092041;
	setAttr -s 3 ".wl[543].w[3:5]"  0.025839902008533224 0.81648900405073188 
		0.15767109394073486;
	setAttr -s 3 ".wl[544].w[3:5]"  0.011762031270773781 0.98819422721862793 
		4.3741510598289419e-005;
	setAttr -s 3 ".wl[545].w[2:4]"  0.036212892222496559 0.93115132262984301 
		0.032635785147660482;
	setAttr -s 3 ".wl[546].w[1:3]"  7.1447007562968137e-005 0.020209629423711444 
		0.97971892356872559;
	setAttr -s 3 ".wl[547].w[1:3]"  0.082209529394561748 0.69639080762863159 
		0.22139966297680663;
	setAttr -s 3 ".wl[548].w[0:2]"  4.0438285259640802e-007 2.7967428060489529e-005 
		0.99997162818908691;
	setAttr -s 3 ".wl[549].w";
	setAttr ".wl[549].w[1]" 0.00051888893962177525;
	setAttr ".wl[549].w[2]" 0.97897511720657349;
	setAttr ".wl[549].w[9]" 0.020505993853804739;
	setAttr -s 3 ".wl[550].w";
	setAttr ".wl[550].w[1]" 0.0025839423219718338;
	setAttr ".wl[550].w[2]" 0.51049683341579066;
	setAttr ".wl[550].w[9]" 0.48691922426223755;
	setAttr -s 3 ".wl[551].w";
	setAttr ".wl[551].w[1]" 0.0016361037728515439;
	setAttr ".wl[551].w[2]" 0.013059659815100115;
	setAttr ".wl[551].w[9]" 0.98530423641204834;
	setAttr -s 3 ".wl[552].w";
	setAttr ".wl[552].w[0]" 4.1595464209670363e-006;
	setAttr ".wl[552].w[1]" 0.00046314086861809549;
	setAttr ".wl[552].w[9]" 0.99953269958496094;
	setAttr -s 3 ".wl[553].w";
	setAttr ".wl[553].w[0]" 2.2468621374577504e-006;
	setAttr ".wl[553].w[1]" 0.00030364417484984694;
	setAttr ".wl[553].w[9]" 0.9996941089630127;
	setAttr -s 3 ".wl[554].w";
	setAttr ".wl[554].w[1]" 0.0092531308286577831;
	setAttr ".wl[554].w[9]" 0.98669552803039551;
	setAttr ".wl[554].w[10]" 0.0040513411409467091;
	setAttr -s 3 ".wl[555].w";
	setAttr ".wl[555].w[1]" 0.0090033873693338776;
	setAttr ".wl[555].w[9]" 0.98697507381439209;
	setAttr ".wl[555].w[10]" 0.0040215388162740326;
	setAttr -s 3 ".wl[556].w";
	setAttr ".wl[556].w[1]" 0.0074078360940078363;
	setAttr ".wl[556].w[9]" 0.98940426111221313;
	setAttr ".wl[556].w[10]" 0.0031879027937790289;
	setAttr -s 3 ".wl[557].w";
	setAttr ".wl[557].w[1]" 0.0070186860164746356;
	setAttr ".wl[557].w[9]" 0.9901311993598938;
	setAttr ".wl[557].w[10]" 0.0028501146236315656;
	setAttr -s 3 ".wl[558].w";
	setAttr ".wl[558].w[1]" 0.01168110276135927;
	setAttr ".wl[558].w[9]" 0.98370856046676636;
	setAttr ".wl[558].w[10]" 0.004610336771874373;
	setAttr -s 3 ".wl[559].w";
	setAttr ".wl[559].w[1]" 0.011169677094035903;
	setAttr ".wl[559].w[9]" 0.984294593334198;
	setAttr ".wl[559].w[10]" 0.0045357295717660994;
	setAttr -s 3 ".wl[560].w";
	setAttr ".wl[560].w[1]" 0.011850819856124411;
	setAttr ".wl[560].w[9]" 0.98304927349090576;
	setAttr ".wl[560].w[10]" 0.0050999066529698288;
	setAttr -s 3 ".wl[561].w";
	setAttr ".wl[561].w[1]" 0.010327645920952415;
	setAttr ".wl[561].w[9]" 0.98494517803192139;
	setAttr ".wl[561].w[10]" 0.0047271760471261992;
	setAttr -s 3 ".wl[562].w";
	setAttr ".wl[562].w[1]" 0.0054351339705541925;
	setAttr ".wl[562].w[9]" 0.99218517541885376;
	setAttr ".wl[562].w[10]" 0.0023796906105920486;
	setAttr -s 3 ".wl[563].w";
	setAttr ".wl[563].w[1]" 0.0083556742335551236;
	setAttr ".wl[563].w[9]" 0.98812311887741089;
	setAttr ".wl[563].w[10]" 0.0035212068890339869;
	setAttr -s 3 ".wl[564].w";
	setAttr ".wl[564].w[1]" 0.0073626376938587543;
	setAttr ".wl[564].w[9]" 0.98959290981292725;
	setAttr ".wl[564].w[10]" 0.003044452493214;
	setAttr -s 3 ".wl[565].w";
	setAttr ".wl[565].w[1]" 0.012238405886340493;
	setAttr ".wl[565].w[9]" 0.98260414600372314;
	setAttr ".wl[565].w[10]" 0.0051574481099363615;
	setAttr -s 3 ".wl[566].w";
	setAttr ".wl[566].w[1]" 0.0067341931476242048;
	setAttr ".wl[566].w[9]" 0.95967495441436768;
	setAttr ".wl[566].w[10]" 0.03359085243800812;
	setAttr -s 3 ".wl[567].w";
	setAttr ".wl[567].w[1]" 0.0071274629766546064;
	setAttr ".wl[567].w[9]" 0.95580464601516724;
	setAttr ".wl[567].w[10]" 0.037067891008178158;
	setAttr -s 3 ".wl[568].w";
	setAttr ".wl[568].w[1]" 0.0096539372479460348;
	setAttr ".wl[568].w[9]" 0.93226879835128784;
	setAttr ".wl[568].w[10]" 0.058077264400766125;
	setAttr -s 3 ".wl[569].w";
	setAttr ".wl[569].w[1]" 0.0090434433643672464;
	setAttr ".wl[569].w[9]" 0.94053876399993896;
	setAttr ".wl[569].w[10]" 0.050417792635693785;
	setAttr -s 3 ".wl[570].w";
	setAttr ".wl[570].w[1]" 0.0052758713441637319;
	setAttr ".wl[570].w[9]" 0.95134586095809937;
	setAttr ".wl[570].w[10]" 0.043378267697736901;
	setAttr -s 3 ".wl[571].w";
	setAttr ".wl[571].w[1]" 0.0055761419846117218;
	setAttr ".wl[571].w[9]" 0.95904022455215454;
	setAttr ".wl[571].w[10]" 0.035383633463233741;
	setAttr -s 3 ".wl[572].w";
	setAttr ".wl[572].w[1]" 0.0056516196275676646;
	setAttr ".wl[572].w[9]" 0.96367591619491577;
	setAttr ".wl[572].w[10]" 0.030672464177516567;
	setAttr -s 3 ".wl[573].w";
	setAttr ".wl[573].w[1]" 0.006530802580113332;
	setAttr ".wl[573].w[9]" 0.96593254804611206;
	setAttr ".wl[573].w[10]" 0.027536649373774608;
	setAttr -s 3 ".wl[574].w";
	setAttr ".wl[574].w[1]" 0.010561443012023077;
	setAttr ".wl[574].w[9]" 0.9566950798034668;
	setAttr ".wl[574].w[10]" 0.032743477184510129;
	setAttr -s 3 ".wl[575].w";
	setAttr ".wl[575].w[1]" 0.011051065203282433;
	setAttr ".wl[575].w[9]" 0.98429185152053833;
	setAttr ".wl[575].w[10]" 0.004657083276179236;
	setAttr -s 3 ".wl[576].w";
	setAttr ".wl[576].w[1]" 0.011256105752932436;
	setAttr ".wl[576].w[9]" 0.98408949375152588;
	setAttr ".wl[576].w[10]" 0.0046544004955416845;
	setAttr -s 3 ".wl[577].w";
	setAttr ".wl[577].w[1]" 0.0098176384856278227;
	setAttr ".wl[577].w[9]" 0.98604506254196167;
	setAttr ".wl[577].w[10]" 0.0041372989724105082;
	setAttr -s 3 ".wl[578].w";
	setAttr ".wl[578].w[1]" 0.0029299057933534801;
	setAttr ".wl[578].w[9]" 0.99694287776947021;
	setAttr ".wl[578].w[10]" 0.00012721643717630504;
	setAttr -s 3 ".wl[579].w";
	setAttr ".wl[579].w[1]" 0.0032899337507653779;
	setAttr ".wl[579].w[9]" 0.99657893180847168;
	setAttr ".wl[579].w[10]" 0.00013113444076294221;
	setAttr -s 3 ".wl[580].w";
	setAttr ".wl[580].w[1]" 0.0028716225619074619;
	setAttr ".wl[580].w[9]" 0.9970276951789856;
	setAttr ".wl[580].w[10]" 0.00010068225910694232;
	setAttr -s 3 ".wl[581].w";
	setAttr ".wl[581].w[1]" 0.0030025559797271792;
	setAttr ".wl[581].w[9]" 0.99689841270446777;
	setAttr ".wl[581].w[10]" 9.9031315805047404e-005;
	setAttr -s 3 ".wl[582].w";
	setAttr ".wl[582].w[1]" 0.0032006092658396768;
	setAttr ".wl[582].w[9]" 0.99668717384338379;
	setAttr ".wl[582].w[10]" 0.0001122168907765341;
	setAttr -s 3 ".wl[583].w";
	setAttr ".wl[583].w[1]" 0.0036160268196452545;
	setAttr ".wl[583].w[9]" 0.99623984098434448;
	setAttr ".wl[583].w[10]" 0.00014413219601026303;
	setAttr -s 3 ".wl[584].w";
	setAttr ".wl[584].w[1]" 0.0015548665837830241;
	setAttr ".wl[584].w[9]" 0.99837762117385864;
	setAttr ".wl[584].w[10]" 6.7512242358333408e-005;
	setAttr -s 3 ".wl[585].w";
	setAttr ".wl[585].w[1]" 0.0021220978762733381;
	setAttr ".wl[585].w[9]" 0.99779331684112549;
	setAttr ".wl[585].w[10]" 8.4585282601173735e-005;
	setAttr -s 3 ".wl[586].w";
	setAttr ".wl[586].w[1]" 0.0020901850264494152;
	setAttr ".wl[586].w[9]" 0.99783653020858765;
	setAttr ".wl[586].w[10]" 7.3284764962938207e-005;
	setAttr -s 3 ".wl[587].w";
	setAttr ".wl[587].w[1]" 0.0023188506974813603;
	setAttr ".wl[587].w[9]" 0.99760466814041138;
	setAttr ".wl[587].w[10]" 7.6481162107262511e-005;
	setAttr -s 3 ".wl[588].w";
	setAttr ".wl[588].w[1]" 0.0053093935274436295;
	setAttr ".wl[588].w[9]" 0.99450445175170898;
	setAttr ".wl[588].w[10]" 0.00018615472084738629;
	setAttr -s 3 ".wl[589].w";
	setAttr ".wl[589].w[1]" 0.003351323292759821;
	setAttr ".wl[589].w[9]" 0.99651509523391724;
	setAttr ".wl[589].w[10]" 0.00013358147332294268;
	setAttr -s 3 ".wl[590].w";
	setAttr ".wl[590].w[1]" 0.0024552598327315829;
	setAttr ".wl[590].w[9]" 0.99743813276290894;
	setAttr ".wl[590].w[10]" 0.00010660740435948157;
	setAttr -s 3 ".wl[591].w";
	setAttr ".wl[591].w[1]" 0.0025208150623694707;
	setAttr ".wl[591].w[9]" 0.99737870693206787;
	setAttr ".wl[591].w[10]" 0.00010047800556265836;
	setAttr -s 3 ".wl[592].w";
	setAttr ".wl[592].w[1]" 0.0051799408850056695;
	setAttr ".wl[592].w[9]" 0.99463844299316406;
	setAttr ".wl[592].w[10]" 0.00018161612183026775;
	setAttr -s 3 ".wl[593].w";
	setAttr ".wl[593].w[1]" 0.0024159622530050208;
	setAttr ".wl[593].w[9]" 0.99750435352325439;
	setAttr ".wl[593].w[10]" 7.9684223740584834e-005;
	setAttr -s 3 ".wl[594].w";
	setAttr ".wl[594].w[1]" 0.0026460588027259332;
	setAttr ".wl[594].w[9]" 0.9972611665725708;
	setAttr ".wl[594].w[10]" 9.2774624703265845e-005;
	setAttr -s 3 ".wl[595].w";
	setAttr ".wl[595].w[1]" 0.0015172007068315705;
	setAttr ".wl[595].w[9]" 0.99842232465744019;
	setAttr ".wl[595].w[10]" 6.0474635728243964e-005;
	setAttr -s 3 ".wl[596].w";
	setAttr ".wl[596].w[1]" 0.0027170033626697475;
	setAttr ".wl[596].w[9]" 0.9971650242805481;
	setAttr ".wl[596].w[10]" 0.00011797235678215699;
	setAttr -s 3 ".wl[597].w";
	setAttr ".wl[597].w[1]" 0.0048093711433984899;
	setAttr ".wl[597].w[9]" 0.99499893188476563;
	setAttr ".wl[597].w[10]" 0.00019169697183588495;
	setAttr -s 3 ".wl[598].w";
	setAttr ".wl[598].w[1]" 0.0044741728544857428;
	setAttr ".wl[598].w[9]" 0.99536895751953125;
	setAttr ".wl[598].w[10]" 0.00015686962598300723;
	setAttr -s 3 ".wl[599].w";
	setAttr ".wl[599].w[1]" 0.0045097770563574252;
	setAttr ".wl[599].w[9]" 0.99534147977828979;
	setAttr ".wl[599].w[10]" 0.00014874316535278009;
	setAttr -s 3 ".wl[600].w";
	setAttr ".wl[600].w[1]" 0.0022775115499872912;
	setAttr ".wl[600].w[9]" 0.9976426362991333;
	setAttr ".wl[600].w[10]" 7.9852150879407892e-005;
	setAttr -s 3 ".wl[601].w";
	setAttr ".wl[601].w[1]" 0.002706876323884545;
	setAttr ".wl[601].w[9]" 0.99718523025512695;
	setAttr ".wl[601].w[10]" 0.00010789342098850165;
	setAttr -s 3 ".wl[602].w";
	setAttr ".wl[602].w[1]" 0.017200791455560971;
	setAttr ".wl[602].w[9]" 0.092547154806798648;
	setAttr ".wl[602].w[10]" 0.89025205373764038;
	setAttr -s 3 ".wl[603].w";
	setAttr ".wl[603].w[1]" 0.012496645450743107;
	setAttr ".wl[603].w[9]" 0.070502405166474907;
	setAttr ".wl[603].w[10]" 0.91700094938278198;
	setAttr -s 3 ".wl[604].w";
	setAttr ".wl[604].w[1]" 0.01106618639681786;
	setAttr ".wl[604].w[9]" 0.058958780796785661;
	setAttr ".wl[604].w[10]" 0.92997503280639648;
	setAttr -s 3 ".wl[605].w";
	setAttr ".wl[605].w[1]" 0.012250653324114895;
	setAttr ".wl[605].w[9]" 0.063045569839489835;
	setAttr ".wl[605].w[10]" 0.92470377683639526;
	setAttr -s 3 ".wl[606].w";
	setAttr ".wl[606].w[1]" 0.0093355915422414903;
	setAttr ".wl[606].w[9]" 0.063561246645929895;
	setAttr ".wl[606].w[10]" 0.92710316181182861;
	setAttr -s 3 ".wl[607].w";
	setAttr ".wl[607].w[1]" 0.010364233525243138;
	setAttr ".wl[607].w[9]" 0.066041232077631615;
	setAttr ".wl[607].w[10]" 0.92359453439712524;
	setAttr -s 3 ".wl[608].w";
	setAttr ".wl[608].w[1]" 0.0079411845493418155;
	setAttr ".wl[608].w[9]" 0.054446401090611794;
	setAttr ".wl[608].w[10]" 0.93761241436004639;
	setAttr -s 3 ".wl[609].w";
	setAttr ".wl[609].w[1]" 0.0092810345833810506;
	setAttr ".wl[609].w[9]" 0.056685333138176572;
	setAttr ".wl[609].w[10]" 0.93403363227844238;
	setAttr -s 3 ".wl[610].w";
	setAttr ".wl[610].w[1]" 0.0094555923232429191;
	setAttr ".wl[610].w[9]" 0.062081187080443606;
	setAttr ".wl[610].w[10]" 0.92846322059631348;
	setAttr -s 3 ".wl[611].w";
	setAttr ".wl[611].w[1]" 0.012333104000900211;
	setAttr ".wl[611].w[9]" 0.077074399603988708;
	setAttr ".wl[611].w[10]" 0.91059249639511108;
	setAttr -s 3 ".wl[612].w";
	setAttr ".wl[612].w[1]" 0.0088750010157381022;
	setAttr ".wl[612].w[9]" 0.080456923899575622;
	setAttr ".wl[612].w[10]" 0.91066807508468628;
	setAttr -s 3 ".wl[613].w";
	setAttr ".wl[613].w[1]" 0.008202247929939897;
	setAttr ".wl[613].w[9]" 0.10434711663686308;
	setAttr ".wl[613].w[10]" 0.88745063543319702;
	setAttr -s 3 ".wl[614].w";
	setAttr ".wl[614].w[1]" 0.0073634571450779231;
	setAttr ".wl[614].w[9]" 0.097761731682436723;
	setAttr ".wl[614].w[10]" 0.89487481117248535;
	setAttr -s 3 ".wl[615].w";
	setAttr ".wl[615].w[1]" 0.0095614569393294921;
	setAttr ".wl[615].w[9]" 0.092604301670442229;
	setAttr ".wl[615].w[10]" 0.89783424139022827;
	setAttr -s 3 ".wl[616].w";
	setAttr ".wl[616].w[1]" 0.018094630460589355;
	setAttr ".wl[616].w[9]" 0.11424019791618067;
	setAttr ".wl[616].w[10]" 0.86766517162322998;
	setAttr -s 3 ".wl[617].w";
	setAttr ".wl[617].w[1]" 0.029487374749848989;
	setAttr ".wl[617].w[9]" 0.11225592759542688;
	setAttr ".wl[617].w[10]" 0.85825669765472412;
	setAttr -s 3 ".wl[618].w";
	setAttr ".wl[618].w[1]" 0.025609940738435359;
	setAttr ".wl[618].w[9]" 0.10479101493859712;
	setAttr ".wl[618].w[10]" 0.86959904432296753;
	setAttr -s 3 ".wl[619].w";
	setAttr ".wl[619].w[1]" 0.027001637126134424;
	setAttr ".wl[619].w[9]" 0.10805861363299032;
	setAttr ".wl[619].w[10]" 0.86493974924087524;
	setAttr -s 3 ".wl[620].w";
	setAttr ".wl[620].w[1]" 0.021932619801121434;
	setAttr ".wl[620].w[9]" 0.093949180850428859;
	setAttr ".wl[620].w[10]" 0.88411819934844971;
	setAttr -s 3 ".wl[621].w";
	setAttr ".wl[621].w[1]" 0.01306593819788786;
	setAttr ".wl[621].w[9]" 0.055229779041492018;
	setAttr ".wl[621].w[10]" 0.93170428276062012;
	setAttr -s 3 ".wl[622].w";
	setAttr ".wl[622].w[1]" 0.010822219489020424;
	setAttr ".wl[622].w[9]" 0.050198929669457361;
	setAttr ".wl[622].w[10]" 0.93897885084152222;
	setAttr -s 3 ".wl[623].w";
	setAttr ".wl[623].w[1]" 0.013568334622962901;
	setAttr ".wl[623].w[9]" 0.052381582216636705;
	setAttr ".wl[623].w[10]" 0.93405008316040039;
	setAttr -s 3 ".wl[624].w";
	setAttr ".wl[624].w[1]" 0.013185650008210984;
	setAttr ".wl[624].w[9]" 0.053852051598539501;
	setAttr ".wl[624].w[10]" 0.93296229839324951;
	setAttr -s 3 ".wl[625].w";
	setAttr ".wl[625].w[1]" 0.011561204567241726;
	setAttr ".wl[625].w[9]" 0.054306457862567846;
	setAttr ".wl[625].w[10]" 0.93413233757019043;
	setAttr -s 3 ".wl[626].w";
	setAttr ".wl[626].w[1]" 0.014129151138605096;
	setAttr ".wl[626].w[9]" 0.34673089858597378;
	setAttr ".wl[626].w[10]" 0.63913995027542114;
	setAttr -s 3 ".wl[627].w";
	setAttr ".wl[627].w[1]" 0.01487986676459122;
	setAttr ".wl[627].w[9]" 0.29205723173852155;
	setAttr ".wl[627].w[10]" 0.69306290149688721;
	setAttr -s 3 ".wl[628].w";
	setAttr ".wl[628].w[1]" 0.014877389673407331;
	setAttr ".wl[628].w[9]" 0.21439092278081631;
	setAttr ".wl[628].w[10]" 0.77073168754577637;
	setAttr -s 3 ".wl[629].w";
	setAttr ".wl[629].w[1]" 0.021081036112034279;
	setAttr ".wl[629].w[9]" 0.24573993108538394;
	setAttr ".wl[629].w[10]" 0.73317903280258179;
	setAttr -s 3 ".wl[630].w";
	setAttr ".wl[630].w[1]" 0.011744524058617478;
	setAttr ".wl[630].w[9]" 0.26864514249869453;
	setAttr ".wl[630].w[10]" 0.71961033344268799;
	setAttr -s 3 ".wl[631].w";
	setAttr ".wl[631].w[1]" 0.015270043951483942;
	setAttr ".wl[631].w[9]" 0.3360915287909782;
	setAttr ".wl[631].w[10]" 0.64863842725753784;
	setAttr -s 3 ".wl[632].w";
	setAttr ".wl[632].w[1]" 0.020994101795613687;
	setAttr ".wl[632].w[9]" 0.28724861145019531;
	setAttr ".wl[632].w[10]" 0.69175728675419101;
	setAttr -s 3 ".wl[633].w";
	setAttr ".wl[633].w[1]" 0.016651366847189184;
	setAttr ".wl[633].w[9]" 0.36950588226318359;
	setAttr ".wl[633].w[10]" 0.61384275088962725;
	setAttr -s 3 ".wl[634].w";
	setAttr ".wl[634].w[1]" 0.01410566540265586;
	setAttr ".wl[634].w[9]" 0.29561331868171692;
	setAttr ".wl[634].w[10]" 0.69028101591562718;
	setAttr -s 3 ".wl[635].w";
	setAttr ".wl[635].w[1]" 0.015939243203535233;
	setAttr ".wl[635].w[9]" 0.40188369154930115;
	setAttr ".wl[635].w[10]" 0.58217706524716362;
	setAttr -s 3 ".wl[636].w";
	setAttr ".wl[636].w[1]" 0.012380795606771966;
	setAttr ".wl[636].w[9]" 0.44907397031784058;
	setAttr ".wl[636].w[10]" 0.53854523407538746;
	setAttr -s 3 ".wl[637].w";
	setAttr ".wl[637].w[1]" 0.0077579956677532461;
	setAttr ".wl[637].w[9]" 0.55947738885879517;
	setAttr ".wl[637].w[10]" 0.43276461547345157;
	setAttr -s 3 ".wl[638].w";
	setAttr ".wl[638].w[1]" 0.0073078689630032461;
	setAttr ".wl[638].w[9]" 0.58014225959777832;
	setAttr ".wl[638].w[10]" 0.41254987143921845;
	setAttr -s 3 ".wl[639].w";
	setAttr ".wl[639].w[1]" 0.013520716092242074;
	setAttr ".wl[639].w[9]" 0.5905689001083374;
	setAttr ".wl[639].w[10]" 0.39591038379942051;
	setAttr -s 3 ".wl[640].w";
	setAttr ".wl[640].w[1]" 0.019116477344384802;
	setAttr ".wl[640].w[9]" 0.48795032501220703;
	setAttr ".wl[640].w[10]" 0.49293319764340815;
	setAttr -s 3 ".wl[641].w";
	setAttr ".wl[641].w[1]" 0.033375435597211858;
	setAttr ".wl[641].w[9]" 0.45452737808227539;
	setAttr ".wl[641].w[10]" 0.51209718632051271;
	setAttr -s 3 ".wl[642].w";
	setAttr ".wl[642].w[1]" 0.034985773694849037;
	setAttr ".wl[642].w[9]" 0.35958737134933472;
	setAttr ".wl[642].w[10]" 0.60542685495581627;
	setAttr -s 3 ".wl[643].w";
	setAttr ".wl[643].w[1]" 0.043779795132358523;
	setAttr ".wl[643].w[9]" 0.28882786631584167;
	setAttr ".wl[643].w[10]" 0.6673923385517998;
	setAttr -s 3 ".wl[644].w";
	setAttr ".wl[644].w[1]" 0.047834449624431986;
	setAttr ".wl[644].w[9]" 0.23781639971791421;
	setAttr ".wl[644].w[10]" 0.71434915065765381;
	setAttr -s 3 ".wl[645].w";
	setAttr ".wl[645].w[1]" 0.038664160901461152;
	setAttr ".wl[645].w[9]" 0.28866380578860235;
	setAttr ".wl[645].w[10]" 0.67267203330993652;
	setAttr -s 3 ".wl[646].w";
	setAttr ".wl[646].w[1]" 0.026757252818149245;
	setAttr ".wl[646].w[9]" 0.25126128136535297;
	setAttr ".wl[646].w[10]" 0.7219814658164978;
	setAttr -s 3 ".wl[647].w";
	setAttr ".wl[647].w[1]" 0.029789171163990134;
	setAttr ".wl[647].w[9]" 0.24048093801264558;
	setAttr ".wl[647].w[10]" 0.72972989082336426;
	setAttr -s 3 ".wl[648].w";
	setAttr ".wl[648].w[1]" 0.019910162507543277;
	setAttr ".wl[648].w[9]" 0.22811358589028388;
	setAttr ".wl[648].w[10]" 0.75197625160217285;
	setAttr -s 3 ".wl[649].w";
	setAttr ".wl[649].w[1]" 0.014115114782270876;
	setAttr ".wl[649].w[9]" 0.28492061319548179;
	setAttr ".wl[649].w[10]" 0.70096427202224731;
	setAttr -s 3 ".wl[650].w";
	setAttr ".wl[650].w[1]" 0.00073054274168999624;
	setAttr ".wl[650].w[9]" 0.99926596879959106;
	setAttr ".wl[650].w[10]" 3.4884587189392652e-006;
	setAttr -s 3 ".wl[651].w";
	setAttr ".wl[651].w[1]" 0.00083252887472712203;
	setAttr ".wl[651].w[9]" 0.99916255474090576;
	setAttr ".wl[651].w[10]" 4.9163843671162296e-006;
	setAttr -s 3 ".wl[652].w";
	setAttr ".wl[652].w[1]" 0.00088677044732874365;
	setAttr ".wl[652].w[9]" 0.9991072416305542;
	setAttr ".wl[652].w[10]" 5.9879221170571649e-006;
	setAttr -s 3 ".wl[653].w";
	setAttr ".wl[653].w[1]" 0.00076900781015366631;
	setAttr ".wl[653].w[9]" 0.99922645092010498;
	setAttr ".wl[653].w[10]" 4.541269741353202e-006;
	setAttr -s 3 ".wl[654].w";
	setAttr ".wl[654].w[1]" 0.00070556844836698683;
	setAttr ".wl[654].w[9]" 0.9992910623550415;
	setAttr ".wl[654].w[10]" 3.36919659150927e-006;
	setAttr -s 3 ".wl[655].w";
	setAttr ".wl[655].w[1]" 0.00082121877458088898;
	setAttr ".wl[655].w[9]" 0.99917525053024292;
	setAttr ".wl[655].w[10]" 3.5306951761910659e-006;
	setAttr -s 3 ".wl[656].w";
	setAttr ".wl[656].w[1]" 0.00061474742158557831;
	setAttr ".wl[656].w[9]" 0.99938231706619263;
	setAttr ".wl[656].w[10]" 2.9355122217947738e-006;
	setAttr -s 3 ".wl[657].w";
	setAttr ".wl[657].w[1]" 0.00086328208223022886;
	setAttr ".wl[657].w[9]" 0.99913161993026733;
	setAttr ".wl[657].w[10]" 5.0979875024372019e-006;
	setAttr -s 3 ".wl[658].w";
	setAttr ".wl[658].w[1]" 0.00042716309360650676;
	setAttr ".wl[658].w[9]" 0.99956995248794556;
	setAttr ".wl[658].w[10]" 2.8844184479366232e-006;
	setAttr -s 3 ".wl[659].w";
	setAttr ".wl[659].w[1]" 0.00043321129112245261;
	setAttr ".wl[659].w[9]" 0.99956423044204712;
	setAttr ".wl[659].w[10]" 2.5582668304282593e-006;
	setAttr -s 3 ".wl[660].w";
	setAttr ".wl[660].w[1]" 0.00069910240739670638;
	setAttr ".wl[660].w[9]" 0.99929755926132202;
	setAttr ".wl[660].w[10]" 3.3383312812721069e-006;
	setAttr -s 3 ".wl[661].w";
	setAttr ".wl[661].w[1]" 0.00074709126946357512;
	setAttr ".wl[661].w[9]" 0.99924969673156738;
	setAttr ".wl[661].w[10]" 3.2119989690420995e-006;
	setAttr -s 3 ".wl[662].w";
	setAttr ".wl[662].w[1]" 0.00090506621791122861;
	setAttr ".wl[662].w[9]" 0.99909061193466187;
	setAttr ".wl[662].w[10]" 4.3218474269062081e-006;
	setAttr -s 3 ".wl[663].w";
	setAttr ".wl[663].w[1]" 0.00054603228054947656;
	setAttr ".wl[663].w[9]" 0.99945074319839478;
	setAttr ".wl[663].w[10]" 3.2245210557480119e-006;
	setAttr -s 3 ".wl[664].w";
	setAttr ".wl[664].w[1]" 0.0005361592404358362;
	setAttr ".wl[664].w[9]" 0.99946022033691406;
	setAttr ".wl[664].w[10]" 3.6204226501012699e-006;
	setAttr -s 3 ".wl[665].w";
	setAttr ".wl[665].w[1]" 0.00068776957643313166;
	setAttr ".wl[665].w[9]" 0.99930816888809204;
	setAttr ".wl[665].w[10]" 4.0615354748273408e-006;
	setAttr -s 3 ".wl[666].w";
	setAttr ".wl[666].w[1]" 0.001490271571237904;
	setAttr ".wl[666].w[9]" 0.99850261211395264;
	setAttr ".wl[666].w[10]" 7.1163148094592492e-006;
	setAttr -s 3 ".wl[667].w";
	setAttr ".wl[667].w[1]" 0.00071249051566956237;
	setAttr ".wl[667].w[9]" 0.99928444623947144;
	setAttr ".wl[667].w[10]" 3.0632448590020451e-006;
	setAttr -s 3 ".wl[668].w";
	setAttr ".wl[668].w[1]" 0.00078114385808768466;
	setAttr ".wl[668].w[9]" 0.99921512603759766;
	setAttr ".wl[668].w[10]" 3.7301043146591389e-006;
	setAttr -s 3 ".wl[669].w";
	setAttr ".wl[669].w[1]" 0.00034148497014729027;
	setAttr ".wl[669].w[9]" 0.99965649843215942;
	setAttr ".wl[669].w[10]" 2.0165976932859247e-006;
	setAttr -s 3 ".wl[670].w";
	setAttr ".wl[670].w[1]" 0.00082348043620534845;
	setAttr ".wl[670].w[9]" 0.99917095899581909;
	setAttr ".wl[670].w[10]" 5.5605679755597873e-006;
	setAttr -s 3 ".wl[671].w";
	setAttr ".wl[671].w[1]" 0.00066223079062846318;
	setAttr ".wl[671].w[9]" 0.99933385848999023;
	setAttr ".wl[671].w[10]" 3.9107193813024073e-006;
	setAttr -s 3 ".wl[672].w";
	setAttr ".wl[672].w[1]" 0.0015094917236593028;
	setAttr ".wl[672].w[9]" 0.99848330020904541;
	setAttr ".wl[672].w[10]" 7.2080672952871451e-006;
	setAttr -s 3 ".wl[673].w";
	setAttr ".wl[673].w[1]" 0.0015721677493569469;
	setAttr ".wl[673].w[9]" 0.9984210729598999;
	setAttr ".wl[673].w[10]" 6.7592907431507107e-006;
	setAttr -s 3 ".wl[674].w[0:2]"  1.6245982884376608e-005 0.00033428893303969566 
		0.99964946508407593;
	setAttr -s 3 ".wl[675].w[0:2]"  1.1882349077647467e-005 0.00022462888139110254 
		0.99976348876953125;
	setAttr -s 3 ".wl[676].w[0:2]"  1.4329385821067678e-005 0.000245785283978737 
		0.9997398853302002;
	setAttr -s 3 ".wl[677].w[0:2]"  1.4989485868544306e-005 0.00021371353613462951 
		0.99977129697799683;
	setAttr -s 3 ".wl[678].w[0:2]"  2.8105360104905472e-005 0.00032284678833259452 
		0.9996490478515625;
	setAttr -s 3 ".wl[679].w[0:2]"  5.8746906806911471e-005 0.00056406202645114514 
		0.99937719106674194;
	setAttr -s 3 ".wl[680].w[0:2]"  3.51393713260358e-005 0.00033297891480677671 
		0.99963188171386719;
	setAttr -s 3 ".wl[681].w[0:2]"  4.8405734820215528e-005 0.00055121699162021421 
		0.99940037727355957;
	setAttr -s 3 ".wl[682].w[0:2]"  4.3515155066322568e-005 0.00059687714840047431 
		0.9993596076965332;
	setAttr -s 3 ".wl[683].w";
	setAttr ".wl[683].w[1]" 0.0015204676994013755;
	setAttr ".wl[683].w[2]" 0.99790936708450317;
	setAttr ".wl[683].w[9]" 0.00057016521609545064;
	setAttr -s 3 ".wl[684].w";
	setAttr ".wl[684].w[1]" 0.00052655192951037361;
	setAttr ".wl[684].w[2]" 0.99820876121520996;
	setAttr ".wl[684].w[9]" 0.0012646868552796656;
	setAttr -s 3 ".wl[685].w";
	setAttr ".wl[685].w[1]" 0.00023274697381008447;
	setAttr ".wl[685].w[2]" 0.99898386001586914;
	setAttr ".wl[685].w[9]" 0.0007833930103207749;
	setAttr -s 3 ".wl[686].w";
	setAttr ".wl[686].w[1]" 5.1566596599243227e-005;
	setAttr ".wl[686].w[2]" 0.99965476989746094;
	setAttr ".wl[686].w[9]" 0.00029366350593981928;
	setAttr -s 3 ".wl[687].w";
	setAttr ".wl[687].w[1]" 5.125888506964554e-005;
	setAttr ".wl[687].w[2]" 0.999886155128479;
	setAttr ".wl[687].w[9]" 6.2585986451350547e-005;
	setAttr -s 3 ".wl[688].w[0:2]"  2.954386468469743e-006 3.7517167334020494e-005 
		0.99995952844619751;
	setAttr -s 3 ".wl[689].w";
	setAttr ".wl[689].w[1]" 3.3094349311219075e-005;
	setAttr ".wl[689].w[2]" 0.99987167119979858;
	setAttr ".wl[689].w[9]" 9.5234450890196954e-005;
	setAttr -s 3 ".wl[690].w";
	setAttr ".wl[690].w[1]" 2.5534936216775081e-005;
	setAttr ".wl[690].w[2]" 0.99973297119140625;
	setAttr ".wl[690].w[9]" 0.0002414938723769749;
	setAttr -s 3 ".wl[691].w";
	setAttr ".wl[691].w[1]" 2.2150390135225639e-005;
	setAttr ".wl[691].w[2]" 0.9994962215423584;
	setAttr ".wl[691].w[9]" 0.00048162806750637587;
	setAttr -s 3 ".wl[692].w";
	setAttr ".wl[692].w[1]" 3.1216151004181009e-005;
	setAttr ".wl[692].w[2]" 0.99948441982269287;
	setAttr ".wl[692].w[9]" 0.00048436402630294792;
	setAttr -s 3 ".wl[693].w";
	setAttr ".wl[693].w[1]" 3.6349485457691645e-005;
	setAttr ".wl[693].w[2]" 0.99937307834625244;
	setAttr ".wl[693].w[9]" 0.000590572168289867;
	setAttr -s 3 ".wl[694].w";
	setAttr ".wl[694].w[1]" 4.866922270833849e-005;
	setAttr ".wl[694].w[2]" 0.99930721521377563;
	setAttr ".wl[694].w[9]" 0.00064411556351602671;
	setAttr -s 3 ".wl[695].w";
	setAttr ".wl[695].w[1]" 6.5632609468334712e-005;
	setAttr ".wl[695].w[2]" 0.99954134225845337;
	setAttr ".wl[695].w[9]" 0.00039302513207829613;
	setAttr -s 3 ".wl[696].w";
	setAttr ".wl[696].w[1]" 9.9053358530911952e-005;
	setAttr ".wl[696].w[2]" 0.99984854459762573;
	setAttr ".wl[696].w[9]" 5.2402043843355627e-005;
	setAttr -s 3 ".wl[697].w[0:2]"  1.3100027635723913e-005 0.0002654324773996765 
		0.9997214674949646;
	setAttr -s 3 ".wl[698].w[1:3]"  0.017014227257529321 0.98238247632980347 
		0.00060329641266721097;
	setAttr -s 3 ".wl[699].w[1:3]"  0.019219614684629252 0.98010462522506714 
		0.00067576009030360885;
	setAttr -s 3 ".wl[700].w[1:3]"  0.020914964174279366 0.9783434271812439 
		0.00074160864447673732;
	setAttr -s 3 ".wl[701].w[1:3]"  0.029942042284343218 0.96897798776626587 
		0.0010799699493909138;
	setAttr -s 3 ".wl[702].w[1:3]"  0.039058739857292676 0.95951974391937256 
		0.0014215162233347639;
	setAttr -s 3 ".wl[703].w[1:3]"  0.039453243227055866 0.95912373065948486 
		0.0014230261134592704;
	setAttr -s 3 ".wl[704].w[1:3]"  0.037876234523342038 0.96078073978424072 
		0.0013430256924172382;
	setAttr -s 3 ".wl[705].w[1:3]"  0.040899111020653182 0.95766288042068481 
		0.0014380085586620003;
	setAttr -s 3 ".wl[706].w[1:3]"  0.040673246927928675 0.95788455009460449 
		0.0014422029774668358;
	setAttr -s 3 ".wl[707].w[1:3]"  0.034986758237122696 0.96375131607055664 
		0.0012619256923206625;
	setAttr -s 3 ".wl[708].w[1:3]"  0.034671931892355734 0.96406620740890503 
		0.001261860698739236;
	setAttr -s 3 ".wl[709].w[1:3]"  0.018944619231423539 0.98037207126617432 
		0.00068330950240214322;
	setAttr -s 3 ".wl[710].w[1:3]"  0.015063400368369536 0.98440247774124146 
		0.00053412189038900962;
	setAttr -s 3 ".wl[711].w[1:3]"  0.01141238239712215 0.98818635940551758 
		0.00040125819736027215;
	setAttr -s 3 ".wl[712].w[1:3]"  0.0096569742102482412 0.99000060558319092 
		0.00034242020656084066;
	setAttr -s 3 ".wl[713].w[1:3]"  0.0082695942036595041 0.99143213033676147 
		0.00029827545957902124;
	setAttr -s 3 ".wl[714].w[1:3]"  0.0094582909882039261 0.99019747972488403 
		0.00034422928691204131;
	setAttr -s 3 ".wl[715].w[1:3]"  0.010287387817620343 0.98934155702590942 
		0.00037105515647023333;
	setAttr -s 3 ".wl[716].w[1:3]"  0.014344830715079528 0.98514652252197266 
		0.00050864676294781568;
	setAttr -s 3 ".wl[717].w[1:3]"  0.01537636834811568 0.98408299684524536 
		0.00054063480663895747;
	setAttr -s 3 ".wl[718].w[1:3]"  0.020238587419311314 0.97904378175735474 
		0.00071763082333395074;
	setAttr -s 3 ".wl[719].w[1:3]"  0.017531631452729686 0.98183602094650269 
		0.00063234760076762728;
	setAttr -s 3 ".wl[720].w[1:3]"  0.019369140142985082 0.97992593050003052 
		0.00070492935698439883;
	setAttr -s 3 ".wl[721].w[1:3]"  0.022461634405762636 0.97672820091247559 
		0.00081016468176177739;
	setAttr -s 3 ".wl[722].w[1:3]"  0.0010752775305830652 0.10418867090996869 
		0.89473605155944824;
	setAttr -s 3 ".wl[723].w[1:3]"  0.0016132539614203414 0.15895540057578059 
		0.83943134546279907;
	setAttr -s 3 ".wl[724].w[1:3]"  0.0019862432284919653 0.19245644619030075 
		0.80555731058120728;
	setAttr -s 3 ".wl[725].w[1:3]"  0.0018419813731725965 0.17263881448711793 
		0.82551920413970947;
	setAttr -s 3 ".wl[726].w[1:3]"  0.0016321558956451292 0.15029793786961365 
		0.84806990623474121;
	setAttr -s 3 ".wl[727].w[1:3]"  0.0012014687268973659 0.10758964417288291 
		0.89120888710021973;
	setAttr -s 3 ".wl[728].w[1:3]"  0.00067013077430249333 0.058535818532185542 
		0.94079405069351196;
	setAttr -s 3 ".wl[729].w[1:3]"  0.00059634551566364782 0.049755810646598314 
		0.94964784383773804;
	setAttr -s 3 ".wl[730].w[1:3]"  0.00057470432432989713 0.046014312590037777 
		0.95341098308563232;
	setAttr -s 3 ".wl[731].w[1:3]"  0.00060635466694901915 0.047692838715314163 
		0.95170080661773682;
	setAttr -s 3 ".wl[732].w[1:3]"  0.00065239410415427433 0.052690544319002462 
		0.94665706157684326;
	setAttr -s 3 ".wl[733].w[1:3]"  0.00068727055371975703 0.058900506107199435 
		0.94041222333908081;
	setAttr -s 3 ".wl[734].w[1:3]"  0.00067934539783341241 0.063087014885064532 
		0.93623363971710205;
	setAttr -s 3 ".wl[735].w[1:3]"  0.001013315570528611 0.099843048202817336 
		0.89914363622665405;
	setAttr -s 3 ".wl[736].w[1:3]"  0.0010399633986886295 0.1007670944588248 
		0.89819294214248657;
	setAttr -s 3 ".wl[737].w[1:3]"  0.0010697243339868223 0.10025984071423096 
		0.89867043495178223;
	setAttr -s 3 ".wl[738].w[1:3]"  0.0011428970765557465 0.10524453931336734 
		0.8936125636100769;
	setAttr -s 3 ".wl[739].w[1:3]"  0.0011786455181910657 0.11046848354064683 
		0.88835287094116211;
	setAttr -s 3 ".wl[740].w[1:3]"  0.0011680591438114434 0.11317904111406209 
		0.88565289974212646;
	setAttr -s 3 ".wl[741].w[1:3]"  0.0008165669387178771 0.080457227235476464 
		0.91872620582580566;
	setAttr -s 3 ".wl[742].w[1:3]"  0.00072034819335015424 0.069798085854348824 
		0.92948156595230103;
	setAttr -s 3 ".wl[743].w[1:3]"  0.00090785823345312271 0.085088888783453609 
		0.91400325298309326;
	setAttr -s 3 ".wl[744].w[1:3]"  0.00094087879647427783 0.086641470980747398 
		0.91241765022277832;
	setAttr -s 3 ".wl[745].w[1:3]"  0.0010118099960238112 0.094831564733132687 
		0.90415662527084351;
	setAttr -s 3 ".wl[746].w[2:4]"  0.041659392057718389 0.95680004358291626 
		0.0015405643593653501;
	setAttr -s 3 ".wl[747].w[2:4]"  0.042747171929721391 0.95568346977233887 
		0.0015693582979397454;
	setAttr -s 3 ".wl[748].w[2:4]"  0.043133559276428181 0.95527136325836182 
		0.0015950774652100054;
	setAttr -s 3 ".wl[749].w[2:4]"  0.043195533919293837 0.95518362522125244 
		0.0016208408594537221;
	setAttr -s 3 ".wl[750].w[2:4]"  0.042245980349915987 0.95615643262863159 
		0.0015975870214524203;
	setAttr -s 3 ".wl[751].w[2:4]"  0.03378636981281883 0.96494585275650024 
		0.0012677774306809279;
	setAttr -s 3 ".wl[752].w[2:4]"  0.020202341598932954 0.97905057668685913 
		0.00074708171420791495;
	setAttr -s 3 ".wl[753].w[2:4]"  0.017035788535167021 0.98233878612518311 
		0.00062542533964987169;
	setAttr -s 3 ".wl[754].w[2:4]"  0.014918807981410567 0.98452949523925781 
		0.00055169677933162035;
	setAttr -s 3 ".wl[755].w[2:4]"  0.014877272579717667 0.98456448316574097 
		0.00055824425454136688;
	setAttr -s 3 ".wl[756].w[2:4]"  0.014991039237923453 0.98444205522537231 
		0.00056690553670423307;
	setAttr -s 3 ".wl[757].w[2:4]"  0.015865106661644143 0.98353958129882813 
		0.00059531203952773381;
	setAttr -s 3 ".wl[758].w[2:4]"  0.017975947401440515 0.98135930299758911 
		0.0006647496009703739;
	setAttr -s 3 ".wl[759].w[2:4]"  0.024781767246402995 0.97430843114852905 
		0.00090980160506795387;
	setAttr -s 3 ".wl[760].w[2:4]"  0.029247763807617944 0.96967065334320068 
		0.0010815828491813732;
	setAttr -s 3 ".wl[761].w[2:4]"  0.035585726992948923 0.96307897567749023 
		0.0013352973295608457;
	setAttr -s 3 ".wl[762].w[2:4]"  0.053155152257297632 0.94483470916748047 
		0.0020101385752219025;
	setAttr -s 3 ".wl[763].w[2:4]"  0.057579086033909287 0.94026035070419312 
		0.002160563261897599;
	setAttr -s 3 ".wl[764].w[2:4]"  0.061538113851572464 0.93618619441986084 
		0.0022756917285666977;
	setAttr -s 3 ".wl[765].w[2:4]"  0.057139328073166781 0.94076293706893921 
		0.0020977348578940114;
	setAttr -s 3 ".wl[766].w[2:4]"  0.040273506325669034 0.9582371711730957 
		0.0014893225012352596;
	setAttr -s 3 ".wl[767].w[2:4]"  0.046948784755384269 0.95128953456878662 
		0.0017616806758291124;
	setAttr -s 3 ".wl[768].w[2:4]"  0.045085163508233987 0.95320987701416016 
		0.0017049594776058579;
	setAttr -s 3 ".wl[769].w[2:4]"  0.04350161920143189 0.95486605167388916 
		0.0016323291246789502;
	setAttr -s 3 ".wl[770].w[2:4]"  0.0010040171019909236 0.11350836683584477 
		0.88548761606216431;
	setAttr -s 3 ".wl[771].w[2:4]"  0.0010381468296613819 0.11932848610872362 
		0.87963336706161499;
	setAttr -s 3 ".wl[772].w[2:4]"  0.0011954276798913793 0.13514811108124752 
		0.86365646123886108;
	setAttr -s 3 ".wl[773].w[2:4]"  0.0012338153997260948 0.13496935442296679 
		0.86379683017730713;
	setAttr -s 3 ".wl[774].w[2:4]"  0.0013392678398590917 0.14396278942637625 
		0.85469794273376465;
	setAttr -s 3 ".wl[775].w[2:4]"  0.0014625356291765182 0.15998951934824046 
		0.83854794502258301;
	setAttr -s 3 ".wl[776].w[2:4]"  0.0015852389212801222 0.17921800042427041 
		0.81919676065444946;
	setAttr -s 3 ".wl[777].w[2:4]"  0.0015064105978860622 0.17315260315028289 
		0.82534098625183105;
	setAttr -s 3 ".wl[778].w[2:4]"  0.0013298588678957867 0.15034625950597505 
		0.84832388162612915;
	setAttr -s 3 ".wl[779].w[2:4]"  0.0014047196045031496 0.15366498921965457 
		0.84493029117584229;
	setAttr -s 3 ".wl[780].w[2:4]"  0.0013541820845145421 0.14556608168272789 
		0.85307973623275757;
	setAttr -s 3 ".wl[781].w[2:4]"  0.0012198914314024358 0.13344637262575698 
		0.86533373594284058;
	setAttr -s 3 ".wl[782].w[2:4]"  0.0012247544408884768 0.13846385658969013 
		0.86031138896942139;
	setAttr -s 3 ".wl[783].w[2:4]"  0.0011689540195823258 0.13436419999119037 
		0.86446684598922729;
	setAttr -s 3 ".wl[784].w[2:4]"  0.00090361167163650587 0.10215728949337204 
		0.89693909883499146;
	setAttr -s 3 ".wl[785].w[2:4]"  0.00086888145756490822 0.095048701054336951 
		0.90408241748809814;
	setAttr -s 3 ".wl[786].w[2:4]"  0.00086894936927016787 0.093406644388359231 
		0.90572440624237061;
	setAttr -s 3 ".wl[787].w[2:4]"  0.00081575878486984986 0.089237501541515649 
		0.9099467396736145;
	setAttr -s 3 ".wl[788].w[2:4]"  0.00083005158667153909 0.093841078593687344 
		0.90532886981964111;
	setAttr -s 3 ".wl[789].w[2:4]"  0.00078483441448034175 0.090211967438699595 
		0.90900319814682007;
	setAttr -s 3 ".wl[790].w[2:4]"  0.00086380021804690938 0.097656419107972375 
		0.90147978067398071;
	setAttr -s 3 ".wl[791].w[2:4]"  0.0012729780146418976 0.13925349550754437 
		0.85947352647781372;
	setAttr -s 3 ".wl[792].w[2:4]"  0.0013584116870140547 0.14602068863570933 
		0.85262089967727661;
	setAttr -s 3 ".wl[793].w[2:4]"  0.0010804701294680522 0.11819468255379001 
		0.88072484731674194;
	setAttr -s 3 ".wl[794].w[3:5]"  0.026711398725287071 0.97217923402786255 
		0.0011093672468503795;
	setAttr -s 3 ".wl[795].w[3:5]"  0.028901464016383327 0.96990680694580078 
		0.0011917290378158911;
	setAttr -s 3 ".wl[796].w[3:5]"  0.032578058885899264 0.96606892347335815 
		0.0013530176407425796;
	setAttr -s 3 ".wl[797].w[3:5]"  0.031964928247663935 0.96668827533721924 
		0.001346796415116828;
	setAttr -s 3 ".wl[798].w[3:5]"  0.033500731246787367 0.96507686376571655 
		0.0014224049874960833;
	setAttr -s 3 ".wl[799].w[3:5]"  0.032607799151039084 0.96601831912994385 
		0.0013738817190170713;
	setAttr -s 3 ".wl[800].w[3:5]"  0.041457309342475025 0.95682090520858765 
		0.001721785448937327;
	setAttr -s 3 ".wl[801].w[3:5]"  0.041753825112840821 0.95652449131011963 
		0.0017216835770395473;
	setAttr -s 3 ".wl[802].w[3:5]"  0.032803995653479572 0.96583360433578491 
		0.0013624000107355133;
	setAttr -s 3 ".wl[803].w[3:5]"  0.026921431873725542 0.97194427251815796 
		0.0011342956081165001;
	setAttr -s 3 ".wl[804].w[3:5]"  0.026710335613913793 0.97215557098388672 
		0.0011340934021994865;
	setAttr -s 3 ".wl[805].w[3:5]"  0.023539044347927255 0.97546917200088501 
		0.00099178365118773436;
	setAttr -s 3 ".wl[806].w[3:5]"  0.023848232327645016 0.97516131401062012 
		0.00099045366173486772;
	setAttr -s 3 ".wl[807].w[3:5]"  0.020796025684106927 0.97834646701812744 
		0.00085750729776563103;
	setAttr -s 3 ".wl[808].w[3:5]"  0.021227479558684717 0.97789090871810913 
		0.00088161172320615298;
	setAttr -s 3 ".wl[809].w[3:5]"  0.020427184180490308 0.97871214151382446 
		0.00086067430568522851;
	setAttr -s 3 ".wl[810].w[3:5]"  0.019846122945221801 0.97931122779846191 
		0.00084264925631628363;
	setAttr -s 3 ".wl[811].w[3:5]"  0.021938669838503271 0.97713696956634521 
		0.00092436059515151308;
	setAttr -s 3 ".wl[812].w[3:5]"  0.022955586065663731 0.97609102725982666 
		0.00095338667450960699;
	setAttr -s 3 ".wl[813].w[3:5]"  0.029805001853289995 0.96896600723266602 
		0.0012289909140439878;
	setAttr -s 3 ".wl[814].w[3:5]"  0.03144179087790714 0.96725237369537354 
		0.0013058354267193283;
	setAttr -s 3 ".wl[815].w[3:5]"  0.038606094814224508 0.95976728200912476 
		0.0016266231766507379;
	setAttr -s 3 ".wl[816].w[3:5]"  0.027509493401677774 0.97132247686386108 
		0.0011680297344611409;
	setAttr -s 3 ".wl[817].w[3:5]"  0.027620231951663642 0.97121602296829224 
		0.0011637450800441203;
	setAttr -s 3 ".wl[818].w[3:5]"  0.00097406788966950886 0.12082766608097258 
		0.87819826602935791;
	setAttr -s 3 ".wl[819].w[3:5]"  0.00084075700264476963 0.10605623949546314 
		0.89310300350189209;
	setAttr -s 3 ".wl[820].w[3:5]"  0.00070164989364290679 0.087035731564639562 
		0.91226261854171753;
	setAttr -s 3 ".wl[821].w[3:5]"  0.00066310645057411914 0.07955562590645103 
		0.91978126764297485;
	setAttr -s 3 ".wl[822].w[3:5]"  0.00065303130836648045 0.076971051256941134 
		0.92237591743469238;
	setAttr -s 3 ".wl[823].w[3:5]"  0.00071040661839630044 0.085230490846355894 
		0.9140591025352478;
	setAttr -s 3 ".wl[824].w[3:5]"  0.00074708416203080562 0.092671692826952354 
		0.90658122301101685;
	setAttr -s 3 ".wl[825].w[3:5]"  0.00075553777857498457 0.095306407182972869 
		0.90393805503845215;
	setAttr -s 3 ".wl[826].w[3:5]"  0.00082394933840165829 0.10220643424848189 
		0.89696961641311646;
	setAttr -s 3 ".wl[827].w[3:5]"  0.00086764383624068854 0.10409494352032669 
		0.89503741264343262;
	setAttr -s 3 ".wl[828].w[3:5]"  0.00087545374646461538 0.10318758031115258 
		0.89593696594238281;
	setAttr -s 3 ".wl[829].w[3:5]"  0.00090492616280239268 0.10856788505927402 
		0.89052718877792358;
	setAttr -s 3 ".wl[830].w[3:5]"  0.0014170375523421543 0.17577582924987342 
		0.82280713319778442;
	setAttr -s 3 ".wl[831].w[3:5]"  0.0011815039782846724 0.14903948620268456 
		0.84977900981903076;
	setAttr -s 3 ".wl[832].w[3:5]"  0.00077404936146412422 0.096016681591752431 
		0.90320926904678345;
	setAttr -s 3 ".wl[833].w[3:5]"  0.00069699894860081779 0.083622056131813005 
		0.91568094491958618;
	setAttr -s 3 ".wl[834].w[3:5]"  0.00060301805789624637 0.071076335656093018 
		0.92832064628601074;
	setAttr -s 3 ".wl[835].w[3:5]"  0.00052462078566896798 0.062941093668981915 
		0.93653428554534912;
	setAttr -s 3 ".wl[836].w[3:5]"  0.00046205457245883808 0.057315409817342185 
		0.94222253561019897;
	setAttr -s 3 ".wl[837].w[3:5]"  0.00044040317765170489 0.055554107472983061 
		0.94400548934936523;
	setAttr -s 3 ".wl[838].w[3:5]"  0.00046454498754660553 0.057624353671205837 
		0.94191110134124756;
	setAttr -s 3 ".wl[839].w[3:5]"  0.00049409513495675286 0.059278753947990023 
		0.94022715091705322;
	setAttr -s 3 ".wl[840].w[3:5]"  0.00065777109273137556 0.077529873388927556 
		0.92181235551834106;
	setAttr -s 3 ".wl[841].w[3:5]"  0.00064958537540561496 0.077933535924338035 
		0.92141687870025635;
	setAttr -s 3 ".wl[842].w[4:6]"  0.025275071554001622 0.97380608320236206 
		0.00091884524363631723;
	setAttr -s 3 ".wl[843].w[4:6]"  0.021801529044220853 0.97741067409515381 
		0.00078779686062533706;
	setAttr -s 3 ".wl[844].w[4:6]"  0.019414761982210565 0.97987943887710571 
		0.00070579914068372022;
	setAttr -s 3 ".wl[845].w[4:6]"  0.020056956496162105 0.97920495271682739 
		0.00073809078701050381;
	setAttr -s 3 ".wl[846].w[4:6]"  0.018839190033763945 0.98046302795410156 
		0.00069778201213449109;
	setAttr -s 3 ".wl[847].w[4:6]"  0.016335747133337738 0.98306310176849365 
		0.00060115109816860982;
	setAttr -s 3 ".wl[848].w[4:6]"  0.022403869582916621 0.97678166627883911 
		0.00081446413824426802;
	setAttr -s 3 ".wl[849].w[4:6]"  0.022207376675213258 0.97699016332626343 
		0.00080245999852331302;
	setAttr -s 3 ".wl[850].w[4:6]"  0.02439252450538773 0.97472071647644043 
		0.00088675901817184032;
	setAttr -s 3 ".wl[851].w[4:6]"  0.017792865093652931 0.9815523624420166 
		0.00065477246433046879;
	setAttr -s 3 ".wl[852].w[4:6]"  0.018803842569533703 0.98049968481063843 
		0.00069647261982786867;
	setAttr -s 3 ".wl[853].w[4:6]"  0.02049502064914192 0.97875076532363892 
		0.00075421402721916248;
	setAttr -s 3 ".wl[854].w[4:6]"  0.028875207982274151 0.97007507085800171 
		0.0010497211597241408;
	setAttr -s 3 ".wl[855].w[4:6]"  0.027294450462691595 0.97171926498413086 
		0.00098628455317754417;
	setAttr -s 3 ".wl[856].w[4:6]"  0.013140350424907708 0.98638194799423218 
		0.00047770158086011324;
	setAttr -s 3 ".wl[857].w[4:6]"  0.012559116440259133 0.98697870969772339 
		0.0004621738620174776;
	setAttr -s 3 ".wl[858].w[4:6]"  0.011758283093744624 0.98780620098114014 
		0.00043551592511523895;
	setAttr -s 3 ".wl[859].w[4:6]"  0.010852667899650835 0.98874795436859131 
		0.00039937773175785767;
	setAttr -s 3 ".wl[860].w[4:6]"  0.011039312895048338 0.98855936527252197 
		0.00040132183242968963;
	setAttr -s 3 ".wl[861].w[4:6]"  0.011223541133332694 0.98837089538574219 
		0.00040556348092511842;
	setAttr -s 3 ".wl[862].w[4:6]"  0.013334860005176349 0.98618036508560181 
		0.00048477490922184402;
	setAttr -s 3 ".wl[863].w[4:6]"  0.015339515640890488 0.9840959906578064 
		0.00056449370130311574;
	setAttr -s 3 ".wl[864].w[4:6]"  0.020243261875234283 0.97900694608688354 
		0.00074979203788217048;
	setAttr -s 3 ".wl[865].w[4:6]"  0.025170949785056611 0.97390276193618774 
		0.00092628827875564611;
	setAttr -s 3 ".wl[866].w[4:6]"  0.00046606067253992568 0.0966112494127567 
		0.90292268991470337;
	setAttr -s 3 ".wl[867].w[4:6]"  0.00059766375348124443 0.12616603768542256 
		0.87323629856109619;
	setAttr -s 3 ".wl[868].w[4:6]"  0.00074646852755588843 0.15473796941494899 
		0.84451556205749512;
	setAttr -s 3 ".wl[869].w[4:6]"  0.00073426830186994673 0.14679455888852921 
		0.85247117280960083;
	setAttr -s 3 ".wl[870].w[4:6]"  0.00049332069589485899 0.096755293138486242 
		0.9027513861656189;
	setAttr -s 3 ".wl[871].w[4:6]"  0.00048842373743654291 0.097645497885793436 
		0.90186607837677002;
	setAttr -s 3 ".wl[872].w[4:6]"  0.00045920364742793227 0.09518991954440556 
		0.9043508768081665;
	setAttr -s 3 ".wl[873].w[4:6]"  0.00041715262616817347 0.088060518520224645 
		0.91152232885360718;
	setAttr -s 3 ".wl[874].w[4:6]"  0.00047295269670378977 0.098040054467297674 
		0.90148699283599854;
	setAttr -s 3 ".wl[875].w[4:6]"  0.00050898975475731313 0.1017570834721714 
		0.89773392677307129;
	setAttr -s 3 ".wl[876].w[4:6]"  0.00057749111174366008 0.11326380413056591 
		0.88615870475769043;
	setAttr -s 3 ".wl[877].w[4:6]"  0.00058498074329400873 0.11694929908000921 
		0.88246572017669678;
	setAttr -s 3 ".wl[878].w[4:6]"  0.000709348932784038 0.14704341290803627 
		0.85224723815917969;
	setAttr -s 3 ".wl[879].w[4:6]"  0.0011568743969363124 0.24421542098270235 
		0.75462770462036133;
	setAttr -s 3 ".wl[880].w[4:6]"  0.001185210087975056 0.24568626131705423 
		0.7531285285949707;
	setAttr -s 3 ".wl[881].w[4:6]"  0.0009816125305275611 0.19624377933424905 
		0.80277460813522339;
	setAttr -s 3 ".wl[882].w[4:6]"  0.00071835416011339947 0.14089149338551038 
		0.85839015245437622;
	setAttr -s 3 ".wl[883].w[4:6]"  0.00065266857477839385 0.13048142423299139 
		0.86886590719223022;
	setAttr -s 3 ".wl[884].w[4:6]"  0.00054691598292196683 0.11337222292546427 
		0.88608086109161377;
	setAttr -s 3 ".wl[885].w[4:6]"  0.00050364979974689349 0.10632015219457684 
		0.89317619800567627;
	setAttr -s 3 ".wl[886].w[4:6]"  0.00054906643717640583 0.11381794177205211 
		0.88563299179077148;
	setAttr -s 3 ".wl[887].w[4:6]"  0.00054870855867139513 0.10969765174330004 
		0.88975363969802856;
	setAttr -s 3 ".wl[888].w[4:6]"  0.0005378631194907159 0.10549146856462183 
		0.89397066831588745;
	setAttr -s 3 ".wl[889].w[4:6]"  0.00049141948075728662 0.098244389845414587 
		0.90126419067382813;
	setAttr -s 3 ".wl[890].w[5:7]"  0.005554136710117152 0.99430668354034424 
		0.00013917974953860964;
	setAttr -s 3 ".wl[891].w[5:7]"  0.0082902283535905702 0.99150294065475464 
		0.00020683099165479064;
	setAttr -s 3 ".wl[892].w[5:7]"  0.0099429973306734594 0.9898078441619873 
		0.0002491585073392363;
	setAttr -s 3 ".wl[893].w[5:7]"  0.010041134578286712 0.98970496654510498 
		0.00025389887660830815;
	setAttr -s 3 ".wl[894].w[5:7]"  0.0058065731974693184 0.9940459132194519 
		0.00014751358307877756;
	setAttr -s 3 ".wl[895].w[5:7]"  0.0056774889571331952 0.99417895078659058 
		0.00014356025627622855;
	setAttr -s 3 ".wl[896].w[5:7]"  0.0052749707059313432 0.99459284543991089 
		0.00013218385415776784;
	setAttr -s 3 ".wl[897].w[5:7]"  0.0051472487236719575 0.9947243332862854 
		0.0001284179900426423;
	setAttr -s 3 ".wl[898].w[5:7]"  0.0074967883511351217 0.99231535196304321 
		0.00018785968582166502;
	setAttr -s 3 ".wl[899].w[5:7]"  0.0080132814891322058 0.99178409576416016 
		0.00020262274670763817;
	setAttr -s 3 ".wl[900].w[5:7]"  0.0086784413007263677 0.99110108613967896 
		0.00022047255959467776;
	setAttr -s 3 ".wl[901].w[5:7]"  0.0094444405223020715 0.99031674861907959 
		0.00023881085861833911;
	setAttr -s 3 ".wl[902].w[5:7]"  0.011573163118530006 0.98813682794570923 
		0.00029000893576076588;
	setAttr -s 3 ".wl[903].w[5:7]"  0.017633386521765736 0.98192667961120605 
		0.00043993386702821061;
	setAttr -s 3 ".wl[904].w[5:7]"  0.01326880351315024 0.98639869689941406 
		0.000332499587435698;
	setAttr -s 3 ".wl[905].w[5:7]"  0.0098299895327884409 0.9899214506149292 
		0.00024855985228235925;
	setAttr -s 3 ".wl[906].w[5:7]"  0.00732092089846661 0.99249309301376343 
		0.000185986087769962;
	setAttr -s 3 ".wl[907].w[5:7]"  0.0067414691636210645 0.99308806657791138 
		0.00017046425846755866;
	setAttr -s 3 ".wl[908].w[5:7]"  0.0055193063662347811 0.9943423867225647 
		0.00013830691120052135;
	setAttr -s 3 ".wl[909].w[5:7]"  0.0051720219020002112 0.99469894170761108 
		0.00012903639038870505;
	setAttr -s 3 ".wl[910].w[5:7]"  0.0077570554820244634 0.99204856157302856 
		0.00019438294494697236;
	setAttr -s 3 ".wl[911].w[5:7]"  0.008220996115728756 0.99157112836837769 
		0.00020787551589355847;
	setAttr -s 3 ".wl[912].w[5:7]"  0.0051992512224860168 0.99466866254806519 
		0.00013208622944879775;
	setAttr -s 3 ".wl[913].w[5:7]"  0.0054115228185387665 0.99445164203643799 
		0.00013683514502324556;
	setAttr -s 3 ".wl[914].w[5:7]"  0.0001299220672602812 0.073526577318573455 
		0.92634350061416626;
	setAttr -s 3 ".wl[915].w[5:7]"  0.00011681481042422999 0.067697952550263021 
		0.93218523263931274;
	setAttr -s 3 ".wl[916].w[5:7]"  0.00010595573849158536 0.059963426452212761 
		0.93993061780929565;
	setAttr -s 3 ".wl[917].w[5:7]"  6.2521615754627144e-005 0.033742431482542495 
		0.96619504690170288;
	setAttr -s 3 ".wl[918].w[5:7]"  6.6288478584347282e-005 0.034898928634910523 
		0.96503478288650513;
	setAttr -s 3 ".wl[919].w[5:7]"  6.4205585414746423e-005 0.034651268066471237 
		0.96528452634811401;
	setAttr -s 3 ".wl[920].w[5:7]"  7.0544157610737742e-005 0.039922980393780866 
		0.9600064754486084;
	setAttr -s 3 ".wl[921].w[5:7]"  6.3898261432758827e-005 0.037031231228465925 
		0.96290487051010132;
	setAttr -s 3 ".wl[922].w[5:7]"  0.00012534438240700452 0.070936028374551 
		0.92893862724304199;
	setAttr -s 3 ".wl[923].w[5:7]"  0.00013543648974530148 0.073094114825562315 
		0.92677044868469238;
	setAttr -s 3 ".wl[924].w[5:7]"  0.00010089202854053015 0.053116817035943113 
		0.94678229093551636;
	setAttr -s 3 ".wl[925].w[5:7]"  7.2815541650137665e-005 0.039298138495062508 
		0.96062904596328735;
	setAttr -s 3 ".wl[926].w[5:7]"  0.0001006637182762306 0.056968518677658828 
		0.94293081760406494;
	setAttr -s 3 ".wl[927].w[5:7]"  9.9879826679527726e-005 0.057883757029399574 
		0.9420163631439209;
	setAttr -s 3 ".wl[928].w[5:7]"  9.6347709666412445e-005 0.05452594480894931 
		0.94537770748138428;
	setAttr -s 3 ".wl[929].w[5:7]"  0.00010491685994755439 0.056622850130714067 
		0.94327223300933838;
	setAttr -s 3 ".wl[930].w[5:7]"  8.5499860090216376e-005 0.045013222120958367 
		0.95490127801895142;
	setAttr -s 3 ".wl[931].w[5:7]"  8.1706558062930468e-005 0.044096540893719297 
		0.95582175254821777;
	setAttr -s 3 ".wl[932].w[5:7]"  7.3746566587702599e-005 0.041735275860017525 
		0.95819097757339478;
	setAttr -s 3 ".wl[933].w[5:7]"  0.0001150309271040572 0.066664344149189883 
		0.93322062492370605;
	setAttr -s 3 ".wl[934].w[5:7]"  0.00015319773817336395 0.086699054745194556 
		0.91314774751663208;
	setAttr -s 3 ".wl[935].w[5:7]"  0.00021795477260387047 0.11762883220325672 
		0.8821532130241394;
	setAttr -s 3 ".wl[936].w[5:7]"  0.00025934922304994383 0.13653974783810729 
		0.86320090293884277;
	setAttr -s 3 ".wl[937].w[5:7]"  0.00014321611108966025 0.077292754195306818 
		0.92256402969360352;
	setAttr -s 3 ".wl[938].w[6:8]"  0.0050167801867410993 0.99479353427886963 
		0.00018968553438927205;
	setAttr -s 3 ".wl[939].w[6:8]"  0.0042697062120478965 0.99556869268417358 
		0.00016160110377851959;
	setAttr -s 3 ".wl[940].w[6:8]"  0.0042215042593245957 0.99561887979507446 
		0.00015961594560094132;
	setAttr -s 3 ".wl[941].w[6:8]"  0.0036971231553001682 0.99616348743438721 
		0.00013938941031262471;
	setAttr -s 3 ".wl[942].w[6:8]"  0.003925088092777947 0.99592733383178711 
		0.00014757807543494371;
	setAttr -s 3 ".wl[943].w[6:8]"  0.0024628724406893371 0.9974442720413208 
		9.2855517989862013e-005;
	setAttr -s 3 ".wl[944].w[6:8]"  0.0025231504130242698 0.99738144874572754 
		9.5400841248191308e-005;
	setAttr -s 3 ".wl[945].w[6:8]"  0.0026316018539478433 0.99726879596710205 
		9.9602178950105737e-005;
	setAttr -s 3 ".wl[946].w[6:8]"  0.009088326700575397 0.99056804180145264 
		0.00034363149797196602;
	setAttr -s 3 ".wl[947].w[6:8]"  0.0096595244268156445 0.98997628688812256 
		0.00036418868506179661;
	setAttr -s 3 ".wl[948].w[6:8]"  0.005902165760206874 0.99387592077255249 
		0.00022191346724063612;
	setAttr -s 3 ".wl[949].w[6:8]"  0.0033486382747367296 0.9965251088142395 
		0.00012625291102376823;
	setAttr -s 3 ".wl[950].w[6:8]"  0.0042810623699678502 0.99555706977844238 
		0.00016186785158976699;
	setAttr -s 3 ".wl[951].w[6:8]"  0.0039888687401219113 0.99586015939712524 
		0.00015097186275284458;
	setAttr -s 3 ".wl[952].w[6:8]"  0.0038717942149709967 0.99598181247711182 
		0.00014639330791718684;
	setAttr -s 3 ".wl[953].w[6:8]"  0.0039761622056277788 0.99587392807006836 
		0.00014990972430386224;
	setAttr -s 3 ".wl[954].w[6:8]"  0.0027475846428633892 0.99714910984039307 
		0.00010330551674354424;
	setAttr -s 3 ".wl[955].w[6:8]"  0.0027733282990573859 0.99712210893630981 
		0.00010456276463279979;
	setAttr -s 3 ".wl[956].w[6:8]"  0.0026580032764290432 0.99724149703979492 
		0.0001004996837760349;
	setAttr -s 3 ".wl[957].w[6:8]"  0.0041628828128193124 0.99567955732345581 
		0.00015755986372487736;
	setAttr -s 3 ".wl[958].w[6:8]"  0.0041343781903561711 0.99570930004119873 
		0.00015632176844509847;
	setAttr -s 3 ".wl[959].w[6:8]"  0.0074113553836919364 0.99230921268463135 
		0.00027943193167671599;
	setAttr -s 3 ".wl[960].w[6:8]"  0.0076584253537899443 0.99205362796783447 
		0.00028794667837558349;
	setAttr -s 3 ".wl[961].w[6:8]"  0.0045467618428577244 0.99528181552886963 
		0.00017142262827264687;
	setAttr -s 3 ".wl[962].w[6:8]"  7.0420719166805311e-005 0.034084948085764837 
		0.96584463119506836;
	setAttr -s 3 ".wl[963].w[6:8]"  0.00014755980173794195 0.07474651082356723 
		0.92510592937469482;
	setAttr -s 3 ".wl[964].w[6:8]"  0.00015967270706555695 0.077284642249599481 
		0.92255568504333496;
	setAttr -s 3 ".wl[965].w[6:8]"  0.00017854817001968418 0.078867403196404881 
		0.92095404863357544;
	setAttr -s 3 ".wl[966].w[6:8]"  0.0001646050190102543 0.069220148685060795 
		0.93061524629592896;
	setAttr -s 3 ".wl[967].w[6:8]"  0.00015211083520212581 0.067189634064547629 
		0.93265825510025024;
	setAttr -s 3 ".wl[968].w[6:8]"  0.00013497799454261958 0.065331962408441996 
		0.93453305959701538;
	setAttr -s 3 ".wl[969].w[6:8]"  0.00013835641082033268 0.070084915435950912 
		0.92977672815322876;
	setAttr -s 3 ".wl[970].w[6:8]"  0.00015130641392753559 0.073235243535718461 
		0.926613450050354;
	setAttr -s 3 ".wl[971].w[6:8]"  0.00017492490914440648 0.077267303884953495 
		0.9225577712059021;
	setAttr -s 3 ".wl[972].w[6:8]"  0.00019405172660295753 0.081603250042653633 
		0.91820269823074341;
	setAttr -s 3 ".wl[973].w[6:8]"  9.273709338903582e-005 0.040963538274347781 
		0.95894372463226318;
	setAttr -s 3 ".wl[974].w[6:8]"  0.00021526268323411387 0.10419127294222365 
		0.89559346437454224;
	setAttr -s 3 ".wl[975].w[6:8]"  0.00020045620665752576 0.10154127496018207 
		0.8982582688331604;
	setAttr -s 3 ".wl[976].w[6:8]"  0.00020712409120218756 0.10025215353865011 
		0.89954072237014771;
	setAttr -s 3 ".wl[977].w[6:8]"  9.9753034242304215e-005 0.044062401163450567 
		0.95583784580230713;
	setAttr -s 3 ".wl[978].w[6:8]"  0.00014015048300530306 0.058936516348964914 
		0.94092333316802979;
	setAttr -s 3 ".wl[979].w[6:8]"  0.000129628238761469 0.057258915843880133 
		0.9426114559173584;
	setAttr -s 3 ".wl[980].w[6:8]"  0.00011937945162003303 0.057781883785379476 
		0.94209873676300049;
	setAttr -s 3 ".wl[981].w[6:8]"  0.00010998565964860292 0.055713459660480795 
		0.94417655467987061;
	setAttr -s 3 ".wl[982].w[6:8]"  0.00011523498177970269 0.055775861610169758 
		0.94410890340805054;
	setAttr -s 3 ".wl[983].w[6:8]"  0.00013090327368936227 0.057822275608909512 
		0.94204682111740112;
	setAttr -s 3 ".wl[984].w[6:8]"  8.8945118537310646e-005 0.037403449328789348 
		0.96250760555267334;
	setAttr -s 3 ".wl[985].w[6:8]"  8.5505544848671539e-005 0.037769046724133261 
		0.96214544773101807;
	setAttr -s 3 ".wl[986].w[6:8]"  2.6525528392683673e-005 0.016366778342762102 
		0.98360669612884521;
	setAttr -s 3 ".wl[987].w[6:8]"  2.7282694488843628e-005 0.016451017400115647 
		0.98352169990539551;
	setAttr -s 3 ".wl[988].w[6:8]"  3.0205021323712476e-005 0.017350449790535419 
		0.98261934518814087;
	setAttr -s 3 ".wl[989].w[6:8]"  2.9456997960906089e-005 0.016440558051019807 
		0.98352998495101929;
	setAttr -s 3 ".wl[990].w[6:8]"  2.8320099196404268e-005 0.016267708991684945 
		0.98370397090911865;
	setAttr -s 3 ".wl[991].w[6:8]"  2.5884981548417552e-005 0.015608234529102216 
		0.98436588048934937;
	setAttr -s 3 ".wl[992].w[6:8]"  1.742992268196828e-005 0.010754619504350502 
		0.98922795057296753;
	setAttr -s 3 ".wl[993].w[6:8]"  1.836255717625202e-005 0.011072333300825457 
		0.98890930414199829;
	setAttr -s 3 ".wl[994].w[6:8]"  1.5999592408714596e-005 0.0091905338395981209 
		0.99079346656799316;
	setAttr -s 3 ".wl[995].w[6:8]"  1.6816601999983279e-005 0.0093856969020283364 
		0.99059748649597168;
	setAttr -s 3 ".wl[996].w[6:8]"  1.7283412299476116e-005 0.0099279899870535517 
		0.99005472660064697;
	setAttr -s 3 ".wl[997].w[6:8]"  6.3344747024273517e-005 0.038195863455337785 
		0.96174079179763794;
	setAttr -s 3 ".wl[998].w[6:8]"  6.3367577112701572e-005 0.03909908941217563 
		0.96083754301071167;
	setAttr -s 3 ".wl[999].w[6:8]"  6.3770378830609509e-005 0.03845251265644771 
		0.96148371696472168;
	setAttr -s 3 ".wl[1000].w[6:8]"  1.6661293981586462e-005 0.0095706266088504445 
		0.99041271209716797;
	setAttr -s 3 ".wl[1001].w[6:8]"  3.6689797637541419e-005 0.020477261980774323 
		0.97948604822158813;
	setAttr -s 3 ".wl[1002].w[6:8]"  3.4117297516501112e-005 0.019597745342864358 
		0.98036813735961914;
	setAttr -s 3 ".wl[1003].w[6:8]"  2.6628800622006158e-005 0.016056730917700747 
		0.98391664028167725;
	setAttr -s 3 ".wl[1004].w[6:8]"  2.5599740266250198e-005 0.015795559145689562 
		0.98417884111404419;
	setAttr -s 3 ".wl[1005].w[6:8]"  2.6461532164323065e-005 0.015955868313264145 
		0.98401767015457153;
	setAttr -s 3 ".wl[1006].w[6:8]"  2.8076284498798245e-005 0.01612764347258128 
		0.98384428024291992;
	setAttr -s 3 ".wl[1007].w[6:8]"  1.4432249114521424e-005 0.0080549041652226375 
		0.99193066358566284;
	setAttr -s 3 ".wl[1008].w[6:8]"  1.3798755917782874e-005 0.0079263147885463292 
		0.99205988645553589;
	setAttr -s 3 ".wl[1009].w[6:8]"  1.2257379443849354e-005 0.0073909971295283185 
		0.99259674549102783;
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
connectAttr "skinCluster1GroupId.id" "snakeShape.iog.og[2].gid";
connectAttr "skinCluster1Set.mwc" "snakeShape.iog.og[2].gco";
connectAttr "groupId2.id" "snakeShape.iog.og[3].gid";
connectAttr "tweakSet1.mwc" "snakeShape.iog.og[3].gco";
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
connectAttr "controls.di" "body_02_CTRL.do";
connectAttr "transformGeometry4.og" "body_02_CTRLShape.cr";
connectAttr "controls.di" "body_02_CTRLShape.do";
connectAttr "body_03.jo" "body_03_GRP.r";
connectAttr "controls.di" "body_03_GRP.do";
connectAttr "controls.di" "body_03_CTRL.do";
connectAttr "transformGeometry5.og" "body_03_CTRLShape.cr";
connectAttr "controls.di" "body_03_CTRLShape.do";
connectAttr "body_04.jo" "body_04_GRP.r";
connectAttr "controls.di" "body_04_GRP.do";
connectAttr "controls.di" "body_04_CTRL.do";
connectAttr "transformGeometry6.og" "body_04_CTRLShape.cr";
connectAttr "controls.di" "body_04_CTRLShape.do";
connectAttr "body_05.jo" "body_05_GRP.r";
connectAttr "controls.di" "body_05_GRP.do";
connectAttr "controls.di" "body_05_CTRL.do";
connectAttr "transformGeometry7.og" "body_05_CTRLShape.cr";
connectAttr "controls.di" "body_05_CTRLShape.do";
connectAttr "body_06.jo" "body_06_GRP.r";
connectAttr "controls.di" "body_06_GRP.do";
connectAttr "controls.di" "body_06_CTRL.do";
connectAttr "transformGeometry8.og" "body_06_CTRLShape.cr";
connectAttr "controls.di" "body_06_CTRLShape.do";
connectAttr "body_07.jo" "body_07_GRP.r";
connectAttr "controls.di" "body_07_GRP.do";
connectAttr "controls.di" "body_07_CTRL.do";
connectAttr "transformGeometry9.og" "body_07_CTRLShape.cr";
connectAttr "controls.di" "body_07_CTRLShape.do";
connectAttr "body_08.jo" "body_08_GRP.r";
connectAttr "controls.di" "body_08_GRP.do";
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
connectAttr "snakeShape.iog.og[2]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "snakeShape.iog.og[3]" "tweakSet1.dsm" -na;
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
// End of snake_02.ma
