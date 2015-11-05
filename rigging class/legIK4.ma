//Maya ASCII 2015 scene
//Name: legIK4.ma
//Last modified: Tue, Oct 06, 2015 11:57:18 AM
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
	setAttr ".t" -type "double3" 15.207494433082331 5.2609503687225105 0.41755691834839781 ;
	setAttr ".r" -type "double3" -5.1383527295912383 90.199999999998894 -2.2899993706537323e-013 ;
	setAttr ".rp" -type "double3" 3.5527136788005009e-015 0 0 ;
	setAttr ".rpt" -type "double3" -3.6600611206727954e-016 -1.3072007781547294e-015 
		-8.7057193456548517e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 14.984210280496701;
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
	setAttr ".t" -type "double3" 100.1 2.7846589424501218 -0.82563818284139456 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 21.005792928764777;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "legMesh";
	setAttr ".t" -type "double3" 0 4 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1 6.6401226198637193 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "legMeshShape" -p "legMesh";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.9360191822052002 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "legMeshShapeOrig" -p "legMesh";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode joint -n "thigh";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -5.2391013891546612 -90 ;
	setAttr ".bps" -type "matrix" 1.1102230246251565e-016 -0.99582231469000937 0.091312198338621642 0
		 1.6653345369377348e-016 0.091312198338621697 0.99582231469000937 0 -1 -5.5511151231257827e-017 2.2204460492503131e-016 0
		 0 7.7618883557232792 0.054635703403899553 1;
	setAttr ".radi" 0.65278231112152607;
createNode joint -n "knee" -p "thigh";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999914622634 -3.3366839811627996e-015 -16.774338022452547 ;
	setAttr ".bps" -type "matrix" 5.8236122352470826e-017 -0.97980190897907471 -0.19997054573351788 0
		 -1.4901161507800967e-008 0.1999705457335178 -0.97980190897907482 0 1 2.9797934159973132e-009 -1.4600186525772571e-008 0
		 4.9303806576313238e-032 3.8246147034085429 0.41566508319391504 1;
	setAttr ".radi" 0.61015928281956744;
createNode joint -n "ankle" -p "knee";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999859551914 7.981730423338974e-007 -69.208221894380927 ;
	setAttr ".bps" -type "matrix" 1.3930747589386594e-008 -0.53475082767171456 0.84500979420620714 0
		 2.9802322604863575e-008 0.84500979420620692 0.53475082767171422 0 -0.99999999999999989 1.7733775727533334e-008 2.7708434879205606e-008 0
		 2.2010143702039535e-024 0.75808346619415978 -0.21019195933174484 1;
	setAttr ".radi" 0.50546021355635806;
createNode joint -n "ball" -p "ankle";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -4.4461267466312565e-007 -1.5737020061222395e-006 
		31.552794573988841 ;
	setAttr ".bps" -type "matrix" -6.6174449004242214e-024 -0.013512279797026861 0.99990870497995343 0
		 1.810656080648866e-008 0.9999087049799531 0.01351227979702696 0 -1.0000000000000002 1.8104907807497641e-008 2.4466096184833342e-010 0
		 2.2010143702039535e-024 0.16688213329759372 0.72402055759034278 1;
	setAttr ".radi" 0.5;
createNode joint -n "toe" -p "ball";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.77422016492810164 89.999998942650521 0 ;
	setAttr ".bps" -type "matrix" 1 -1.8354266525009098e-008 1.8207884069808544e-008 0
		 1.8354266485359003e-008 1 -1.1802220471014116e-016 0 -1.8207884131730113e-008 5.5265678487192999e-016 1.0000000000000002 0
		 -3.1997545072850734e-024 0.15743645715937846 1.4230005918182513 1;
	setAttr ".radi" 0.5;
createNode joint -n "thighFK";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0 7.7618883557232792 0.054635703403899553 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999972 -5.2391013891546505 -89.999999999999972 ;
	setAttr ".bps" -type "matrix" 1.1102230246251565e-016 -0.99582231469000937 0.091312198338621642 0
		 1.6653345369377348e-016 0.091312198338621697 0.99582231469000937 0 -1 -5.5511151231257827e-017 2.2204460492503131e-016 0
		 0 7.7618883557232792 0.054635703403899553 1;
	setAttr ".radi" 0.65278231112152607;
createNode joint -n "kneeFK" -p "thighFK";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 3.9537913483495042 -7.2164496600635175e-016 4.389590189501361e-016 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999914622634 0 -16.774338022452547 ;
	setAttr ".bps" -type "matrix" 5.8236122352470826e-017 -0.97980190897907471 -0.19997054573351788 0
		 -1.4901161507800967e-008 0.1999705457335178 -0.97980190897907482 0 1 2.9797934159973132e-009 -1.4600186525772571e-008 0
		 4.9303806576313238e-032 3.8246147034085429 0.41566508319391504 1;
	setAttr ".radi" 0.61015928281956744;
createNode joint -n "ankleFK" -p "kneeFK";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.1297461345116382 -4.4408920985006262e-016 -1.822642832380231e-016 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999859551914 0 -69.208221894380927 ;
	setAttr ".bps" -type "matrix" 1.3930747589386594e-008 -0.53475082767171456 0.84500979420620714 0
		 2.9802322604863575e-008 0.84500979420620692 0.53475082767171422 0 -0.99999999999999989 1.7733775727533334e-008 2.7708434879205606e-008 0
		 2.2010143702039535e-024 0.75808346619415978 -0.21019195933174484 1;
	setAttr ".radi" 0.50546021355635806;
createNode joint -n "ballFK" -p "ankleFK";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.105564128756255 -1.1102230246251565e-015 1.5401334821583459e-008 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 9.4787915988669358e-023 -1.5737020061222408e-006 31.552794573988841 ;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" -6.6174449004242214e-024 -0.013512279797026861 0.99990870497995343 0
		 1.810656080648866e-008 0.9999087049799531 0.01351227979702696 0 -1.0000000000000002 1.8104907807497641e-008 2.4466096184833342e-010 0
		 2.2010143702039535e-024 0.16688213329759372 0.72402055759034278 1;
	setAttr ".radi" 0.5;
createNode joint -n "toeFK" -p "ballFK";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.69904385345052278 4.8572257327350599e-017 1.6543612251060553e-024 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.77422016492810164 89.999998942650521 0 ;
	setAttr ".bps" -type "matrix" 1 -1.8354266525009098e-008 1.8207884069808544e-008 0
		 1.8354266485359003e-008 1 -1.1802220471014116e-016 0 -1.8207884131730113e-008 5.5265678487192999e-016 1.0000000000000002 0
		 -3.1997545072850734e-024 0.15743645715937846 1.4230005918182513 1;
	setAttr ".radi" 0.5;
createNode nurbsCurve -n "L_toe_CTRL" -p "ballFK";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 0.37014286918612571 -0.27094855328216144 
		1.5772709169423419e-010 0.4427432453062477 -0.39166004249360431 8.4008250211764622e-011 
		0.71450736281506355 -0.24861742950814342 1.7482820587933802e-010 0.81755911491021493 
		0.011048096147435653 2.0004327554710426e-010 0.73783218347299395 0.26824363959311831 
		1.8053540605712106e-010 0.44274324530624792 0.40150933174191927 8.4008144985419466e-011 
		0.37014286918612604 0.28990688986926777 1.5772701728797201e-010 0.21527554174482944 
		0.0094791682935531675 1.577270544911031e-010 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "L_ankle_CTRL" -p "ankleFK";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" -0.19225156354801909 -0.90312851332679644 
		-2.7835693527933345e-008 0.61684006065854913 -1.1343056683718835 -2.5211899904806244e-008 
		1.1331320248724515 -0.93611831893925923 -1.2113123345278848e-008 1.1054287592675436 
		-0.2748130796784039 7.2093814605128702e-009 0.86233662401319489 0.40032634772568676 
		2.3943649135240688e-008 0.071232013154797866 0.57726618184580991 1.819618815120902e-008 
		-0.46721909386752902 0.36048346002138631 4.2345328718300792e-009 -0.3805870348893019 
		-0.29649350955250481 -1.4138057273678452e-008 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "L_knee_CTRL" -p "kneeFK";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 1.6446609139763719 -0.24215025004366941 
		-3.6083205611909769e-009 1.4352484811148674 -0.34613758506834613 -5.1578526105881525e-009 
		1.3069121354020528 0.044648873867686234 6.6531970861240078e-010 1.506683925048089 
		0.0038768837015265511 5.7769624060186528e-011 1.3788097096905598 0.48655226512981509 
		7.2501936512102116e-009 1.6853781413501303 0.87943049893033254 1.3104535717082808e-008 
		1.6154947064481484 0.53702045713237023 8.0022282792079975e-009 1.5354001316811761 
		0.14457857541581742 2.154388299101817e-009 0 0 0 0 0 0 0 0 0;
createNode nurbsCurve -n "L_thigh_CTRL" -p "thighFK";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[0:10]" -type "double3" 1.4607783403609753 0.24304464130102121 
		9.3486061897527644e-016 1.3041831462332216 -0.15712467929158014 6.9119287930744952e-016 
		1.4240847055307913 -0.15712467929158103 6.9119287930744961e-016 1.7135526761366648 
		0.098794666822811239 6.9119287930744971e-016 1.9810044658444288 -0.39722627164714286 
		5.2512758951421063e-016 2.0954019799174692 -0.45725166973603326 6.3125813863828691e-016 
		2.3885125134030711 -0.35388604235880472 8.6948805832564027e-016 1.7135526761366646 
		-0.41304402540597307 6.9119287930744991e-016 0 0 0 0 0 0 0 0 0;
createNode joint -n "thighIK";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0 7.7618883557232792 0.054635703403899553 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999972 -5.2391013891546505 -89.999999999999972 ;
	setAttr ".bps" -type "matrix" 1.1102230246251565e-016 -0.99582231469000937 0.091312198338621642 0
		 1.6653345369377348e-016 0.091312198338621697 0.99582231469000937 0 -1 -5.5511151231257827e-017 2.2204460492503131e-016 0
		 0 7.7618883557232792 0.054635703403899553 1;
	setAttr ".radi" 0.65278231112152607;
createNode joint -n "kneeIK" -p "thighIK";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 3.9537913483495042 -7.2164496600635175e-016 4.389590189501361e-016 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999914622634 0 -16.774338022452547 ;
	setAttr ".bps" -type "matrix" 5.8236122352470826e-017 -0.97980190897907471 -0.19997054573351788 0
		 -1.4901161507800967e-008 0.1999705457335178 -0.97980190897907482 0 1 2.9797934159973132e-009 -1.4600186525772571e-008 0
		 4.9303806576313238e-032 3.8246147034085429 0.41566508319391504 1;
	setAttr ".radi" 0.61015928281956744;
createNode joint -n "ankleIK" -p "kneeIK";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 3.1297461345116382 -4.4408920985006262e-016 -1.822642832380231e-016 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999859551914 0 -69.208221894380927 ;
	setAttr ".bps" -type "matrix" 1.3930747589386594e-008 -0.53475082767171456 0.84500979420620714 0
		 2.9802322604863575e-008 0.84500979420620692 0.53475082767171422 0 -0.99999999999999989 1.7733775727533334e-008 2.7708434879205606e-008 0
		 2.2010143702039535e-024 0.75808346619415978 -0.21019195933174484 1;
	setAttr ".radi" 0.50546021355635806;
createNode joint -n "ballIK" -p "ankleIK";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.105564128756255 -1.1102230246251565e-015 1.5401334821583459e-008 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 9.4787915988669358e-023 -1.5737020061222408e-006 31.552794573988841 ;
	setAttr ".bps" -type "matrix" -6.6174449004242214e-024 -0.013512279797026861 0.99990870497995343 0
		 1.810656080648866e-008 0.9999087049799531 0.01351227979702696 0 -1.0000000000000002 1.8104907807497641e-008 2.4466096184833342e-010 0
		 2.2010143702039535e-024 0.16688213329759372 0.72402055759034278 1;
	setAttr ".radi" 0.5;
createNode joint -n "toeIK" -p "ballIK";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.69904385345052278 4.8572257327350599e-017 1.6543612251060553e-024 ;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.77422016492810164 89.999998942650521 0 ;
	setAttr ".bps" -type "matrix" 1 -1.8354266525009098e-008 1.8207884069808544e-008 0
		 1.8354266485359003e-008 1 -1.1802220471014116e-016 0 -1.8207884131730113e-008 5.5265678487192999e-016 1.0000000000000002 0
		 -3.1997545072850734e-024 0.15743645715937846 1.4230005918182513 1;
	setAttr ".radi" 0.5;
createNode transform -n "switch_GRP";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "left_leg_CTRL" -p "switch_GRP";
	addAttr -ci true -sn "FK_IK_Switch" -ln "FK_IK_Switch" -nn "FK/IK Switch" -min 
		0 -max 1 -at "double";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0.72515668812504741 -1.2280084047365032 ;
	setAttr ".sp" -type "double3" 0 0.72515668812504741 -1.2280084047365032 ;
	setAttr -k on ".FK_IK_Switch";
createNode nurbsCurve -n "left_leg_CTRLShape" -p "left_leg_CTRL";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode nurbsCurve -n "curveShape3" -p "left_leg_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.72515668812504741 -0.89668710411629082
		0 0.72515668812504741 -0.23404450287586609
		;
createNode nurbsCurve -n "curveShape2" -p "left_leg_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		-7.3568107299462585e-017 0.39383538750483504 -1.2280084047365032
		7.3568107299462585e-017 1.0564779887452598 -1.2280084047365032
		;
createNode nurbsCurve -n "curveShape1" -p "left_leg_CTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.72515668812504741 -1.5593297053567157
		0 0.72515668812504741 -0.89668710411629082
		;
createNode parentConstraint -n "left_leg_CTRL_parentConstraint1" -p "left_leg_CTRL";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "kneeW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 3.3655411645644242 0.99067411041815179 1.4762194724941859e-008 ;
	setAttr ".tg[0].tor" -type "double3" 78.464763366702115 -89.999999146226344 0 ;
	setAttr ".lr" -type "double3" -1.8574589621595134e-014 1.0072586690285941e-006 -6.6579948682802837e-007 ;
	setAttr ".rst" -type "double3" -3.3087224995159173e-024 3.3306690738754696e-016 
		-2.2204460492503131e-016 ;
	setAttr ".rsrr" -type "double3" -1.8574589621595134e-014 1.0072586690285941e-006 
		-6.6579948682802837e-007 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 3;
	setAttr -s 6 ".dli[2:5]"  1 2 3 4;
	setAttr -s 5 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 6.6401226198637193 0 0 0 0 1 0 0 4 0 1;
	setAttr ".wt" 0.53908419609069824;
	setAttr ".dr" no;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 6.6401226198637193 0 0 0 0 1 0 0 4 0 1;
	setAttr ".wt" 0.16414624452590942;
	setAttr ".re" 17;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[2:5]" -type "float3"  -0.44569266 0 0.57341182 0.44569266
		 0 0.57341182 -0.44569266 0 -0.31797329 0.44569266 0 -0.31797329;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[15]" "e[17]" "e[23]" "e[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 6.6401226198637193 0 0 0 0 1 0 0 4 0 1;
	setAttr ".wt" 0.54294681549072266;
	setAttr ".re" 17;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0 -0.025192047 -0.09745615
		 0 -0.025192047 -0.09745615 0 -0.025192047 -0.09745615 0 -0.025192047 -0.09745615;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[20:21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 6.6401226198637193 0 0 0 0 1 0 0 4 0 1;
	setAttr ".wt" 0.3360196053981781;
	setAttr ".re" 20;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[12]" -type "float3" 0 0 0.038509469 ;
	setAttr ".tk[13]" -type "float3" 0 0 0.038509469 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.038509469 ;
	setAttr ".tk[15]" -type "float3" 0 0 0.038509469 ;
	setAttr ".tk[16]" -type "float3" 0.081245035 0 -0.023496162 ;
	setAttr ".tk[17]" -type "float3" -0.081245035 0 -0.023496162 ;
	setAttr ".tk[18]" -type "float3" -0.081245035 0 0.13899389 ;
	setAttr ".tk[19]" -type "float3" 0.081245035 0 0.13899389 ;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[8:9]" "e[12:13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 6.6401226198637193 0 0 0 0 1 0 0 4 0 1;
	setAttr ".wt" 0.3639199435710907;
	setAttr ".re" 9;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[0]" -type "float3" 0.16218114 0 -0.16218114 ;
	setAttr ".tk[1]" -type "float3" -0.16218114 0 -0.16218114 ;
	setAttr ".tk[6]" -type "float3" 0.16218114 0 0.16218114 ;
	setAttr ".tk[7]" -type "float3" -0.16218114 0 0.16218114 ;
	setAttr ".tk[8]" -type "float3" 0 0.016019534 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.016019534 0 ;
	setAttr ".tk[10]" -type "float3" 0 0.016019534 0 ;
	setAttr ".tk[11]" -type "float3" 0 0.016019534 0 ;
	setAttr ".tk[12]" -type "float3" 0 0.016019534 0 ;
	setAttr ".tk[13]" -type "float3" 0 0.016019534 0 ;
	setAttr ".tk[14]" -type "float3" 0 0.016019534 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.016019534 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.016019534 0 ;
	setAttr ".tk[17]" -type "float3" 0 0.016019534 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.016019534 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.016019534 0 ;
	setAttr ".tk[20]" -type "float3" 0.080742449 1.1436915e-009 -0.22845699 ;
	setAttr ".tk[21]" -type "float3" -0.080742449 1.1436915e-009 -0.22845699 ;
	setAttr ".tk[22]" -type "float3" -0.080742449 -1.1436915e-009 -0.066972092 ;
	setAttr ".tk[23]" -type "float3" 0.080742449 -1.1436915e-009 -0.066972092 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 6.6401226198637193 0 0 0 0 1 0 0 4 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.67993867 0 ;
	setAttr ".rs" 40288;
	setAttr ".lt" -type "double3" 0 -7.3955709864469857e-032 0.7035184446727738 ;
	setAttr ".tp" 0;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.33781886100769043 0.67993869006814034 -0.33781886100769043 ;
	setAttr ".cbx" -type "double3" 0.33781886100769043 0.67993869006814034 0.33781886100769043 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0 -0.064775288 ;
	setAttr ".tk[3]" -type "float3" 0 0 -0.064775288 ;
	setAttr ".tk[4]" -type "float3" 0 0 0.030612379 ;
	setAttr ".tk[5]" -type "float3" 0 0 0.030612379 ;
	setAttr ".tk[14]" -type "float3" 0 -0.018143671 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.018143671 0 ;
	setAttr ".tk[16]" -type "float3" -0.046604976 0.013999588 0 ;
	setAttr ".tk[17]" -type "float3" 0.046604976 0.013999588 0 ;
	setAttr ".tk[18]" -type "float3" 0.046604976 -0.0035251977 0 ;
	setAttr ".tk[19]" -type "float3" -0.046604976 -0.0035251977 0 ;
	setAttr ".tk[20]" -type "float3" 0 0.024245355 0 ;
	setAttr ".tk[21]" -type "float3" 0 0.024245355 0 ;
	setAttr ".tk[24]" -type "float3" 0.10582148 -0.0068554804 -0.10582148 ;
	setAttr ".tk[25]" -type "float3" -0.10582148 -0.0068554804 -0.10582148 ;
	setAttr ".tk[26]" -type "float3" -0.10582148 -0.024259128 0.10582148 ;
	setAttr ".tk[27]" -type "float3" 0.10582148 -0.024259128 0.10582148 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[28]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 6.6401226198637193 0 0 0 0 1 0 0 4 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.32817939 0.33781886 ;
	setAttr ".rs" 51211;
	setAttr ".lt" -type "double3" 0 0 0.78973743784168615 ;
	setAttr ".tp" 0;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.33781886100769043 -0.023579912881989351 0.33781886100769043 ;
	setAttr ".cbx" -type "double3" 0.33781886100769043 0.67993869006814034 0.33781886100769043 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[28]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 6.6401226198637193 0 0 0 0 1 0 0 4 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.3281796 1.1275563 ;
	setAttr ".rs" 42655;
	setAttr ".lt" -type "double3" 0 0 0.65416823764198218 ;
	setAttr ".tp" 0;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.33781886100769043 -0.023579517099839187 1.127556324005127 ;
	setAttr ".cbx" -type "double3" 0.33781886100769043 0.67993869006814034 1.127556324005127 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 6.6401226198637193 0 0 0 0 1 0 0 4 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.3281796 -0.33781886 ;
	setAttr ".rs" 53519;
	setAttr ".lt" -type "double3" 0 9.1803103952687053e-018 0.37832002556366828 ;
	setAttr ".tp" 0;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.33781886100769043 -0.023579517099839187 -0.33781886100769043 ;
	setAttr ".cbx" -type "double3" 0.33781886100769043 0.67993869006814034 -0.33781886100769043 ;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[6:7]" "e[10:11]" "e[16]" "e[19]" "e[24]" "e[27]" "e[32]" "e[35]" "e[40]" "e[43]" "e[48]" "e[51]" "e[56]" "e[59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 6.6401226198637193 0 0 0 0 1 0 0 4 0 1;
	setAttr ".wt" 0.51184654235839844;
	setAttr ".dr" no;
	setAttr ".re" 35;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[6]" -type "float3" 0 -0.018417861 0.083681785 ;
	setAttr ".tk[7]" -type "float3" 0 -0.018417861 0.083681785 ;
	setAttr ".tk[28]" -type "float3" 0 0 0.083681785 ;
	setAttr ".tk[29]" -type "float3" 0 0 0.083681785 ;
	setAttr ".tk[32]" -type "float3" -0.10124388 -0.058731321 -0.069971301 ;
	setAttr ".tk[33]" -type "float3" 0.10124388 -0.058731321 -0.069971301 ;
	setAttr ".tk[34]" -type "float3" -0.10124388 0 0 ;
	setAttr ".tk[35]" -type "float3" 0.10124388 0 0 ;
	setAttr ".tk[36]" -type "float3" 0 -0.072298519 -0.28124717 ;
	setAttr ".tk[37]" -type "float3" 0 -0.072298519 -0.28124717 ;
	setAttr ".tk[38]" -type "float3" 0 0.0057178889 -0.28242934 ;
	setAttr ".tk[39]" -type "float3" 0 0.0057178889 -0.28242934 ;
	setAttr ".tk[40]" -type "float3" 0.069478162 -0.056801792 0.32169244 ;
	setAttr ".tk[41]" -type "float3" -0.069478162 -0.056801792 0.32169244 ;
	setAttr ".tk[42]" -type "float3" -0.069478162 0.016788553 0.32169244 ;
	setAttr ".tk[43]" -type "float3" 0.069478162 0.016788553 0.32169244 ;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 21 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[26]" "e[30]" "e[34]" "e[38]" "e[42]" "e[46]" "e[50]" "e[54]" "e[58]" "e[62]" "e[66]" "e[70]" "e[74]" "e[78]" "e[82]" "e[92]" "e[108]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 6.6401226198637193 0 0 0 0 1 0 0 4 0 1;
	setAttr ".wt" 0.49861523509025574;
	setAttr ".dr" no;
	setAttr ".re" 74;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[4:5]" "e[36:37]" "e[104]" "e[112]" "e[124]" "e[150]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 6.6401226198637193 0 0 0 0 1 0 0 4 0 1;
	setAttr ".wt" 0.1881881058216095;
	setAttr ".re" 112;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 84 ".tk[0:83]" -type "float3"  0.096477248 -0.0059446217
		 -0.21620154 -0.096477248 -0.0059446217 -0.21620154 0.27400941 0.043189619 -0.26019034
		 -0.27400941 0.043189619 -0.26019034 0.27400941 0.043189619 0.26019034 -0.27400941
		 0.043189619 0.26019034 0.096477248 0 -0.069670394 -0.096477248 0 -0.069670394 -0.092197716
		 -0.0060637258 -0.092197716 0.092197716 -0.0060637258 -0.092197716 0.092197716 -0.0060637258
		 0.092197716 -0.092197716 -0.0060637258 0.092197716 -0.11594797 -0.019505776 0.11594797
		 0.11594797 -0.019505776 0.11594797 0.11594797 -0.015298324 -0.11594797 -0.11594797
		 -0.015298324 -0.11594797 -0.1166786 -0.017941687 0.1338308 0.1166786 -0.017941687
		 0.1338308 0.1166786 -0.014117138 -0.11986829 -0.1166786 -0.014117138 -0.11986829
		 -0.13608238 -0.017170779 0.03520992 0.13608238 -0.017170779 0.03520992 0.13608238
		 -0.01570807 -0.098400176 -0.13608238 -0.01570807 -0.098400176 -0.22123697 0.024136754
		 0.22123696 0.22123697 0.024136754 0.22123696 0.22123697 0.028466292 -0.22123696 -0.22123697
		 0.028466292 -0.22123696 0 0 -0.14293598 0 0 -0.14293598 0 0 -0.14293598 0 0 -0.14293598
		 0 -0.0059446217 -0.14293598 0 -0.0059446217 -0.14293598 0 0 -0.14293598 0 0 -0.14293598
		 0 0 -0.14293598 0 0 -0.14293598 0 0 -0.14293598 0 0 -0.14293598 0 0 -0.14293598 0
		 0 -0.14293598 0 0 -0.14293598 0 0 -0.14293598 -0.01146289 -0.016033862 0.0072765248
		 0 -0.0060637258 0 0.024958054 0.026307309 -0.00059133186 0 0.043189619 0 0 0.043189619
		 0 -0.024958054 0.026307309 -0.00059133186 0 -0.0060637258 0 0.01146289 -0.016033862
		 0.0072765248 0 -0.017402049 0 -0.051161151 -0.016414121 -0.032807298 0 0 -0.14293598
		 0 0 -0.14293598 0 0 -0.14293598 0 0 -0.14293598 0.051161151 -0.016414121 -0.032807298
		 0 -0.017402049 0 0 0 -0.14293598 0 0 -0.14293598 0 0.0099868989 -0.14293598 0 0.0099868989
		 -0.14293598 -0.00014169129 -0.017507385 0.019566018 0 -0.017402049 0 3.1746749e-005
		 -0.01584154 -0.0054808659 0 -0.0060637258 0 -6.9120993e-005 0.026057312 0.02495805
		 0 0.043189619 0 0 0.043189619 0 0 0.043189619 0 -6.9120157e-005 0.026545731 -0.02495805
		 0 -0.0060637258 0 3.1746749e-005 -0.01621728 0.019443374 0 -0.017402049 0 -0.00014169129
		 -0.015371462 -0.082756281 -0.0060601444 0.0062121577 -0.17194425 -0.0060601444 0.0062121577
		 -0.17194425 0 0 -0.14293598 0 0 -0.14293598 0 0 -0.14293598 0 0 -0.14293598 0 0 -0.14293598;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n"
		+ "                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
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
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.485\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 0.485\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n"
		+ "                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 5\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"largeIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n"
		+ "                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n"
		+ "                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel2Info`) nodeEditor -e -restoreInfo nodeEditorPanel2Info $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel2Info`) nodeEditor -e -restoreInfo nodeEditorPanel2Info $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode displayLayer -n "mesh";
	setAttr ".c" 5;
	setAttr ".do" 1;
createNode displayLayer -n "joint";
	setAttr ".c" 14;
	setAttr ".do" 2;
createNode skinCluster -n "skinCluster1";
	setAttr -s 92 ".wl";
	setAttr -s 3 ".wl[0].w[1:3]"  0.10991866333803491 0.88132387266841472 
		0.0087574639935503185;
	setAttr -s 3 ".wl[1].w[1:3]"  0.10991866333803491 0.88132387266841472 
		0.0087574639935503185;
	setAttr -s 3 ".wl[2].w[0:2]"  0.995922479932567 0.0037243006450557426 
		0.00035321942237728462;
	setAttr -s 3 ".wl[3].w[0:2]"  0.995922479932567 0.0037243006450557426 
		0.00035321942237728462;
	setAttr -s 3 ".wl[4].w[0:2]"  0.99708475547814213 0.0026294625660418865 
		0.0002857819558159671;
	setAttr -s 3 ".wl[5].w[0:2]"  0.99708475547814213 0.0026294625660418865 
		0.0002857819558159671;
	setAttr -s 3 ".wl[6].w[1:3]"  0.49764016870938771 0.49875946601876042 
		0.0036003652718519809;
	setAttr -s 3 ".wl[7].w[1:3]"  0.49764016870938771 0.49875946601876042 
		0.0036003652718519809;
	setAttr -s 3 ".wl[8].w[0:2]"  0.85613936872054897 0.14371490520748412 
		0.00014572607196693552;
	setAttr -s 3 ".wl[9].w[0:2]"  0.85613936872054897 0.14371490520748412 
		0.00014572607196693552;
	setAttr -s 3 ".wl[10].w[0:2]"  0.66915853686644144 0.32846314453121511 
		0.0023783186023433821;
	setAttr -s 3 ".wl[11].w[0:2]"  0.66915853686644144 0.32846314453121511 
		0.0023783186023433821;
	setAttr -s 3 ".wl[12].w[0:2]"  0.34934060722219679 0.64487529498480989 
		0.0057840977929933752;
	setAttr -s 3 ".wl[13].w[0:2]"  0.34934060722219679 0.64487529498480989 
		0.0057840977929933752;
	setAttr -s 3 ".wl[14].w[0:2]"  0.12696148255146572 0.87279650921300822 
		0.00024200823552620563;
	setAttr -s 3 ".wl[15].w[0:2]"  0.12696148255146572 0.87279650921300822 
		0.00024200823552620563;
	setAttr -s 3 ".wl[16].w[0:2]"  0.51399664386693544 0.48216784994817352 
		0.0038355061848909487;
	setAttr -s 3 ".wl[17].w[0:2]"  0.51399664386693544 0.48216784994817352 
		0.0038355061848909487;
	setAttr -s 3 ".wl[18].w[0:2]"  0.50018365854001523 0.49966282381929011 
		0.000153517640694568;
	setAttr -s 3 ".wl[19].w[0:2]"  0.50018365854001523 0.49966282381929011 
		0.000153517640694568;
	setAttr -s 3 ".wl[20].w[0:2]"  0.089519963502984787 0.85641098178374719 
		0.05406905471326813;
	setAttr -s 3 ".wl[21].w[0:2]"  0.089519963502984787 0.85641098178374719 
		0.05406905471326813;
	setAttr -s 3 ".wl[22].w[0:2]"  0.011052696396854007 0.9845320142033912 
		0.0044152893997547902;
	setAttr -s 3 ".wl[23].w[0:2]"  0.011052696396854007 0.9845320142033912 
		0.0044152893997547902;
	setAttr -s 3 ".wl[24].w[0:2]"  0.98204303688419259 0.016928755403006913 
		0.0010282077128005236;
	setAttr -s 3 ".wl[25].w[0:2]"  0.98204303688419259 0.016928755403006913 
		0.0010282077128005236;
	setAttr -s 3 ".wl[26].w[0:2]"  0.98633598868311789 0.013106941154885129 
		0.00055707016199696706;
	setAttr -s 3 ".wl[27].w[0:2]"  0.98633598868311789 0.013106941154885129 
		0.00055707016199696706;
	setAttr -s 3 ".wl[28].w[1:3]"  0.38556313653549634 0.49149424259084384 
		0.12294262087365981;
	setAttr -s 3 ".wl[29].w[1:3]"  0.38556313653549634 0.49149424259084384 
		0.12294262087365981;
	setAttr -s 3 ".wl[30].w[1:3]"  0.069793314272756701 0.6181865680472215 
		0.31202011768002175;
	setAttr -s 3 ".wl[31].w[1:3]"  0.069793314272756701 0.6181865680472215 
		0.31202011768002175;
	setAttr -s 3 ".wl[32].w[2:4]"  0.2776555979822688 0.51687146455683008 
		0.20547293746090109;
	setAttr -s 3 ".wl[33].w[2:4]"  0.2776555979822688 0.51687146455683008 
		0.20547293746090109;
	setAttr -s 3 ".wl[34].w[2:4]"  0.22126852355987842 0.50287182324791868 
		0.27585965319220285;
	setAttr -s 3 ".wl[35].w[2:4]"  0.22126852355987842 0.50287182324791868 
		0.27585965319220285;
	setAttr -s 3 ".wl[36].w[2:4]"  0.010157146028789168 0.49492142698560543 
		0.49492142698560543;
	setAttr -s 3 ".wl[37].w[2:4]"  0.010157146028789168 0.49492142698560543 
		0.49492142698560543;
	setAttr -s 3 ".wl[38].w[2:4]"  0.016122157117660057 0.49193892144117002 
		0.49193892144117002;
	setAttr -s 3 ".wl[39].w[2:4]"  0.016122157117660057 0.49193892144117002 
		0.49193892144117002;
	setAttr -s 3 ".wl[40].w[1:3]"  0.48726143533271365 0.48726146024450201 
		0.025477104422784353;
	setAttr -s 3 ".wl[41].w[1:3]"  0.48726143533271365 0.48726146024450201 
		0.025477104422784353;
	setAttr -s 3 ".wl[42].w[1:3]"  0.45601197028992174 0.47665209960745814 
		0.067335930102620234;
	setAttr -s 3 ".wl[43].w[1:3]"  0.45601197028992174 0.47665209960745814 
		0.067335930102620234;
	setAttr -s 3 ".wl[44].w[0:2]"  0.50985028822640521 0.48917398211225677 
		0.00097572966133811193;
	setAttr -s 3 ".wl[45].w[0:2]"  0.74654380686551969 0.25274258648759385 
		0.00071360664688645292;
	setAttr -s 3 ".wl[46].w[0:2]"  0.98541098113789449 0.013882445654146838 
		0.00070657320795860503;
	setAttr -s 3 ".wl[47].w[0:2]"  0.99624780162248894 0.0034044302285268489 
		0.00034776814898423715;
	setAttr -s 3 ".wl[48].w[0:2]"  0.99624780162248894 0.0034044302285268489 
		0.00034776814898423715;
	setAttr -s 3 ".wl[49].w[0:2]"  0.98541098113789449 0.013882445654146838 
		0.00070657320795860503;
	setAttr -s 3 ".wl[50].w[0:2]"  0.74654380686551969 0.25274258648759385 
		0.00071360664688645292;
	setAttr -s 3 ".wl[51].w[0:2]"  0.50985028822640521 0.48917398211225677 
		0.00097572966133811193;
	setAttr -s 3 ".wl[52].w[0:2]"  0.27482292078022535 0.72340676112178937 
		0.0017703180979852799;
	setAttr -s 3 ".wl[53].w[0:2]"  0.043824835796546432 0.93427435783207957 
		0.021900806371373999;
	setAttr -s 3 ".wl[54].w[1:3]"  0.39835158309486945 0.59350293558215161 
		0.0081454813229790129;
	setAttr -s 3 ".wl[55].w[1:3]"  0.24049893077254708 0.5775446448356425 
		0.18195642439181048;
	setAttr -s 3 ".wl[56].w[1:3]"  0.24049893077254708 0.5775446448356425 
		0.18195642439181048;
	setAttr -s 3 ".wl[57].w[1:3]"  0.39835158309486945 0.59350293558215161 
		0.0081454813229790129;
	setAttr -s 3 ".wl[58].w[0:2]"  0.043824835796546432 0.93427435783207957 
		0.021900806371373999;
	setAttr -s 3 ".wl[59].w[0:2]"  0.27482292078022535 0.72340676112178937 
		0.0017703180979852799;
	setAttr -s 3 ".wl[60].w[2:4]"  0.0017431820954924002 0.49912840895225385 
		0.49912840895225385;
	setAttr -s 3 ".wl[61].w[2:4]"  3.3466803558398899e-005 0.49998326659822079 
		0.49998326659822079;
	setAttr -s 3 ".wl[62].w[2:4]"  0.072429195356482359 0.89332663049192573 
		0.03424417415159195;
	setAttr -s 3 ".wl[63].w[1:3]"  0.066624516402880626 0.92890887571014391 
		0.0044666078869754506;
	setAttr -s 3 ".wl[64].w[0:2]"  0.0015464952544341547 0.99790248261413672 
		0.0005510221314290602;
	setAttr -s 3 ".wl[65].w[0:2]"  0.0042042912625614619 0.99579243975172183 
		3.2689857166316361e-006;
	setAttr -s 3 ".wl[66].w[0:2]"  0.49999816562443905 0.49999816562443905 
		3.6687511218735696e-006;
	setAttr -s 3 ".wl[67].w[0:2]"  0.99576433270542697 0.0042340558884876086 
		1.6114060854787463e-006;
	setAttr -s 3 ".wl[68].w[0:2]"  0.98925645306556187 0.010341034219519395 
		0.00040251271491879376;
	setAttr -s 3 ".wl[69].w[0:2]"  0.99611678278031979 0.0035569105532798498 
		0.0003263066664002586;
	setAttr -s 2 ".wl[70].w[0:1]"  0.99999999913454407 8.6545598192217719e-010;
	setAttr -s 3 ".wl[71].w[0:2]"  0.99763882926716496 0.0021248829151295718 
		0.00023628781770551578;
	setAttr -s 3 ".wl[72].w[0:2]"  0.98324084171598158 0.01575443914511029 
		0.0010047191389081053;
	setAttr -s 3 ".wl[73].w[0:2]"  0.67682531018393444 0.32085441185788766 
		0.0023202779581779289;
	setAttr -s 3 ".wl[74].w[0:2]"  0.51688227246365093 0.47897802587064892 
		0.0041397016657002536;
	setAttr -s 3 ".wl[75].w[0:2]"  0.35572414936620139 0.63740674922466278 
		0.0068691014091358509;
	setAttr -s 3 ".wl[76].w[0:2]"  0.090088550484615948 0.85289995309667943 
		0.057011496418704614;
	setAttr -s 3 ".wl[77].w[1:3]"  0.4994318226185076 0.49943182261850749 
		0.0011363547629849287;
	setAttr -s 3 ".wl[78].w[1:3]"  0.4919807953395724 0.4919807953395724 
		0.016038409320855238;
	setAttr -s 3 ".wl[79].w[1:3]"  0.46945150667398 0.47480267624253653 
		0.055745817083483439;
	setAttr -s 3 ".wl[80].w[1:3]"  0.38309270731522405 0.51188062935871481 
		0.10502666332606118;
	setAttr -s 3 ".wl[81].w[1:3]"  0.21776921175110547 0.62386861410959926 
		0.1583621741392954;
	setAttr -s 3 ".wl[82].w[1:3]"  0.044486779209340986 0.68831677714055028 
		0.26719644365010886;
	setAttr -s 3 ".wl[83].w[2:4]"  0.033002316911997585 0.90817383009603414 
		0.058823852991968274;
	setAttr -s 3 ".wl[84].w[1:3]"  0.65497207414828862 0.33969766900301918 
		0.0053302568486921845;
	setAttr -s 3 ".wl[85].w[1:3]"  0.63385515049810726 0.35287464264024099 
		0.013270206861651783;
	setAttr -s 3 ".wl[86].w[1:3]"  0.6425656919483308 0.34377309072597101 
		0.013661217325698286;
	setAttr -s 3 ".wl[87].w[1:3]"  0.63385515049810726 0.35287464264024099 
		0.013270206861651783;
	setAttr -s 3 ".wl[88].w[1:3]"  0.65497249938471824 0.33969724518912747 
		0.0053302554261542975;
	setAttr -s 3 ".wl[89].w[1:3]"  0.58511196436109913 0.4128000212867744 
		0.0020880143521264474;
	setAttr -s 3 ".wl[90].w[1:3]"  0.58669406904053956 0.41202015270138004 
		0.0012857782580804515;
	setAttr -s 3 ".wl[91].w[1:3]"  0.58511196436109913 0.4128000212867744 
		0.0020880143521264474;
	setAttr -s 5 ".pm";
	setAttr ".pm[0]" -type "matrix" 7.55546241151537e-017 2.1604812718963954e-016 -1 -0
		 -0.99582231469000959 0.091312198338621656 -9.535195046673518e-017 0 0.091312198338621711 0.99582231469000959 1.7597541983312273e-016 -0
		 7.7244727225762011 -0.76316254164843023 7.304966531788755e-016 1;
	setAttr ".pm[1]" -type "matrix" 9.9875515967132751e-018 -1.4901161544972648e-008 0.99999999999999956 -0
		 -0.9798019089790746 0.1999705457335178 2.9797934558381121e-009 0 -0.19997054573351777 -0.97980190897907427 -1.460018647970338e-008 -0
		 3.8304855610377828 -0.35754084745169901 -5.3277741365864208e-009 1;
	setAttr ".pm[2]" -type "matrix" 1.3930747607010599e-008 2.9802322663164946e-008 -0.99999999999999911 -0
		 -0.53475082767171445 0.84500979420620659 1.7733775687692527e-008 0 0.84500979420620659 0.53475082767171378 2.7708434833136401e-008 -0
		 0.58300002529028616 -0.52818762953726495 -7.6195919344427621e-009 1;
	setAttr ".pm[3]" -type "matrix" 4.5526630734501628e-017 1.81065608469483e-008 -0.99999999999999933 -0
		 -0.013512279797026957 0.99990870497995277 1.810490776765684e-008 0 0.99990870497995277 0.013512279797026853 2.4466091577914831e-010 -0
		 -0.72169950004078109 -0.17665006614284887 -3.1985251640857297e-009 1;
	setAttr ".pm[4]" -type "matrix" 0.99999999999999933 1.8354266525009095e-008 -1.8207884069808524e-008 -0
		 -1.8354266485358987e-008 0.99999999999999956 4.5221456106192981e-016 0 1.8207884131730107e-008 -2.184644266616714e-016 0.99999999999999956 -0
		 -2.3020199205996051e-008 -0.1574364571593781 -1.4230005918182504 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 6.6401226198637193 0 0 0 0 1 0 0 4 0 1;
	setAttr -s 5 ".ma";
	setAttr -s 5 ".dpf[0:4]"  4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr -s 5 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
	setAttr -s 5 ".ifcl";
createNode tweak -n "tweak1";
	setAttr -s 49 ".vl[0].vt";
	setAttr ".vl[0].vt[8]" -type "float3" 0.0067283451 0 0 ;
	setAttr ".vl[0].vt[9]" -type "float3" -0.0067283451 0 0 ;
	setAttr ".vl[0].vt[10]" -type "float3" -0.0067283451 0 0 ;
	setAttr ".vl[0].vt[11]" -type "float3" 0.0067283451 0 0 ;
	setAttr ".vl[0].vt[12]" -type "float3" -0.034683727 0 0 ;
	setAttr ".vl[0].vt[13]" -type "float3" 0.034683727 0 0 ;
	setAttr ".vl[0].vt[14]" -type "float3" 0.034683727 0 0 ;
	setAttr ".vl[0].vt[15]" -type "float3" -0.034683727 0 0 ;
	setAttr ".vl[0].vt[28]" -type "float3" 0 0 0.038070694 ;
	setAttr ".vl[0].vt[29]" -type "float3" 0 0 0.038070694 ;
	setAttr ".vl[0].vt[30]" -type "float3" -0.028849186 0 0 ;
	setAttr ".vl[0].vt[31]" -type "float3" 0.028849186 0 0 ;
	setAttr ".vl[0].vt[32]" -type "float3" -0.063893199 0 0.11872528 ;
	setAttr ".vl[0].vt[33]" -type "float3" 0.063893199 0 0.11872528 ;
	setAttr ".vl[0].vt[34]" -type "float3" -0.063893199 0 0.11872528 ;
	setAttr ".vl[0].vt[35]" -type "float3" 0.063893199 0 0.11872528 ;
	setAttr ".vl[0].vt[36]" -type "float3" 0.038837645 0 0.11872528 ;
	setAttr ".vl[0].vt[37]" -type "float3" -0.038837645 0 0.11872528 ;
	setAttr ".vl[0].vt[38]" -type "float3" 0.038837645 -0.0057178997 0.11872528 ;
	setAttr ".vl[0].vt[39]" -type "float3" -0.038837645 -0.0057178997 0.11872528 ;
	setAttr ".vl[0].vt[40]" -type "float3" 0 0 0.039165221 ;
	setAttr ".vl[0].vt[41]" -type "float3" 0 0 0.039165221 ;
	setAttr ".vl[0].vt[42]" -type "float3" 0 0 0.039165221 ;
	setAttr ".vl[0].vt[43]" -type "float3" 0 0 0.039165221 ;
	setAttr ".vl[0].vt[45]" -type "float3" 0.0082495166 0 0 ;
	setAttr ".vl[0].vt[50]" -type "float3" -0.0082495166 0 0 ;
	setAttr ".vl[0].vt[52]" -type "float3" 0.045154985 0 0 ;
	setAttr ".vl[0].vt[55]" -type "float3" 0.028849186 0 0 ;
	setAttr ".vl[0].vt[56]" -type "float3" -0.028849186 0 0 ;
	setAttr ".vl[0].vt[59]" -type "float3" -0.045154985 0 0 ;
	setAttr ".vl[0].vt[60]" -type "float3" 0 -0.0057178997 0.11872528 ;
	setAttr ".vl[0].vt[61]" -type "float3" 0 0 0.11872528 ;
	setAttr ".vl[0].vt[62]" -type "float3" 0 0 0.11872528 ;
	setAttr ".vl[0].vt[65]" -type "float3" 0.00012505674 0 0 ;
	setAttr ".vl[0].vt[67]" -type "float3" -2.2846794e-005 0 0 ;
	setAttr ".vl[0].vt[73]" -type "float3" -2.284704e-005 0 0 ;
	setAttr ".vl[0].vt[75]" -type "float3" 0.00012505539 0 0 ;
	setAttr ".vl[0].vt[78]" -type "float3" 0 0 -0.029390235 ;
	setAttr ".vl[0].vt[79]" -type "float3" 0 0 -0.029390235 ;
	setAttr ".vl[0].vt[80]" -type "float3" 0 0 0.038070694 ;
	setAttr ".vl[0].vt[83]" -type "float3" 0 0 0.11872528 ;
	setAttr ".vl[0].vt[84]" -type "float3" -0.023390736 0.00017802417 -0.00014520719 ;
	setAttr ".vl[0].vt[85]" -type "float3" -0.024986466 0.00015027076 -0.012868995 ;
	setAttr ".vl[0].vt[86]" -type "float3" 6.4781168e-005 -0.0095552951 -0.016502362 ;
	setAttr ".vl[0].vt[87]" -type "float3" 0.024986466 0.00015027076 -0.012868995 ;
	setAttr ".vl[0].vt[88]" -type "float3" 0.023390736 0.00017806515 -0.00014520719 ;
	setAttr ".vl[0].vt[89]" -type "float3" 0.016634714 0.00040999055 0.01182143 ;
	setAttr ".vl[0].vt[90]" -type "float3" 0.00035747304 -0.0034053586 0.016502354 ;
	setAttr ".vl[0].vt[91]" -type "float3" -0.016634714 0.00040999055 0.01182143 ;
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
	setAttr -s 5 ".wm";
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 7.7618883557232792 0.054635703403899553 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.47662558724363985 -0.52232944545052729 -0.4766255872436399 0.5223294454505274 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.9537913483495042 -7.2164496600635175e-016
		 4.389590189501361e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.98930502242820206 -0.14586148428675275 -1.0867527535968297e-009 7.3708968651203153e-009 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.1297461345116382 -4.4408920985006262e-016
		 -1.822642832380231e-016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.82309562387468171 -0.5679028032668515 -6.9604483065921867e-009 1.0088195565165959e-008 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.105564128756255 -1.1102230246251565e-015
		 1.5401334821583459e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 3.7338190771279291e-009 -1.3215814363874759e-008 0.27188384300533813 0.96233007638369505 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.69904385345052278 4.8572257327350599e-017
		 1.6543612251060553e-024 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0047774214209051896 0.70709063564602137 0.004777421332741557 0.70709064869483462 1
		 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr ".bp" yes;
createNode blendColors -n "thigh_IKFKBlend";
createNode unitConversion -n "unitConversion1";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion2";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion3";
	setAttr ".cf" 0.017453292519943295;
createNode blendColors -n "knee_IKFKBlend";
createNode blendColors -n "ankle_IKFKBlend";
createNode blendColors -n "ball_IKFKBlend";
createNode blendColors -n "toe_IKFKBlend";
createNode unitConversion -n "unitConversion4";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion5";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion6";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion7";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion8";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion9";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion10";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion11";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion12";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion13";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion14";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion15";
	setAttr ".cf" 0.017453292519943295;
createNode hyperGraphInfo -n "nodeEditorPanel2Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -504.09088831323976 -2472.2571319339959 ;
	setAttr ".vh" -type "double2" 4129.2424450200961 -124.88354332329274 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 46 ".hyp";
	setAttr ".hyp[0].x" 241.42857360839844;
	setAttr ".hyp[0].y" -1580;
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].x" 2978.571533203125;
	setAttr ".hyp[1].y" -1951.4285888671875;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].x" 738.5714111328125;
	setAttr ".hyp[2].y" -1137.142822265625;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].x" 978.5714111328125;
	setAttr ".hyp[3].y" -794.28570556640625;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].x" 2738.571533203125;
	setAttr ".hyp[4].y" -2208.571533203125;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".hyp[5].x" 3235.71435546875;
	setAttr ".hyp[5].y" -1951.4285888671875;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".hyp[6].x" 2138.571533203125;
	setAttr ".hyp[6].y" -937.14288330078125;
	setAttr ".hyp[6].nvs" 1920;
	setAttr ".hyp[7].x" 1847.142822265625;
	setAttr ".hyp[7].y" -1037.142822265625;
	setAttr ".hyp[7].nvs" 1920;
	setAttr ".hyp[8].x" 2481.428466796875;
	setAttr ".hyp[8].y" -937.14288330078125;
	setAttr ".hyp[8].nvs" 1920;
	setAttr ".hyp[9].x" 2738.571533203125;
	setAttr ".hyp[9].y" -937.14288330078125;
	setAttr ".hyp[9].nvs" 1920;
	setAttr ".hyp[10].x" 2738.571533203125;
	setAttr ".hyp[10].y" -537.14288330078125;
	setAttr ".hyp[10].nvs" 1920;
	setAttr ".hyp[11].x" 4207.14306640625;
	setAttr ".hyp[11].y" -2065.71435546875;
	setAttr ".hyp[11].nvs" 1920;
	setAttr ".hyp[12].x" 1218.5714111328125;
	setAttr ".hyp[12].y" -937.14288330078125;
	setAttr ".hyp[12].nvs" 1920;
	setAttr ".hyp[13].x" 978.5714111328125;
	setAttr ".hyp[13].y" -1737.142822265625;
	setAttr ".hyp[13].nvs" 1920;
	setAttr ".hyp[14].x" 2738.571533203125;
	setAttr ".hyp[14].y" -194.28572082519531;
	setAttr ".hyp[14].nvs" 1920;
	setAttr ".hyp[15].x" 1847.142822265625;
	setAttr ".hyp[15].y" -1337.142822265625;
	setAttr ".hyp[15].nvs" 1920;
	setAttr ".hyp[16].x" 2481.428466796875;
	setAttr ".hyp[16].y" -2108.571533203125;
	setAttr ".hyp[16].nvs" 1920;
	setAttr ".hyp[17].x" 2138.571533203125;
	setAttr ".hyp[17].y" -2008.5714111328125;
	setAttr ".hyp[17].nvs" 1920;
	setAttr ".hyp[18].x" 2978.571533203125;
	setAttr ".hyp[18].y" -937.14288330078125;
	setAttr ".hyp[18].nvs" 1920;
	setAttr ".hyp[19].x" 3950;
	setAttr ".hyp[19].y" -2065.71435546875;
	setAttr ".hyp[19].nvs" 1920;
	setAttr ".hyp[20].x" 1218.5714111328125;
	setAttr ".hyp[20].y" -794.28570556640625;
	setAttr ".hyp[20].nvs" 1920;
	setAttr ".hyp[21].x" 2978.571533203125;
	setAttr ".hyp[21].y" -294.28570556640625;
	setAttr ".hyp[21].nvs" 1920;
	setAttr ".hyp[22].x" 1.4285714626312256;
	setAttr ".hyp[22].y" -1280;
	setAttr ".hyp[22].nvs" 1920;
	setAttr ".hyp[23].x" 498.57144165039062;
	setAttr ".hyp[23].y" -1137.142822265625;
	setAttr ".hyp[23].nvs" 1920;
	setAttr ".hyp[24].x" 738.5714111328125;
	setAttr ".hyp[24].y" -1422.857177734375;
	setAttr ".hyp[24].nvs" 1920;
	setAttr ".hyp[25].x" 2481.428466796875;
	setAttr ".hyp[25].y" -537.14288330078125;
	setAttr ".hyp[25].nvs" 1920;
	setAttr ".hyp[26].x" 1552.857177734375;
	setAttr ".hyp[26].y" -937.14288330078125;
	setAttr ".hyp[26].nvs" 1920;
	setAttr ".hyp[27].x" 2138.571533203125;
	setAttr ".hyp[27].y" -794.28570556640625;
	setAttr ".hyp[27].nvs" 1920;
	setAttr ".hyp[28].x" 2738.571533203125;
	setAttr ".hyp[28].y" -394.28570556640625;
	setAttr ".hyp[28].nvs" 1920;
	setAttr ".hyp[29].x" 3235.71435546875;
	setAttr ".hyp[29].y" -294.28570556640625;
	setAttr ".hyp[29].nvs" 1920;
	setAttr ".hyp[30].x" 2481.428466796875;
	setAttr ".hyp[30].y" -194.28572082519531;
	setAttr ".hyp[30].nvs" 1920;
	setAttr ".hyp[31].x" 498.57144165039062;
	setAttr ".hyp[31].y" -1280;
	setAttr ".hyp[31].nvs" 1920;
	setAttr ".hyp[32].x" 738.5714111328125;
	setAttr ".hyp[32].y" -1280;
	setAttr ".hyp[32].nvs" 1920;
	setAttr ".hyp[33].x" 2978.571533203125;
	setAttr ".hyp[33].y" -2208.571533203125;
	setAttr ".hyp[33].nvs" 1920;
	setAttr ".hyp[34].x" 498.57144165039062;
	setAttr ".hyp[34].y" -1580;
	setAttr ".hyp[34].nvs" 1920;
	setAttr ".hyp[35].x" 2481.428466796875;
	setAttr ".hyp[35].y" -2308.571533203125;
	setAttr ".hyp[35].nvs" 1920;
	setAttr ".hyp[36].x" 498.57144165039062;
	setAttr ".hyp[36].y" -1422.857177734375;
	setAttr ".hyp[36].nvs" 1920;
	setAttr ".hyp[37].x" 1218.5714111328125;
	setAttr ".hyp[37].y" -1537.142822265625;
	setAttr ".hyp[37].nvs" 1920;
	setAttr ".hyp[38].x" 3950;
	setAttr ".hyp[38].y" -194.28572082519531;
	setAttr ".hyp[38].nvs" 1920;
	setAttr ".hyp[39].x" 2738.571533203125;
	setAttr ".hyp[39].y" -1537.142822265625;
	setAttr ".hyp[39].nvs" 1920;
	setAttr ".hyp[40].x" 2138.571533203125;
	setAttr ".hyp[40].y" -1151.4285888671875;
	setAttr ".hyp[40].nvs" 1920;
	setAttr ".hyp[41].x" 241.42857360839844;
	setAttr ".hyp[41].y" -1280;
	setAttr ".hyp[41].nvs" 1920;
	setAttr ".hyp[42].x" 2138.571533203125;
	setAttr ".hyp[42].y" -1537.142822265625;
	setAttr ".hyp[42].nvs" 1920;
	setAttr ".hyp[43].x" 1847.142822265625;
	setAttr ".hyp[43].y" -1837.142822265625;
	setAttr ".hyp[43].nvs" 1920;
	setAttr ".hyp[44].x" 978.5714111328125;
	setAttr ".hyp[44].y" -1187.142822265625;
	setAttr ".hyp[44].nvs" 1920;
	setAttr ".hyp[45].x" 3518.571533203125;
	setAttr ".hyp[45].y" -537.14288330078125;
	setAttr ".hyp[45].nvs" 1920;
	setAttr ".anf" yes;
createNode makeNurbCircle -n "makeNurbCircle1";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 1.4142135623730951;
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -3 0 0 1;
createNode transformGeometry -n "transformGeometry2";
	setAttr ".txf" -type "matrix" 7.3568107299462585e-017 0.33132130062021237 0 0 -0.33132130062021237 7.3568107299462585e-017 0 0
		 0 0 0.33132130062021237 0 2.2070432189838776e-016 1.7191205899856845 -1.2280084047365032 1;
createNode displayLayer -n "switches";
	setAttr ".c" 9;
	setAttr ".do" 3;
createNode blendColors -n "thigh_stretch";
createNode blendColors -n "knee_stretch";
createNode blendColors -n "ankle_stretch";
createNode blendColors -n "ball_stretch";
createNode blendColors -n "toe_stretch";
createNode displayLayer -n "controls";
	setAttr ".c" 17;
	setAttr ".do" 4;
createNode makeNurbCircle -n "makeNurbCircle2";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 1.4142135623730951;
createNode transformGeometry -n "transformGeometry3";
	setAttr ".txf" -type "matrix" 2.2204460492503131e-016 0 -1 0 0 1 0 0 1 0 2.2204460492503131e-016 0
		 0 0 0 1;
createNode transformGeometry -n "transformGeometry4";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 0 0 1;
createNode makeNurbCircle -n "makeNurbCircle3";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 1.4142135623730951;
createNode transformGeometry -n "transformGeometry5";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 0 0 1;
createNode makeNurbCircle -n "makeNurbCircle4";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 1.4142135623730951;
createNode transformGeometry -n "transformGeometry6";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 0 0 0 1;
createNode makeNurbCircle -n "makeNurbCircle5";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 1.4142135623730951;
createNode transformGeometry -n "transformGeometry7";
	setAttr ".txf" -type "matrix" 0.55561795777778555 0 0 0 0 1.2337196992402112e-016 0.55561795777778555 0
		 0 -0.55561795777778555 1.2337196992402112e-016 0 0 0 0 1;
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
select -ne :defaultRenderUtilityList1;
	setAttr -s 10 ".u";
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
connectAttr "mesh.di" "legMesh.do";
connectAttr "skinCluster1GroupId.id" "legMeshShape.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "legMeshShape.iog.og[0].gco";
connectAttr "groupId2.id" "legMeshShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "legMeshShape.iog.og[1].gco";
connectAttr "skinCluster1.og[0]" "legMeshShape.i";
connectAttr "tweak1.vl[0].vt[0]" "legMeshShape.twl";
connectAttr "polySplitRing8.out" "legMeshShapeOrig.i";
connectAttr "unitConversion3.o" "thigh.r";
connectAttr "thigh_stretch.op" "thigh.t";
connectAttr "joint.di" "thigh.do";
connectAttr "thigh.s" "knee.is";
connectAttr "unitConversion12.o" "knee.r";
connectAttr "knee_stretch.op" "knee.t";
connectAttr "knee.s" "ankle.is";
connectAttr "unitConversion13.o" "ankle.r";
connectAttr "ankle_stretch.op" "ankle.t";
connectAttr "ankle.s" "ball.is";
connectAttr "unitConversion14.o" "ball.r";
connectAttr "ball_stretch.op" "ball.t";
connectAttr "ball.s" "toe.is";
connectAttr "unitConversion15.o" "toe.r";
connectAttr "toe_stretch.op" "toe.t";
connectAttr "joint.di" "thighFK.do";
connectAttr "thighFK.s" "kneeFK.is";
connectAttr "kneeFK.s" "ankleFK.is";
connectAttr "ankleFK.s" "ballFK.is";
connectAttr "ballFK.s" "toeFK.is";
connectAttr "transformGeometry7.og" "L_toe_CTRL.cr";
connectAttr "transformGeometry6.og" "L_ankle_CTRL.cr";
connectAttr "transformGeometry5.og" "L_knee_CTRL.cr";
connectAttr "transformGeometry4.og" "L_thigh_CTRL.cr";
connectAttr "joint.di" "thighIK.do";
connectAttr "thighIK.s" "kneeIK.is";
connectAttr "kneeIK.s" "ankleIK.is";
connectAttr "ankleIK.s" "ballIK.is";
connectAttr "ballIK.s" "toeIK.is";
connectAttr "left_leg_CTRL_parentConstraint1.ctx" "left_leg_CTRL.tx";
connectAttr "left_leg_CTRL_parentConstraint1.cty" "left_leg_CTRL.ty";
connectAttr "left_leg_CTRL_parentConstraint1.ctz" "left_leg_CTRL.tz";
connectAttr "left_leg_CTRL_parentConstraint1.crx" "left_leg_CTRL.rx";
connectAttr "left_leg_CTRL_parentConstraint1.cry" "left_leg_CTRL.ry";
connectAttr "left_leg_CTRL_parentConstraint1.crz" "left_leg_CTRL.rz";
connectAttr "switches.di" "left_leg_CTRL.do";
connectAttr "transformGeometry2.og" "left_leg_CTRLShape.cr";
connectAttr "left_leg_CTRL.ro" "left_leg_CTRL_parentConstraint1.cro";
connectAttr "left_leg_CTRL.pim" "left_leg_CTRL_parentConstraint1.cpim";
connectAttr "left_leg_CTRL.rp" "left_leg_CTRL_parentConstraint1.crp";
connectAttr "left_leg_CTRL.rpt" "left_leg_CTRL_parentConstraint1.crt";
connectAttr "knee.t" "left_leg_CTRL_parentConstraint1.tg[0].tt";
connectAttr "knee.rp" "left_leg_CTRL_parentConstraint1.tg[0].trp";
connectAttr "knee.rpt" "left_leg_CTRL_parentConstraint1.tg[0].trt";
connectAttr "knee.r" "left_leg_CTRL_parentConstraint1.tg[0].tr";
connectAttr "knee.ro" "left_leg_CTRL_parentConstraint1.tg[0].tro";
connectAttr "knee.s" "left_leg_CTRL_parentConstraint1.tg[0].ts";
connectAttr "knee.pm" "left_leg_CTRL_parentConstraint1.tg[0].tpm";
connectAttr "knee.jo" "left_leg_CTRL_parentConstraint1.tg[0].tjo";
connectAttr "knee.ssc" "left_leg_CTRL_parentConstraint1.tg[0].tsc";
connectAttr "knee.is" "left_leg_CTRL_parentConstraint1.tg[0].tis";
connectAttr "left_leg_CTRL_parentConstraint1.w0" "left_leg_CTRL_parentConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polySplitRing1.ip";
connectAttr "legMeshShape.wm" "polySplitRing1.mp";
connectAttr "polyTweak1.out" "polySplitRing2.ip";
connectAttr "legMeshShape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polySplitRing3.ip";
connectAttr "legMeshShape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polySplitRing4.ip";
connectAttr "legMeshShape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing3.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polySplitRing5.ip";
connectAttr "legMeshShape.wm" "polySplitRing5.mp";
connectAttr "polySplitRing4.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace1.ip";
connectAttr "legMeshShape.wm" "polyExtrudeFace1.mp";
connectAttr "polySplitRing5.out" "polyTweak5.ip";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "legMeshShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "legMeshShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "legMeshShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyTweak6.out" "polySplitRing6.ip";
connectAttr "legMeshShape.wm" "polySplitRing6.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak6.ip";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "legMeshShape.wm" "polySplitRing7.mp";
connectAttr "polyTweak7.out" "polySplitRing8.ip";
connectAttr "legMeshShape.wm" "polySplitRing8.mp";
connectAttr "polySplitRing7.out" "polyTweak7.ip";
connectAttr "layerManager.dli[2]" "mesh.id";
connectAttr "layerManager.dli[3]" "joint.id";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "thigh.wm" "skinCluster1.ma[0]";
connectAttr "knee.wm" "skinCluster1.ma[1]";
connectAttr "ankle.wm" "skinCluster1.ma[2]";
connectAttr "ball.wm" "skinCluster1.ma[3]";
connectAttr "toe.wm" "skinCluster1.ma[4]";
connectAttr "thigh.liw" "skinCluster1.lw[0]";
connectAttr "knee.liw" "skinCluster1.lw[1]";
connectAttr "ankle.liw" "skinCluster1.lw[2]";
connectAttr "ball.liw" "skinCluster1.lw[3]";
connectAttr "toe.liw" "skinCluster1.lw[4]";
connectAttr "thigh.obcc" "skinCluster1.ifcl[0]";
connectAttr "knee.obcc" "skinCluster1.ifcl[1]";
connectAttr "ankle.obcc" "skinCluster1.ifcl[2]";
connectAttr "ball.obcc" "skinCluster1.ifcl[3]";
connectAttr "toe.obcc" "skinCluster1.ifcl[4]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "legMeshShape.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "legMeshShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "legMeshShapeOrig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "thigh.msg" "bindPose1.m[0]";
connectAttr "knee.msg" "bindPose1.m[1]";
connectAttr "ankle.msg" "bindPose1.m[2]";
connectAttr "ball.msg" "bindPose1.m[3]";
connectAttr "toe.msg" "bindPose1.m[4]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "thigh.bps" "bindPose1.wm[0]";
connectAttr "knee.bps" "bindPose1.wm[1]";
connectAttr "ankle.bps" "bindPose1.wm[2]";
connectAttr "ball.bps" "bindPose1.wm[3]";
connectAttr "toe.bps" "bindPose1.wm[4]";
connectAttr "unitConversion1.o" "thigh_IKFKBlend.c1";
connectAttr "unitConversion2.o" "thigh_IKFKBlend.c2";
connectAttr "left_leg_CTRL.FK_IK_Switch" "thigh_IKFKBlend.b";
connectAttr "thighIK.r" "unitConversion1.i";
connectAttr "thighFK.r" "unitConversion2.i";
connectAttr "thigh_IKFKBlend.op" "unitConversion3.i";
connectAttr "unitConversion4.o" "knee_IKFKBlend.c1";
connectAttr "unitConversion5.o" "knee_IKFKBlend.c2";
connectAttr "left_leg_CTRL.FK_IK_Switch" "knee_IKFKBlend.b";
connectAttr "unitConversion6.o" "ankle_IKFKBlend.c1";
connectAttr "unitConversion7.o" "ankle_IKFKBlend.c2";
connectAttr "left_leg_CTRL.FK_IK_Switch" "ankle_IKFKBlend.b";
connectAttr "unitConversion8.o" "ball_IKFKBlend.c1";
connectAttr "unitConversion9.o" "ball_IKFKBlend.c2";
connectAttr "left_leg_CTRL.FK_IK_Switch" "ball_IKFKBlend.b";
connectAttr "unitConversion10.o" "toe_IKFKBlend.c1";
connectAttr "unitConversion11.o" "toe_IKFKBlend.c2";
connectAttr "left_leg_CTRL.FK_IK_Switch" "toe_IKFKBlend.b";
connectAttr "kneeIK.r" "unitConversion4.i";
connectAttr "kneeFK.r" "unitConversion5.i";
connectAttr "ankleIK.r" "unitConversion6.i";
connectAttr "ankleFK.r" "unitConversion7.i";
connectAttr "ballIK.r" "unitConversion8.i";
connectAttr "ballFK.r" "unitConversion9.i";
connectAttr "toeIK.r" "unitConversion10.i";
connectAttr "toeFK.r" "unitConversion11.i";
connectAttr "knee_IKFKBlend.op" "unitConversion12.i";
connectAttr "ankle_IKFKBlend.op" "unitConversion13.i";
connectAttr "ball_IKFKBlend.op" "unitConversion14.i";
connectAttr "toe_IKFKBlend.op" "unitConversion15.i";
connectAttr "hyperView1.msg" "nodeEditorPanel2Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "thighFK.msg" "hyperLayout1.hyp[0].dn";
connectAttr "ball_stretch.msg" "hyperLayout1.hyp[1].dn";
connectAttr "unitConversion4.msg" "hyperLayout1.hyp[2].dn";
connectAttr "unitConversion3.msg" "hyperLayout1.hyp[3].dn";
connectAttr "ball_IKFKBlend.msg" "hyperLayout1.hyp[4].dn";
connectAttr "ball.msg" "hyperLayout1.hyp[5].dn";
connectAttr "unitConversion7.msg" "hyperLayout1.hyp[6].dn";
connectAttr "ankleIK.msg" "hyperLayout1.hyp[7].dn";
connectAttr "ankle_IKFKBlend.msg" "hyperLayout1.hyp[8].dn";
connectAttr "unitConversion13.msg" "hyperLayout1.hyp[9].dn";
connectAttr "toe_stretch.msg" "hyperLayout1.hyp[10].dn";
connectAttr "legMeshShape.msg" "hyperLayout1.hyp[11].dn";
connectAttr "unitConversion12.msg" "hyperLayout1.hyp[12].dn";
connectAttr "thigh_stretch.msg" "hyperLayout1.hyp[13].dn";
connectAttr "unitConversion10.msg" "hyperLayout1.hyp[14].dn";
connectAttr "left_leg_CTRL_parentConstraint1.msg" "hyperLayout1.hyp[15].dn";
connectAttr "unitConversion8.msg" "hyperLayout1.hyp[16].dn";
connectAttr "ballFK.msg" "hyperLayout1.hyp[17].dn";
connectAttr "ankle.msg" "hyperLayout1.hyp[18].dn";
connectAttr "skinCluster1.msg" "hyperLayout1.hyp[19].dn";
connectAttr "thigh.msg" "hyperLayout1.hyp[20].dn";
connectAttr "toe_IKFKBlend.msg" "hyperLayout1.hyp[21].dn";
connectAttr "joint.msg" "hyperLayout1.hyp[22].dn";
connectAttr "kneeIK.msg" "hyperLayout1.hyp[23].dn";
connectAttr "unitConversion5.msg" "hyperLayout1.hyp[24].dn";
connectAttr "toeFK.msg" "hyperLayout1.hyp[25].dn";
connectAttr "knee.msg" "hyperLayout1.hyp[26].dn";
connectAttr "unitConversion6.msg" "hyperLayout1.hyp[27].dn";
connectAttr "unitConversion11.msg" "hyperLayout1.hyp[28].dn";
connectAttr "unitConversion15.msg" "hyperLayout1.hyp[29].dn";
connectAttr "toeIK.msg" "hyperLayout1.hyp[30].dn";
connectAttr "unitConversion1.msg" "hyperLayout1.hyp[31].dn";
connectAttr "thigh_IKFKBlend.msg" "hyperLayout1.hyp[32].dn";
connectAttr "unitConversion14.msg" "hyperLayout1.hyp[33].dn";
connectAttr "kneeFK.msg" "hyperLayout1.hyp[34].dn";
connectAttr "unitConversion9.msg" "hyperLayout1.hyp[35].dn";
connectAttr "unitConversion2.msg" "hyperLayout1.hyp[36].dn";
connectAttr "knee_stretch.msg" "hyperLayout1.hyp[37].dn";
connectAttr "bindPose1.msg" "hyperLayout1.hyp[38].dn";
connectAttr "ankle_stretch.msg" "hyperLayout1.hyp[39].dn";
connectAttr "ballIK.msg" "hyperLayout1.hyp[40].dn";
connectAttr "thighIK.msg" "hyperLayout1.hyp[41].dn";
connectAttr "left_leg_CTRL.msg" "hyperLayout1.hyp[42].dn";
connectAttr "ankleFK.msg" "hyperLayout1.hyp[43].dn";
connectAttr "knee_IKFKBlend.msg" "hyperLayout1.hyp[44].dn";
connectAttr "toe.msg" "hyperLayout1.hyp[45].dn";
connectAttr "makeNurbCircle1.oc" "transformGeometry1.ig";
connectAttr "transformGeometry1.og" "transformGeometry2.ig";
connectAttr "layerManager.dli[4]" "switches.id";
connectAttr "thighIK.t" "thigh_stretch.c1";
connectAttr "thighFK.t" "thigh_stretch.c2";
connectAttr "left_leg_CTRL.FK_IK_Switch" "thigh_stretch.b";
connectAttr "kneeIK.t" "knee_stretch.c1";
connectAttr "kneeFK.t" "knee_stretch.c2";
connectAttr "left_leg_CTRL.FK_IK_Switch" "knee_stretch.b";
connectAttr "ankleIK.t" "ankle_stretch.c1";
connectAttr "ankleFK.t" "ankle_stretch.c2";
connectAttr "left_leg_CTRL.FK_IK_Switch" "ankle_stretch.b";
connectAttr "ballIK.t" "ball_stretch.c1";
connectAttr "ballFK.t" "ball_stretch.c2";
connectAttr "left_leg_CTRL.FK_IK_Switch" "ball_stretch.b";
connectAttr "toeIK.t" "toe_stretch.c1";
connectAttr "toeFK.t" "toe_stretch.c2";
connectAttr "left_leg_CTRL.FK_IK_Switch" "toe_stretch.b";
connectAttr "layerManager.dli[5]" "controls.id";
connectAttr "makeNurbCircle2.oc" "transformGeometry3.ig";
connectAttr "transformGeometry3.og" "transformGeometry4.ig";
connectAttr "makeNurbCircle3.oc" "transformGeometry5.ig";
connectAttr "makeNurbCircle4.oc" "transformGeometry6.ig";
connectAttr "makeNurbCircle5.oc" "transformGeometry7.ig";
connectAttr "thigh_IKFKBlend.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "knee_IKFKBlend.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankle_IKFKBlend.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_IKFKBlend.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toe_IKFKBlend.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "thigh_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "knee_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ankle_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ball_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "toe_stretch.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "legMeshShape.iog" ":initialShadingGroup.dsm" -na;
// End of legIK4.ma
