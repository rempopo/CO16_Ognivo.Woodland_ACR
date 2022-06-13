// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Macros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]

#define GSG9_HELMETS	["cwr3_b_headgear_protec_half_headset_goggles","cwr3_b_headgear_protec_half_goggles","cwr3_b_headgear_protec_full","cwr3_b_headgear_protec_full_goggles","cwr3_b_headgear_protec_full_plain","rhsusf_cvc_green_ess","CUP_H_SPH4_green"]
#define GSG9_MASKS	["G_Balaclava_blk","G_Bandanna_khk","G_Bandanna_blk","cwr3_b_facewear_balaclava_khaki","CUP_RUS_Balaclava_rgr","cwr3_b_facewear_balaclava_black","","TRYK_kio_balaclava_BLK","CUP_PMC_Facewrap_Black"]
#define JAGER_HELMETS	["CUP_H_PMC_EP_Headset","CUP_H_Ger_Beret_INF_Grn","CUP_H_Ger_Cap_Grn2","TRYK_H_woolhat"]
#define JAGER_MASKS ["CUP_RUS_Balaclava_blk","G_Bandanna_blk",""]


// ****************


kit_rus_86art_brm_crew = [
	["<EQUIPEMENT >>  ","CUP_U_O_RUS_Soldier_VKPO_MSV_EMR_gloves_pads","rhs_6sh92_digi_radio","rhs_rd54_vest_emr1","cwr3_o_headgear_tsh3",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74u","CUP_30Rnd_545x39_AK74_plum_M",["CUP_muzzle_TGPA","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","WBK_survival_weapon_3","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["ACE_Canteen",2],["ZSN_Whistle",1],["rhs_30Rnd_545x39_7U1_AK",9],["rhs_mag_rgd5",1]]],
	["<BACKPACK ITEMS >> ",[["ACE_DefusalKit",1],["ToolKit",1],["ACE_wirecutter",1],["ACE_EntrenchingTool",1]]]
	,["<IDENTITY >>", ["RussianHead_4","cwr3_face_blake","usm_WhiteHead_01","WhiteHead_05","WhiteHead_27","WhiteHead_28","LivonianHead_1","LivonianHead_10","GreekHead_A3_09","usm_WhiteHead_15","WhiteHead_09","WhiteHead_31", "cwr3_face_troska","RussianHead_5"], ["ace_novoice"], ""]
];

kit_rus_86art_recon_ar = [
	["<EQUIPEMENT >>  ","CUP_U_O_RUS_EMR_gloves_pads","rhs_6b23_digi_6sh92_Spetsnaz","CUP_O_RUS_Patrol_bag_Green_Shovel","rhs_6b26_digi_ess","CUP_G_RUS_Balaclava_Ratnik"],
	["<PRIMARY WEAPON >>  ","rhs_weap_rpk74m","rhs_45Rnd_545X39_7N10_AK",["CUP_muzzle_TGPA","","rhs_acc_1p78",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","Shovel_Russian","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[["rhs_45Rnd_545X39_AK_Green",3],["rhs_mag_rgd5",3]]]
	,["<IDENTITY >>", ["RussianHead_4","cwr3_face_blake","usm_WhiteHead_01","WhiteHead_05","WhiteHead_27","WhiteHead_28","LivonianHead_1","LivonianHead_10","GreekHead_A3_09","usm_WhiteHead_15","WhiteHead_09","WhiteHead_31", "cwr3_face_troska","RussianHead_5"], ["ace_novoice"], ""]
];

kit_rus_86art_recon_sl = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_patchless","rhs_6b23_digi_6sh92_headset_mapcase","tf_mr3000_rhs","rhs_6b26_digi_ess_bala",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74n","CUP_30Rnd_545x39_AK74_plum_M",["CUP_muzzle_TGPA","","rhs_acc_nita",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","Shovel_Russian","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["rhs_30Rnd_545x39_AK_green",10]]],
	["<BACKPACK ITEMS >> ",[["rhs_30Rnd_545x39_AK_green",2]]]
	,["<IDENTITY >>", ["RussianHead_4","cwr3_face_blake","usm_WhiteHead_01","WhiteHead_05","WhiteHead_27","WhiteHead_28","LivonianHead_1","LivonianHead_10","GreekHead_A3_09","usm_WhiteHead_15","WhiteHead_09","WhiteHead_31", "cwr3_face_troska","RussianHead_5"], ["ace_novoice"], ""]
];

kit_rus_86art_recon_gr = [
	["<EQUIPEMENT >>  ","CUP_U_O_RUS_EMR_gloves_pads","rhs_6b23_6sh116_vog","CUP_O_RUS_Patrol_bag_Green","CUP_H_RUS_6B27_cover_headset_goggles","CUP_G_RUS_Balaclava_Ratnik"],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74n_gp25","CUP_30Rnd_545x39_AK74_plum_M",["CUP_muzzle_TGPA","","rhs_acc_nita",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","Shovel_Russian","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_IlumFlareGreen_GP25_M",1],["CUP_1Rnd_SmokeGreen_GP25_M",2],["CUP_FlareGreen_GP25_M",2],["CUP_1Rnd_HE_GP25_M",20],["rhs_30Rnd_545x39_7N10_plum_AK",2]]],
	["<BACKPACK ITEMS >> ",[["CUP_1Rnd_HE_GP25_M",5],["rhs_30Rnd_545x39_7N10_plum_AK",15],["rhs_mag_rgd5",5]]]
	,["<IDENTITY >>", ["RussianHead_4","cwr3_face_blake","usm_WhiteHead_01","WhiteHead_05","WhiteHead_27","WhiteHead_28","LivonianHead_1","LivonianHead_10","GreekHead_A3_09","usm_WhiteHead_15","WhiteHead_09","WhiteHead_31", "cwr3_face_troska","RussianHead_5"], ["ace_novoice"], ""]
];

kit_rus_86art_recon_r = [
	["<EQUIPEMENT >>  ","CUP_U_O_RUS_EMR_gloves_pads","rhs_6b23_digi_vydra_3m","CUP_O_RUS_Patrol_bag_Green","rhs_6b26_digi_bala","rhs_ess_black"],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74n","CUP_30Rnd_545x39_AK74_plum_M",["CUP_muzzle_TGPA","","rhs_acc_nita",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG26_Loaded","CUP_RPG26_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","Shovel_Russian","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_30Rnd_545x39_7N6M_plum_AK",10]]],
	["<BACKPACK ITEMS >> ",[["rhs_30Rnd_545x39_7N22_plum_AK",15],["rhs_mag_rgd5",5]]]
	,["<IDENTITY >>", ["RussianHead_4","cwr3_face_blake","usm_WhiteHead_01","WhiteHead_05","WhiteHead_27","WhiteHead_28","LivonianHead_1","LivonianHead_10","GreekHead_A3_09","usm_WhiteHead_15","WhiteHead_09","WhiteHead_31", "cwr3_face_troska","RussianHead_5"], ["ace_novoice"], ""]
];

kit_rus_86art_recon_mm = [
	["<EQUIPEMENT >>  ","CUP_U_O_RUS_EMR_gloves_pads","rhs_6b23_digi_sniper","CUP_O_RUS_Patrol_bag_Green","CUP_H_RUS_Cap_EMR","CUP_G_RUS_Balaclava_Ratnik"],
	["<PRIMARY WEAPON >>  ","CUP_srifle_SVD","CUP_10Rnd_762x54_SVD_M",["rhs_acc_tgpv2","","CUP_optic_PSO_1",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_pb_6p9","rhs_mag_9x18_8_57N181S",["rhs_acc_6p9_suppressor","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_10Rnd_762x54mmR_7N1",10],["CUP_8Rnd_9x18_MakarovSD_M",4]]],
	["<BACKPACK ITEMS >> ",[["rhs_10Rnd_762x54mmR_7N1",25]]]
	,["<IDENTITY >>", ["RussianHead_4","cwr3_face_blake","usm_WhiteHead_01","WhiteHead_05","WhiteHead_27","WhiteHead_28","LivonianHead_1","LivonianHead_10","GreekHead_A3_09","usm_WhiteHead_15","WhiteHead_09","WhiteHead_31", "cwr3_face_troska","RussianHead_5"], ["ace_novoice"], ""]
];

kit_rus_86art_recon_at = [
	["<EQUIPEMENT >>  ","CUP_U_O_RUS_EMR_gloves_pads","rhs_6b23_digi_rifleman","rhs_rpg_6b2","","CUP_G_RUS_Balaclava_Ratnik"],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74n","rhs_30Rnd_545x39_7N6M_AK",["rhs_acc_dtk1983","","rhs_acc_pkas",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7VL_mag",["","","rhs_acc_pgo7v2",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_pb_6p9","rhs_mag_9x18_8_57N181S",["rhs_acc_6p9_suppressor","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_30Rnd_545x39_7N6_AK",8]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_PG7VM_mag",2],["rhs_rpg7_OG7V_mag",2]]]
	,["<IDENTITY >>", ["RussianHead_4","cwr3_face_blake","usm_WhiteHead_01","WhiteHead_05","WhiteHead_27","WhiteHead_28","LivonianHead_1","LivonianHead_10","GreekHead_A3_09","usm_WhiteHead_15","WhiteHead_09","WhiteHead_31", "cwr3_face_troska","RussianHead_5"], ["ace_novoice"], ""]
];

kit_rus_86art_recon_med = [
	["<EQUIPEMENT >>  ","CUP_U_O_RUS_EMR_gloves_pads","CUP_V_RUS_6B3_Flora_1","cwr3_o_backpack_veshmeshok_medic_empty","CUP_H_SLA_Helmet_BLK_worn","CUP_G_RUS_Balaclava_Ratnik_v2"],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74n","CUP_30Rnd_545x39_AK74_plum_M",["CUP_muzzle_TGPA","","rhs_acc_nita",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","WBK_survival_weapon_3","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["ZSN_Whistle",1],["rhs_30Rnd_545x39_AK_green",12]]],
	["<BACKPACK ITEMS >> ",[["ACE_WaterBottle",10],["ACE_surgicalKit",1],["ACE_bloodIV_500",6],["ACE_fieldDressing",40],["ACE_elasticBandage",40],["ACE_packingBandage",40],["ACE_quikclot",40],["ACE_morphine",15],["ACE_epinephrine",15],["ACE_tourniquet",15]]]
	,["<IDENTITY >>", ["RussianHead_4","cwr3_face_blake","usm_WhiteHead_01","WhiteHead_05","WhiteHead_27","WhiteHead_28","LivonianHead_1","LivonianHead_10","GreekHead_A3_09","usm_WhiteHead_15","WhiteHead_09","WhiteHead_31", "cwr3_face_troska","RussianHead_5"], ["ace_novoice"], ""]
];

kit_rus_86art_recon_ftl = [
	["<EQUIPEMENT >>  ","rhs_uniform_emr_patchless","rhs_6b23_digi_6sh92_Vog_Radio_Spetsnaz","CUP_O_RUS_Patrol_bag_Green","rhs_6b26_digi_bala","CUP_G_ESS_RGR_Dark"],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74n_gp25","CUP_30Rnd_545x39_AK74_plum_M",["CUP_muzzle_TGPA","","rhs_acc_nita",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","Shovel_Russian","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_IlumFlareGreen_GP25_M",1],["CUP_1Rnd_SmokeGreen_GP25_M",2],["CUP_FlareGreen_GP25_M",2],["CUP_1Rnd_HE_GP25_M",19],["rhs_30Rnd_545x39_7N10_plum_AK",2],["rhs_VG40TB",1]]],
	["<BACKPACK ITEMS >> ",[["ZSN_Bugle",1],["CUP_1Rnd_HE_GP25_M",6],["rhs_30Rnd_545x39_7N10_plum_AK",15],["rhs_mag_rgd5",5],["rhs_VG40TB",4],["rhs_VG40OP_green",2],["rhs_VG40OP_red",2],["rhs_VG40OP_white",2],["hlc_VOG25_AK",7]]]
];

kit_rus_86art_recon_sptr = [
	["<EQUIPEMENT >>  ","CUP_U_O_RUS_EMR_gloves_pads","rhs_6b23_digi_vydra_3m","CUP_O_RUS_Patrol_bag_Green","rhs_Booniehat_digi","CUP_G_RUS_Balaclava_Ratnik"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74","rhs_30Rnd_545x39_7N10_AK",["CUP_muzzle_TGPA","","CUP_optic_PSO_1_AK_open",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_pb_6p9","rhs_mag_9x18_8_57N181S",["rhs_acc_6p9_suppressor","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_8Rnd_9x18_MakarovSD_M",5],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[["ACE_Canteen",5],["ACE_FlareTripMine_Mag",5],["rhs_mine_ozm72_a_mag",2],["rhs_mag_nspn_red",3],["rhs_mag_rgo",2]]]
	,["<IDENTITY >>", ["RussianHead_4","cwr3_face_blake","usm_WhiteHead_01","WhiteHead_05","WhiteHead_27","WhiteHead_28","LivonianHead_1","LivonianHead_10","GreekHead_A3_09","usm_WhiteHead_15","WhiteHead_09","WhiteHead_31", "cwr3_face_troska","RussianHead_5"], ["ace_novoice"], ""]
];

//Germany

kit_ger_fjb_RANDOM = [
"kit_ger_fjb_12_r"
,"kit_ger_fjb_12_gr"
,"kit_ger_fjb_12_mm"
,"kit_ger_fjb_12_ar"
,"kit_ger_fjb_12_sl"
,"kit_ger_fjb_12_ftl"
];

kit_ger_fjb_12_r = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_7","CUP_V_B_GER_Armatus_Fleck","CUP_B_GER_Medic_Flecktarn","CUP_H_Ger_Beret_KSK_Red",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G36K_KSK","CUP_30Rnd_556x45_G36",["","","CUP_optic_ACOG_TA01NSN_RMR_Black",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_HCPF3_Loaded","CUP_PTFHC_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_MP7A2_folded","rhsusf_mag_40Rnd_46x30_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["HANDGUN MAG",1]]],
	["<BACKPACK ITEMS >> ",[["CUP_40Rnd_46x30_MP7",5],["PRIMARY MAG",8],["CUP_HandGrenade_M67",3]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_fjb_12_gr = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_7","CUP_V_B_GER_Armatus_Fleck","CUP_B_GER_Medic_Flecktarn","CUP_H_Ger_Beret_KSK_Red",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G36K_RIS_AG36","1Rnd_HE_Grenade_shell",["","","CUP_optic_ACOG_TA01NSN_RMR_Black",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_MP7A2_folded","rhsusf_mag_40Rnd_46x30_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",1],["CUP_20Rnd_762x51_G3",7]]],
	["<BACKPACK ITEMS >> ",[["CUP_40Rnd_46x30_MP7",5],["CUP_HandGrenade_M67",3],["PRIMARY MAG",14],["CUP_30Rnd_556x45_G36",8]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_fjb_12_mm = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_7","CUP_V_B_GER_Armatus_Fleck","CUP_B_GER_Medic_Flecktarn","CUP_H_PMC_Beanie_Headphones_Khaki",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_HK417_20","ACE_10Rnd_762x51_Mag_SD",["rhsusf_acc_aac_762sdn6_silencer","","CUP_optic_ACOG_TA01NSN_RMR_Black",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_MP7A2_folded","rhsusf_mag_40Rnd_46x30_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",15]]],
	["<BACKPACK ITEMS >> ",[["CUP_40Rnd_46x30_MP7",5],["CUP_HandGrenade_M67",3],["1Rnd_HE_Grenade_shell",15]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_fjb_12_ar = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_7","CUP_V_B_GER_Armatus_Fleck","CUP_B_GER_Medic_Flecktarn","CUP_H_Ger_Beret_KSK_Red","rhsusf_shemagh_grn"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_MG36","CUP_100Rnd_TE1_Yellow_Tracer_556x45_BetaCMag",["","","CUP_optic_ACOG_TA01NSN_RMR_Black",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_MP7A2_folded","rhsusf_mag_40Rnd_46x30_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",10]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_fjb_12_sl = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_7","CUP_V_B_GER_Armatus_Fleck","tf_mr3000_bwmod","CUP_H_Ger_Beret_KSK_Red","rhs_googles_black"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G36K_KSK","CUP_30Rnd_556x45_G36",["","","CUP_optic_ACOG_TA01NSN_RMR_Black",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_MP7A2_folded","rhsusf_mag_40Rnd_46x30_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",1],["PRIMARY MAG",11]]],
	["<BACKPACK ITEMS >> ",[["CUP_40Rnd_46x30_MP7",5],["CUP_HandGrenade_M67",3],["SmokeShellBlue",11],["PRIMARY MAG",5]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_fjb_12_ftl = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_7","CUP_V_B_GER_Armatus_Fleck","CUP_B_GER_Medic_Flecktarn","CUP_H_Ger_Beret_KSK_Red","rhsusf_shemagh_grn"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G36K_KSK","CUP_30Rnd_556x45_G36",["","","CUP_optic_ACOG_TA01NSN_RMR_Black",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_MP7A2_folded","rhsusf_mag_40Rnd_46x30_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",1],["PRIMARY MAG",11]]],
	["<BACKPACK ITEMS >> ",[["CUP_40Rnd_46x30_MP7",5],["CUP_HandGrenade_M67",3],["SmokeShellBlue",11],["PRIMARY MAG",5]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_fjb_12_atgm_crew = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_7","CUP_V_B_GER_Armatus_Fleck","","CUP_H_Ger_Beret_KSK_Red","rhs_facewear_6m2_1"],
	["<PRIMARY WEAPON >>  ","CUP_smg_MP7_woodland","CUP_40Rnd_46x30_MP7",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_MP7A2_folded","rhsusf_mag_40Rnd_46x30_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",10]]],
	["<BACKPACK ITEMS >> ",[]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_crewman = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Fleck_Overalls_Tank","CUP_V_B_JPC_Fleck_Light","","cwr3_b_headgear_cvc",""],
	["<PRIMARY WEAPON >>  ","CUP_smg_MP7_woodland","CUP_40Rnd_46x30_MP7",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_MP7A2_folded","rhsusf_mag_40Rnd_46x30_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",10]]],
	["<BACKPACK ITEMS >> ",[]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

//Fernspaher

kit_ger_fernspaher_ftl = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_7","CUP_V_B_GER_Armatus_Fleck","CUP_B_GER_Pack_Flecktarn","CUP_H_Ger_Boonie_Flecktarn","CUP_G_Scarf_Face_White"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_HK416_M203_Black","1Rnd_HE_Grenade_shell",["CUP_muzzle_snds_SCAR_L","","optic_Yorris",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_MP7A2_folded","rhsusf_mag_40Rnd_46x30_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_30Rnd_556x45_M855_PMAG",10],["SmokeShell",1]]],
	["<BACKPACK ITEMS >> ",[["CUP_1Rnd_StarCluster_Green_M203",2],["CUP_1Rnd_StarCluster_Red_M203",2],["CUP_1Rnd_SmokeYellow_M203",2],["CUP_1Rnd_SmokeRed_M203",2],["CUP_1Rnd_SmokeGreen_M203",2],["PRIMARY MAG",15],["CUP_HandGrenade_M67",5]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_fernspaher_mm = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_7","CUP_V_B_GER_Armatus_Fleck","CUP_B_GER_Pack_Flecktarn","CUP_H_Ger_Boonie_Flecktarn","CUP_G_Scarf_Face_White"],
	["<PRIMARY WEAPON >>  ","hlc_rifle_psg1","hlc_20rnd_762x51_barrier_G3",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_MP7A2_folded","rhsusf_mag_40Rnd_46x30_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_20Rnd_46x30_MP7",5],["rhs_mag_m662_red",1],["rhs_mag_m713_Red",1],["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[["rhs_mag_m662_red",5],["rhs_mag_m713_Red",5],["1Rnd_SmokePurple_Grenade_shell",1],["1Rnd_SmokeOrange_Grenade_shell",1],["1Rnd_SmokeGreen_Grenade_shell",1],["1Rnd_SmokeBlue_Grenade_shell",1],["1Rnd_Smoke_Grenade_shell",1],["1Rnd_SmokeYellow_Grenade_shell",1],["1Rnd_HE_Grenade_shell",10],["PRIMARY MAG",11]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

//Pilots and misc

kit_ger_heli_pilot = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Fleck_Overalls_Tank","CUP_V_B_LBT_LBV_Black","B_AssaultPack_blk","cwr3_b_headgear_pilot","cwr3_b_facewear_balaclava_khaki"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G36C","CUP_30Rnd_556x45_G36",["","acc_pointer_IR","optic_ACO_grn",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_FlareGun","CUP_StarClusterYellow_265_M",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",1],["SmokeShell",1],["SmokeShellRed",2],["CUP_30Rnd_556x45_G36_wdl",5],["ACE_Chemlight_HiRed",2],["ACE_Chemlight_HiYellow",2],["SmokeShellYellow",2],["ACE_HandFlare_Red",2],["ACE_HandFlare_Yellow",2],["HANDGUN MAG",2],["CUP_StarClusterRed_265_M",2],["CUP_IllumFlareRed_265_M",1],["CUP_IllumFlareYellow_265_M",1]]],
	["<BACKPACK ITEMS >> ",[["CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36_wdl",15]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_arf = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_6","V_Safety_yellow_F","","CUP_H_PMC_EP_Headset","CUP_RUS_Balaclava_blk"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_rsp30_red","rhs_mag_rsp30_red",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_resting = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_8","","","CUP_H_Ger_Boonie2_Flecktarn","rhs_googles_black"],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];

//Jager

kit_ger_jager_RANDOM = [
"kit_ger_jager_at"
,"kit_ger_jager_mg"
,"kit_ger_jager_sttp"
,"kit_ger_jager_ftl"
,"kit_ger_jager_sl"
,"kit_ger_jager_ar"
,"kit_ger_jager_snp"
,"kit_ger_jager_aux"
,"kit_ger_jager_mm"
];

kit_ger_jager_at = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_6","CUP_V_B_GER_Tactical_Fleck","CUP_B_GER_Pack_Flecktarn",JAGER_HELMETS,JAGER_MASKS],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G36A_RIS","CUP_30Rnd_556x45_G36",["ACE_muzzle_mzls_L","","CUP_optic_LeupoldMk4_CQ_T",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_PzF3_Loaded","CUP_PTF3IT_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","WBK_survival_weapon_4","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",10]]],
	["<BACKPACK ITEMS >> ",[["CUP_30Rnd_TE1_Green_Tracer_556x45_G36_hex",15]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_jager_mg = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_6","CUP_V_B_GER_Tactical_Fleck","CUP_B_GER_Pack_Flecktarn",JAGER_HELMETS,JAGER_MASKS],
	["<PRIMARY WEAPON >>  ","CUP_lmg_MG3_rail","CUP_120Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",["","","hlc_optic_ZF95Base",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","WBK_survival_weapon_4","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[["CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",2]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_jager_mm = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_6","CUP_V_B_GER_Tactical_Fleck","CUP_B_GER_Pack_Flecktarn","CUP_H_Ger_Beret_INF_Grn","G_Bandanna_blk"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G3A3_modern_ris","ACE_10Rnd_762x51_Mk319_Mod_0_Mag",["","","CUP_optic_LeupoldMk4","CUP_bipod_G3SG1"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","WBK_survival_weapon_4","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["ACE_10Rnd_762x51_M118LR_Mag",15]]],
	["<BACKPACK ITEMS >> ",[["ACE_Canteen",10],["HandGrenade",2],["CUP_20Rnd_TE1_Green_Tracer_762x51_G3",5]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_jager_sttp = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_6","CUP_V_B_GER_Tactical_Fleck","CUP_B_GER_Pack_Flecktarn",JAGER_HELMETS,JAGER_MASKS],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G36CA3_wdl","CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36_camo",["","","rhsusf_acc_ACOG_USMC",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","WBK_survival_weapon_4","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",12]]],
	["<BACKPACK ITEMS >> ",[["CUP_HandGrenade_M67",5],["rhs_mag_an_m8hc",3],["PRIMARY MAG",5]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_jager_ftl = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_6","CUP_V_B_GER_Tactical_Fleck","CUP_B_GER_Pack_Flecktarn",JAGER_HELMETS,JAGER_MASKS],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G36A3","CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36_camo",["","","rhsusf_acc_ACOG_USMC",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","WBK_survival_weapon_4","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",12]]],
	["<BACKPACK ITEMS >> ",[["CUP_30Rnd_556x45_G36",10],["MiniGrenade",2],["SmokeShellBlue",1],["SmokeShellGreen",1],["SmokeShellOrange",1],["SmokeShellPurple",1],["SmokeShellRed",1],["SmokeShellYellow",1]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_jager_sl = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_6","CUP_V_B_GER_Tactical_Fleck","tf_rt1523g_big_bwmod",JAGER_HELMETS,JAGER_MASKS],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G36A3","CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36_camo",["","","rhsusf_acc_ACOG_USMC",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","WBK_survival_weapon_4","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",12]]],
	["<BACKPACK ITEMS >> ",[["CUP_30Rnd_556x45_G36",10],["MiniGrenade",2],["SmokeShellBlue",1],["SmokeShellGreen",1],["SmokeShellOrange",1],["SmokeShellPurple",1],["SmokeShellRed",1],["SmokeShellYellow",1]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_jager_ar = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_6","CUP_V_B_GER_Tactical_Fleck","CUP_B_GER_Pack_Flecktarn",JAGER_HELMETS,JAGER_MASKS],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G36A3","CUP_100Rnd_556x45_BetaCMag",["","","rhsusf_acc_ACOG_USMC",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","WBK_survival_weapon_4","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag",5]]],
	["<BACKPACK ITEMS >> ",[["CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag",6],["HandGrenade",2]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_jager_snp = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_6","CUP_V_B_GER_Tactical_Fleck","CUP_B_GER_Pack_Flecktarn",JAGER_HELMETS,JAGER_MASKS],
	["<PRIMARY WEAPON >>  ","CUP_srifle_G22_wdl","CUP_5Rnd_762x67_G22",["","","CUP_optic_LeupoldMk4_10x40_LRT_Woodland_pip",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","WBK_survival_weapon_4","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",11]]],
	["<BACKPACK ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",10]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_jager_aux = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_6","CUP_V_B_GER_Tactical_Fleck","CUP_B_GER_Pack_Flecktarn",JAGER_HELMETS,JAGER_MASKS],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G36A_RIS","CUP_30Rnd_556x45_G36",["ACE_muzzle_mzls_L","","CUP_optic_LeupoldMk4_CQ_T",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","WBK_survival_weapon_4","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",10]]],
	["<BACKPACK ITEMS >> ",[["CUP_30Rnd_TE1_Green_Tracer_556x45_G36_hex",15],["CUP_1200Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",2]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

//GSG-9

kit_ger_gsg9_RANDOM = [
"kit_ger_gsg9_r"
,"kit_ger_gsg9_r2"
,"kit_ger_gsg9_ar"
,"kit_ger_gsg9_sttp"
,"kit_ger_gsg9_shg"
,"kit_ger_gsg9_snp"
,"kit_ger_gsg9_mm"
,"kit_ger_gsg9_sptr"
,"kit_ger_gsg9_at"
,"kit_ger_gsg9_gr"
,"kit_ger_gsg9_aa"
,"kit_ger_gsg9_shb"
];

kit_ger_gsg9_r = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_2","CUP_V_B_LBT_LBV_Black","","cwr3_b_headgear_protec_full_goggles","cwr3_b_facewear_balaclava_khaki"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G36K_KSK","CUP_30Rnd_556x45_G36",["","acc_pointer_IR","CUP_optic_Elcan_SpecterDR_black_PIP",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_P07_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_30Rnd_TE1_Red_Tracer_556x45_G36",10],["rhs_mag_mk3a2",2],["HANDGUN MAG",3]]],
	["<BACKPACK ITEMS >> ",[]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_gsg9_r2 = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_2","CUP_V_B_LBT_LBV_Black","","CUP_H_SPH4_green","cwr3_b_facewear_balaclava_black"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_HK416_CQB_Black","CUP_30Rnd_556x45_Emag",["","","HLC_optic_DocterR",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_MP7A2_folded","rhsusf_mag_40Rnd_46x30_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",12],["CUP_HandGrenade_M67",2],["ACE_M84",1]]],
	["<BACKPACK ITEMS >> ",[]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];
kit_ger_gsg9_ar = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_2","CUP_V_B_LBT_LBV_Black","","cwr3_b_headgear_protec_half_headset","cwr3_b_facewear_balaclava_black"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G3A3_ris_vfg_black","hlc_50Rnd_762x51_B_G3",["","acc_pointer_IR","CUP_optic_Elcan_SpecterDR_black","CUP_bipod_VLTOR_Modpod_black"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_P07_F","30Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["hlc_50rnd_762x51_MDIM_G3",2],["HANDGUN MAG",2],["16Rnd_9x21_Mag",1]]],
	["<BACKPACK ITEMS >> ",[]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_gsg9_sttp = [	
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_2","CUP_V_B_LBT_LBV_Black","","CUP_H_SPH4_green","cwr3_b_facewear_balaclava_black"],
	["<PRIMARY WEAPON >>  ","CUP_smg_MP5A5_Rail_AFG","CUP_30Rnd_9x19_MP5",["","acc_pointer_IR","rhsusf_acc_ACOG_USMC",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_P07_F","30Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",10],["30Rnd_9x21_Mag_SMG_02",2]]],
	["<BACKPACK ITEMS >> ",[["CUP_HandGrenade_M67",2],["MiniGrenade",2],["rhs_mag_mk84",2],["ACE_CTS9",2],["rhs_mag_an_m8hc",3]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_gsg9_shg = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_2","CUP_V_B_LBT_LBV_Black","","CUP_H_SPH4_green","G_Balaclava_blk"],
	["<PRIMARY WEAPON >>  ","CUP_smg_BallisticShield_MP7","CUP_40Rnd_46x30_MP7",["","acc_pointer_IR","","CUP_decal_BallisticShield_Polizei_Yellow_wron"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_P07_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_mk3a2",2],["HANDGUN MAG",3],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_gsg9_snp = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_2","CUP_V_B_LBT_LBV_Black","TRYK_B_Belt_BLK","","cwr3_b_facewear_balaclava_khaki"],
	["<PRIMARY WEAPON >>  ","hlc_rifle_psg1A1","hlc_20rnd_762x51_b_G3",["","","hlc_optic_LeupoldM3A_G3","HLC_bipod_UTGShooters"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_MP7A2_folded","rhsusf_mag_40Rnd_46x30_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_20Rnd_762x51_G3",10]]],
	["<BACKPACK ITEMS >> ",[["CUP_40Rnd_46x30_MP7",8]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_gsg9_mm = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_2","CUP_V_B_LBT_LBV_Black","TRYK_B_Kitbag_blk","cwr3_b_headgear_protec_half_plain","G_Balaclava_lowprofile"],
	["<PRIMARY WEAPON >>  ","hlc_rifle_g3sg1ris","hlc_20rnd_762x51_b_G3",["","","hlc_optic_LeupoldM3A",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhsusf_weap_MP7A2_folded","rhsusf_mag_40Rnd_46x30_FMJ",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["ACE_10Rnd_762x51_Mk316_Mod_0_Mag",20]]],
	["<BACKPACK ITEMS >> ",[["rhsusf_mag_40Rnd_46x30_AP",10]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_gsg9_sptr = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_2","CUP_V_B_LBT_LBV_Black","","CUP_H_SPH4_green","cwr3_b_facewear_balaclava_black"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_HK416_Black","CUP_30Rnd_556x45_Emag",["","","hlc_optic_LeupoldM3A",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_FlareGun","CUP_FlareWhite_265_M",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_30Rnd_556x45_M855_PMAG",10],["CUP_IllumFlareWhite_265_M",6]]],
	["<BACKPACK ITEMS >> ",[["CUP_HandGrenade_M67",3]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_gsg9_gr = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_2","CUP_V_B_LBT_LBV_Black","TRYK_B_Kitbag_blk","cwr3_b_headgear_pilot","cwr3_b_facewear_balaclava_black"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_HK416_CQB_AG36","rhs_mag_30Rnd_556x45_M855_PMAG",["","","hlc_optic_HensoldtZO_lo_Docter",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_P07_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",10],["HANDGUN MAG",4]]],
	["<BACKPACK ITEMS >> ",[["1Rnd_HE_Grenade_shell",24]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_gsg9_ftl = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_2","CUP_V_B_LBT_LBV_Black","TRYK_B_Belt_BLK","cwr3_b_headgear_protec_full","G_Balaclava_blk"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_HK416_CQB_AG36","rhs_mag_30Rnd_556x45_M855_PMAG",["","","hlc_optic_HensoldtZO_lo_Docter",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_P07_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",10],["HANDGUN MAG",4]]],
	["<BACKPACK ITEMS >> ",[["CUP_1Rnd_HE_M203",10],["CUP_1Rnd_StarFlare_Red_M203",2],["CUP_FlareRed_M203",2],["CUP_1Rnd_SmokeRed_M203",2],["HANDGUN MAG",2],["CUP_FlareYellow_M203",1]]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_gsg9_at = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_2","CUP_V_B_LBT_LBV_Black","","cwr3_b_headgear_protec_full_plain","cwr3_b_facewear_balaclava_khaki"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G36K_KSK","CUP_30Rnd_556x45_G36",["","acc_pointer_IR","CUP_optic_Elcan_SpecterDR_black",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_HCPF3_Loaded","CUP_PTF3IT_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_P07_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_30Rnd_TE1_Red_Tracer_556x45_G36",10],["rhs_mag_mk3a2",2],["HANDGUN MAG",3]]],
	["<BACKPACK ITEMS >> ",[]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];

kit_ger_gsg9_aa = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_2","CUP_V_B_LBT_LBV_Black","","cwr3_b_headgear_protec_full_goggles","cwr3_b_facewear_balaclava_khaki"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G36K_KSK","CUP_30Rnd_556x45_G36",["","acc_pointer_IR","CUP_optic_Elcan_SpecterDR_black_PIP",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_FIM92Stinger_Loaded","CUP_Stinger_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_P07_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_30Rnd_TE1_Red_Tracer_556x45_G36",10],["rhs_mag_mk3a2",2],["HANDGUN MAG",3]]],
	["<BACKPACK ITEMS >> ",[]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];


kit_ger_gsg9_shb = [
	["<EQUIPEMENT >>  ","CUP_U_B_GER_Flecktarn_2","CUP_V_B_LBT_LBV_Black","","CUP_H_SPH4_green","cwr3_b_facewear_balaclava_black"],
	["<PRIMARY WEAPON >>  ","CUP_smg_BallisticShield_MP7","CUP_40Rnd_46x30_MP7",["","acc_pointer_IR","","CUP_decal_BallisticShield_Polizei_Yellow_wron"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","hgun_P07_F","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_mk3a2",2],["HANDGUN MAG",3],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[]]
	,["<IDENTITY >>", ["WhiteHead_27","LivonianHead_2","GreekHead_A3_05","WhiteHead_18","GreekHead_A3_06","usm_WhiteHead_06","GreekHead_A3_08","cwr3_face_nichols","usm_WhiteHead_14","WhiteHead_15"], "ace_novoice", ""]
];





//civilian
kit_pol_civ = [
	["<EQUIPEMENT >>  ",["CUP_U_C_Woodlander_04","CUP_U_C_Villager_01","CUP_U_C_Worker_03","CUP_U_C_Worker_02","CUP_U_C_Worker_01","U_C_Poor_1","TRYK_U_denim_jersey_blk","TRYK_shirts_DENIM_WHB_Sleeve","TRYK_shirts_DENIM_WH_Sleeve","TRYK_shirts_DENIM_RED2_Sleeve","TRYK_shirts_DENIM_R_Sleeve","TRYK_shirts_DENIM_BWH_Sleeve","TRYK_shirts_DENIM_BL_Sleeve","TRYK_shirts_DENIM_BK_Sleeve","TRYK_shirts_DENIM_ylb_Sleeve","TRYK_shirts_DENIM_ylb","TRYK_shirts_DENIM_WHB","TRYK_shirts_DENIM_WH","TRYK_shirts_DENIM_RED2","TRYK_shirts_DENIM_R","TRYK_shirts_DENIM_BWH","TRYK_shirts_DENIM_BL","TRYK_shirts_DENIM_BK","CUP_U_C_Tracksuit_03","CUP_U_C_Tracksuit_04","CUP_U_C_Rocker_01"],"","",["H_Cap_blk","H_Cap_blu","cwr3_i_headgear_beanie_black",""],""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",[]],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
	,["<IDENTITY >>", ["GreekHead_A3_02","WhiteHead_05","GreekHead_A3_07","WhiteHead_04","cwr3_face_armstrong","WhiteHead_25","WhiteHead_07","GreekHead_A3_06"], "ace_novoice", ""]

];

//Italy
kit_ita_nocs_snp = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_gloves_OD","V_BandollierB_oli","","TRYK_H_ghillie_over_green","CUP_RUS_Balaclava_blk"],
	["<PRIMARY WEAPON >>  ","CUP_srifle_AWM_wdl","CUP_5Rnd_86x70_L115A1",["CUP_muzzle_snds_AWM","","CUP_optic_LeupoldMk4_25x50_LRT_WOODLAND_pip","dzn_tripod_rifle_od"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","WBK_survival_weapon_4","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["MiniGrenade",1]]],
	["<BACKPACK ITEMS >> ",[]]
	,["<IDENTITY >>", ["GreekHead_A3_13","GreekHead_A3_01","GreekHead_A3_05","GreekHead_A3_11","GreekHead_A3_12","TanoanHead_A3_05", "WhiteHead_19","cwr3_face_fia_leader"], ["male01fre","male02fre","male03fre"], ""]
];

kit_ita_nocs_sptr = [
	["<EQUIPEMENT >>  ","CUP_U_B_BDUv2_gloves_OD","V_BandollierB_rgr","","TRYK_H_ghillie_over_green","CUP_RUS_Balaclava_blk"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_G36A3_wdl","CUP_30Rnd_556x45_G36",["CUP_muzzle_snds_M16_camo","","CUP_optic_HensoldtZO_low_od","HLC_Panel_Under_4xXTME_RG"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","WBK_survival_weapon_4","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["MiniGrenade",1],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[]]
	,["<IDENTITY >>", ["GreekHead_A3_13","GreekHead_A3_01","GreekHead_A3_05","GreekHead_A3_11","GreekHead_A3_12","TanoanHead_A3_05", "WhiteHead_19","cwr3_face_fia_leader"], ["male01fre","male02fre","male03fre"], ""]
];


//Vehicles
cargo_kit_brdm_2 = [
	[["CUP_launch_Igla_Loaded",1],["Shovel_Russian",3],["CUP_launch_RPG26_Loaded",1]],
	[["CUP_PipeBomb_M",3],["rhs_45Rnd_545X39_AK_Green",3],["rhs_mag_rgd5",16],["rhs_45Rnd_545X39_7N10_AK",10],["rhs_rpg7_PG7VL_mag",1],["rhs_rpg7_OG7V_mag",2],["rhs_rpg7_PG7V_mag",2],["CUP_8Rnd_9x18_MakarovSD_M",13],["rhs_10Rnd_762x54mmR_7N1",35],["CUP_IlumFlareGreen_GP25_M",1],["CUP_1Rnd_SmokeGreen_GP25_M",2],["CUP_FlareGreen_GP25_M",2],["CUP_1Rnd_HE_GP25_M",25],["rhs_30Rnd_545x39_7N10_plum_AK",17],["CUP_30Rnd_545x39_AK74_plum_M",2],["rhs_30Rnd_545x39_7N6M_plum_AK",10],["rhs_30Rnd_545x39_7N22_plum_AK",15],["rhs_30Rnd_545x39_AK_green",12],["rhs_mag_rdg2_black",2],["rhs_mag_rdg2_white",2],["rhs_mag_nspn_red",2],["rhs_mag_nspn_yellow",2],["rhs_mag_nspn_green",2]],
	[["ACE_WaterBottle",15],["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2]],
	[["RHS_Kornet_Tripod_Bag",1],["RHS_Kornet_Gun_Bag",1]]
];

cargo_kit_brm = [
	[["Shovel_Russian",4],["CUP_launch_RPG26_Loaded",1],["CUP_launch_Metis",1]],
	[["CUP_PipeBomb_M",3],["rhs_45Rnd_545X39_AK_Green",3],["rhs_mag_rgd5",16],["rhs_45Rnd_545X39_7N10_AK",10],["rhs_rpg7_PG7VL_mag",1],["rhs_rpg7_OG7V_mag",2],["rhs_rpg7_PG7V_mag",2],["CUP_8Rnd_9x18_MakarovSD_M",13],["rhs_10Rnd_762x54mmR_7N1",35],["CUP_IlumFlareGreen_GP25_M",1],["CUP_1Rnd_SmokeGreen_GP25_M",2],["CUP_FlareGreen_GP25_M",2],["CUP_1Rnd_HE_GP25_M",25],["rhs_30Rnd_545x39_7N10_plum_AK",17],["CUP_30Rnd_545x39_AK74_plum_M",2],["rhs_30Rnd_545x39_7N6M_plum_AK",10],["rhs_30Rnd_545x39_7N22_plum_AK",15],["rhs_30Rnd_545x39_AK_green",12],["rhs_mag_rdg2_black",2],["rhs_mag_rdg2_white",2],["rhs_mag_nspn_red",2],["rhs_mag_nspn_yellow",2],["rhs_mag_nspn_green",2],["CUP_AT13_M",2]],
	[["ACE_WaterBottle",18],["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2]],
	[["CUP_B_AGS30_Gun_Bag",1],["CUP_B_AGS30_Tripod_Bag",1],["rhs_tortila_olive",6]]
];
