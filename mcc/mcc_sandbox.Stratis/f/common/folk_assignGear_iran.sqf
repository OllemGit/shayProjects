// F3 - Folk Assign Gear Script - Iran
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co		- commander
//		dc 		- deputy commander
//		m 		- medic
//		ftl		- fire team leader
//		ar 		- automatic rifleman
//		aar		- assistant automatic rifleman
//		rat		- rifleman (AT)
//		mmgg		- medium mg gunner
//		mmgag		- medium mg assistant
//		matg		- medium AT gunner
//		matag		- medium AT assistant
//		mtrg		- mortar gunner (deployable)
//		mtrag		- mortar assistant (deployable)
//		p		- air vehicle pilots
//		eng		- engineers
//		div    		- divers
//
//		r 		- rifleman
//		car		- carabineer
//		smg		- submachinegunner
//		gren		- grenadier
//
//		v_car		- car/4x4
//		v_tr		- truck
//		v_ifv		- ifv
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES


// Attachments 
// nil = no change
// [] = remove all
// ["acc_pointer_IR","optic_ACO_grn"] = remove all, add items.

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = "arifle_Katiba_F"; 
_riflemag = "30Rnd_65x39_caseless_green";			
_riflemag_tr = "30Rnd_65x39_caseless_green_mag_Tracer";		
_rifle_attach = ["acc_flashlight","optic_ACO_grn"];

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = "arifle_Katiba_C_F"; 
_carbinemag = "30Rnd_65x39_caseless_green"; 
_carbinemag_tr = "30Rnd_65x39_caseless_green_mag_Tracer";	
_carbine_attach = ["acc_flashlight","optic_ACO_grn"];

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "SMG_01_F"; 
_smgmag = "30Rnd_45ACP_Mag_SMG_01"; 
_smgmag_tr = "30Rnd_45ACP_Mag_SMG_01";			
_smg_attach = nil;

// Diver
_diverWep = "arifle_SDAR_F"; 
_diverMag1 = "30Rnd_556x45_Stanag"; 
_diverMag2 = "20Rnd_556x45_UW_mag";
_diverWep_attach = nil;

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = "arifle_Katiba_GL_F"; 
_glriflemag = "30Rnd_65x39_caseless_green";
_glriflemag_tr = "30Rnd_65x39_caseless_green_mag_Tracer"; 
_glmag = "1Rnd_HE_Grenade_shell";														
_glrifle_attach = ["acc_pointer_IR","optic_MRCO"];

// Smoke for FTLs, Squad Leaders, etc 
_glsmokewhite = "1Rnd_Smoke_Grenade_shell"; 
_glsmokegreen = "1Rnd_SmokeGreen_Grenade_shell"; 
_glsmokered = "1Rnd_SmokeRed_Grenade_shell";   

// Flares for FTLs, Squad Leaders, etc	
_glflarewhite = "3Rnd_UGL_FlareWhite_F"; 
_glflarered = "3Rnd_UGL_FlareRed_F"; 
_glflareyellow = "3Rnd_UGL_FlareYellow_F"; 
_glflaregreen = "3Rnd_UGL_FlareGreen_F";

// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)
_pistol = "hgun_Rook40_F";
_pistolmag = "16Rnd_9x21_Mag";	

// Grenades
_grenade = "HandGrenade"; 
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";	

// misc medical items.																			
_firstaid = "FirstAidKit";
_medkit = "Medikit";

// Backpacks
_bagmedium = "B_FieldPack_ocamo";			// used by most roles
_baglarge =  "B_Carryall_ocamo"; 			// used by medic and engineers
_bagmediumdiver =  "B_AssaultPack_blk";		// used by divers

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = "LMG_Mk200_F"; 
_ARmag = "200Rnd_65x39_cased_Box";
_ARmag_tr = "200Rnd_65x39_cased_Box_Tracer";																							
_AR_attach = ["acc_flashlight","optic_ACO_grn"];

// Medium MG
_MMG = "LMG_Zafir_F"; 
_MMGmag = "150Rnd_762x51_Box";
_MMGmag_tr = "150Rnd_762x51_Box_Tracer";																								
_MMG_attach = ["acc_pointer_IR","optic_Hamr"];

// Rifleman AT
_RAT = "launch_RPG32_F"; 
_RATmag = "RPG32_F";									

// Mortar
_MTR = "";
_MTRmount = "";

// Medium AT
_MAT = "launch_RPG32_F"; 
_MATmag1 = "RPG32_F"; 
_MATmag2 = "RPG32_F";	

// Medium AA
_MAA = "launch_RPG32_F"; 
_MAAmag1 = "RPG32_AA_F"; 	   

// Engineer items.
_ATmine = "ATMine_Range_Mag"; 
_satchel = "DemoCharge_Remote_Mag";																										
_APmine1 = "APERSTripMine_Wire_Mag"; 
_APmine2 = "ClaymoreDirectionalMine_Remote_Mag";

// =============================================== SF====================================
// Rifle with GL and HE grenades (CO, DC, FTLs)
_SFglrifle = "arifle_Katiba_GL_ARCO_pointer_F"; 
_SFglriflemag = "30Rnd_65x39_caseless_green";
_SFglriflemag_tr = "30Rnd_65x39_caseless_green_mag_Tracer"; 
_SFglmag = "1Rnd_HE_Grenade_shell";														
_SFglrifle_attach = ["acc_pointer_IR","optic_Hamr","muzzle_snds_H"];

// Medium MG
_SFMMG = "LMG_Mk200_pointer_F"; 
_SFMMGmag = "200Rnd_65x39_cased_Box";
_SFMMGmag_tr = "200Rnd_65x39_cased_Box_Tracer";																								
_SFMMG_attach = ["acc_pointer_IR","optic_MRCO","muzzle_snds_H_MG"];

// Marksman
_SFMrkrifle = "srifle_EBR_F"; 
_SFMrkriflemag = "20Rnd_762x51_Mag";			
_SFMarkrifle_attach = ["acc_pointer_IR","optic_Arco","muzzle_snds_B"];

// Sniper
_sniperRifle = "srifle_GM6_F"; 
_sniperRiflemag = "5Rnd_127x108_Mag";			
_sniperRifle_attach = ["optic_SOS"];

// Rifle 
_SFrifle = "arifle_Katiba_C_ACO_pointer_F"; 
_SFriflemag = "30Rnd_65x39_caseless_green";
_SFriflemag_tr = "30Rnd_65x39_caseless_green_mag_Tracer"; 				
_SFrifle_attach = ["acc_pointer_IR","optic_Hamr","muzzle_snds_H"];

//SF-AT
_SFAT = "launch_RPG32_F"; 
_SFATmag = "RPG32_F";	
// ====================================================================================

// CLOTHES AND UNIFORMS

// Base
_baseUniform = "U_O_CombatUniform_ocamo";
_lightUniform = "U_O_SpecopsUniform_ocamo";
_baseHelmet = "H_HelmetO_ocamo";
_lightHelmet = "H_HelmetSpecO_blk";
_lightRig = "V_HarnessO_brn"; // co,dc,ftl,medic,rat,matag,mmgag
_heavyRig = "V_HarnessOGL_brn"; // ar,eng

//Sf - GhillieSuit
_sfUniform = "U_O_GhillieSuit";
_sfHelmet = "";
_sfRig = "V_HarnessOGL_brn";

// Diver
_diverUniform =  "U_O_Wetsuit";
_diverHelmet = "";
_diverRig = "V_RebreatherIR";

// Pilot
_pilotUniform = "U_O_PilotCoveralls";
_pilotHelmet = "H_PilotHelmetHeli_O";
_pilotRig = "V_TacVest_brn";

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;					// expecting name of unit; originally passed by using 'this' in unit init

// ====================================================================================

// HANDLE CLOTHES
// Handle clothes and helmets and such using the include file called next.

#include "f_assignGear_clothes.sqf";

// ====================================================================================

// PREPARE UNIT FOR GEAR ADDITION
// The following code removes all existing weapons and backpacks

removeBackpack _unit;
removeallweapons _unit;

// We add a single first aid kit (FAK)

_unit addItem _firstaid;

// The following code removes any pre-added NVGs

if("NVGoggles" in (assignedItems player)) then
{
_unit unassignItem "NVGoggles";
_unit removeItem "NVGoggles";
};

_unit addItem "NVGoggles";
_unit assignItem "NVGoggles";					// add universal NVG for this faction

//removeAllItems _unit;						// remove default items: map, compass, watch, radio (and GPS for team/squad leaders)
//unit addItem "ItemGPS"; 					// add gps to this faction
//_unit assignItem "ItemGPS";		
//_unit addweapon "ItemMap";					
//_unit addweapon "ItemCompass";
//_unit addweapon "ItemRadio";
//_unit addweapon "ItemWatch";

// ====================================================================================

// DEFINE BACKPACK CONTENTS
// The following blocks of code define different backpack loadouts. These are then
// called from the role loadouts.

_backpack = {
	_typeofBackPack = _this select 0;
	switch (_typeofBackPack) do
	{
		// BACKPACK: MEDIC
		case "m":
		{
			_unit addBackpack _baglarge;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 4];
			(unitBackpack _unit) addItemCargoGlobal [_medkit,1];
			(unitBackpack _unit) addItemCargoGlobal [_firstaid,5];
		};
		
		// BACKPACK: GRENADIER (CO/DC/SL/FTL/G)
		case "g":
		{
			// BACKPACK: LIGHT
			if (paramsArray select 1 == 1) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag_tr, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_glmag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 1];
			};
			// BACKPACK: HEAVY
			if (paramsArray select 1 == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag, 8];
				(unitBackpack _unit) addMagazineCargoGlobal [_glriflemag_tr, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_glmag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 2];
			};
		};

		// BACKPACK: AR TEAM (AR/AAR)
		case "ar":
		{
			// BACKPACK: LIGHT
			if (paramsArray select 1 == 1) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 2];
			};
			// BACKPACK: HEAVY
			if (paramsArray select 1 == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag_tr, 1];
			};
		};
		
		// BACKPACK: AAR TEAM (AR/AAR)
		case "aar":
		{
			// BACKPACK: LIGHT
			if (paramsArray select 1 == 1) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 1];
			};
			// BACKPACK: HEAVY
			if (paramsArray select 1 == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 2];
			};
		};

		// BACKPACK: RIFLEMAN (R)
		case "r":
		{
			// BACKPACK: LIGHT
			if (paramsArray select 1 == 1) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 1];
			};
			// BACKPACK: HEAVY
			if (paramsArray select 1 == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 8];
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_ARmag, 2];
			};
		};

		// BACKPACK: MMG TEAM (MMGG/MMGAG)
		case "mmg":
		{
			// BACKPACK: LIGHT
			if (paramsArray select 1 == 1) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 1];
			};
			// BACKPACK: HEAVY
			if (paramsArray select 1 == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 1];
			};
		};
		
		// BACKPACK: MMG TEAM (MMGG/MMGAG)
		case "mmgag":
		{
			// BACKPACK: LIGHT
			if (paramsArray select 1 == 1) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 1];
			};
			// BACKPACK: HEAVY
			if (paramsArray select 1 == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_riflemag_tr, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_MMGmag_tr, 1];
			};
		};

		// BACKPACK: MAT TEAM (MATG/MATAG)
		case "mat":
		{
			// BACKPACK: LIGHT
			if (paramsArray select 1 == 1) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
			};
			// BACKPACK: HEAVY
			if (paramsArray select 1 == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_MATmag1, 2];
			};
		};

				// BACKPACK: MAA TEAM (MAAG/MAAAG)
		case "maa":
		{
			// BACKPACK: LIGHT
			if (paramsArray select 1 == 1) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_MAAmag1, 1];
			};
			// BACKPACK: HEAVY
			if (paramsArray select 1 == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				//(unitBackpack _unit) addMagazineCargoGlobal [_MATmag2, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_MAAmag1, 1];				
			};
		};
		
		// BACKPACK: ENGINEER
		case "eng":
		{
			_unit addBackpack _baglarge;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
			(unitBackpack _unit) addMagazineCargoGlobal [_satchel, 2];
			(unitBackpack _unit) addMagazineCargoGlobal [_mine, 1];
			(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];	
			(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
		};

		// BACKPACK: CARABINEER (CAR/RAT)
		case "car":
		{
			// BACKPACK: LIGHT
			if (paramsArray select 1 == 1) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_RATmag, 1];
			};
			// BACKPACK: HEAVY
			if (paramsArray select 1 == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag, 8];
				(unitBackpack _unit) addMagazineCargoGlobal [_carbinemag_tr, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_RATmag, 2];
			};
		};

		// BACKPACK: SUBMACHINEGUNNER (SMG)
		case "smg":
		{
			// BACKPACK: LIGHT
			if (paramsArray select 1 == 1) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 6];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
			};
			// BACKPACK: HEAVY
			if (paramsArray select 1 == 2) then {
				_unit addBackpack _bagmedium;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_smgmag, 12];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
		};

		// BACKPACK: DIVER (DIV)
		case "div":
		{
			// BACKPACK: LIGHT
			if (paramsArray select 1 == 1) then {
				_unit addBackpack _bagmediumdiver;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_diverMag1, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_diverMag2, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
			};
			// BACKPACK: HEAVY
			if (paramsArray select 1 == 2) then {
				_unit addBackpack _bagmediumdiver;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_diverMag1, 8];
				(unitBackpack _unit) addMagazineCargoGlobal [_diverMag2, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
		};
		
		//======================================= SF =======================================
		// BACKPACK: SF Marksman (DIV)
		case "smrk":
		{
		// BACKPACK: LIGHT
			if (paramsArray select 1 == 1) then {
				_unit addBackpack _bagmediumdiver;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_SFMrkriflemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
			};
			// BACKPACK: HEAVY
			if (paramsArray select 1 == 2) then {
				_unit addBackpack _bagmediumdiver;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_SFMrkriflemag, 8];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
		};
		
		// BACKPACK: SF GRENADIER (CO/DC/SL/FTL/G)
		case "sftl":
		{
			// BACKPACK: LIGHT
			if (paramsArray select 1 == 1) then {
				_unit addBackpack _bagmediumdiver;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_SFglriflemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_SFglriflemag_tr, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_glmag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
			};
			// BACKPACK: HEAVY
			if (paramsArray select 1 == 2) then {
				_unit addBackpack _bagmediumdiver;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_SFglriflemag, 8];
				(unitBackpack _unit) addMagazineCargoGlobal [_SFglriflemag_tr, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_glmag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_glsmokewhite, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 2];
			};
		};
		
		// BACKPACK: MMG TEAM (MMGG/MMGAG)
		case "smmg":
		{
			// BACKPACK: LIGHT
			if (paramsArray select 1 == 1) then {
				_unit addBackpack _bagmediumdiver;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_SFMMGmag_tr, 1];
			};
			// BACKPACK: HEAVY
			if (paramsArray select 1 == 2) then {
				_unit addBackpack _bagmediumdiver;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_SFMMGmag, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_SFMMGmag_tr, 1];
			};
		};
		// BACKPACK: SF RIFLEMAN (R)
		case "sr":
		{
			// BACKPACK: LIGHT
			if (paramsArray select 1 == 1) then {
				_unit addBackpack _bagmediumdiver;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_SFriflemag, 2];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_SFATmag, 1];
			};
			// BACKPACK: HEAVY
			if (paramsArray select 1 == 2) then {
				_unit addBackpack _bagmediumdiver;
				clearMagazineCargoGlobal (unitBackpack _unit);
				(unitBackpack _unit) addMagazineCargoGlobal [_SFriflemag, 4];
				(unitBackpack _unit) addMagazineCargoGlobal [_grenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_smokegrenade, 1];
				(unitBackpack _unit) addMagazineCargoGlobal [_SFATmag, 2];
			};
		};
		
		// BACKPACK: SF ENGINEER
		case "sexp":
		{
			_unit addBackpack _baglarge;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addItemCargoGlobal ["ToolKit",1];
			(unitBackpack _unit) addMagazineCargoGlobal [_satchel, 3];
		};
		
		// BACKPACK: SF MEDIC
		case "smed":
		{
			_unit addBackpack _bagmediumdiver;
			clearMagazineCargoGlobal (unitBackpack _unit);
			(unitBackpack _unit) addMagazineCargoGlobal [_SFriflemag, 4];
			(unitBackpack _unit) addItemCargoGlobal [_medkit,1];
			(unitBackpack _unit) addItemCargoGlobal [_firstaid,5];
		};
	};
};

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

// LOADOUT: COMMANDER
	case "co":
	{
		{_unit addmagazine _glriflemag} foreach [1,2,3,4,5,6,7];	//_COriflemag
		{_unit addmagazine _glriflemag_tr} foreach [1,2,3];		//_COriflemag
		{_unit addmagazine _glmag} foreach [1,2,3];
		{_unit addmagazine _glsmokewhite} foreach [1,2,3];
		_unit addweapon _glrifle;					//_COrifle
		{_unit addmagazine _pistolmag} foreach [1,2];
		_unit addweapon _pistol;		
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		{_unit addmagazine _smokegrenadegreen;} foreach [1];
		_unit addWeapon "Binocular";
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		["g"] call _backpack;
	};
  
// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
		{_unit addmagazine _glriflemag} foreach [1,2,3,4,5,6,7];	//_DCriflemag
		{_unit addmagazine _glriflemag_tr} foreach [1,2,3];
		{_unit addmagazine _glmag} foreach [1,2,3];
		{_unit addmagazine _glsmokewhite} foreach [1,2,3];
		_unit addweapon _glrifle;					//_DCrifle
		{_unit addmagazine _pistolmag} foreach [1,2];
		_unit addweapon _pistol;		
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		{_unit addmagazine _smokegrenadegreen;} foreach [1];
		_unit addWeapon "Binocular";
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		["g"] call _backpack;
	};  
	
// LOADOUT: MEDIC
	case "m":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];	
		_unit addweapon _carbine;
		{_unit addmagazine _smokegrenade;} foreach [1,2,3];
		["m"] call _backpack;
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		{_unit addmagazine _glriflemag} foreach [1,2,3,4,5,6,7];	//_FTLriflemag
		{_unit addmagazine _glriflemag_tr} foreach [1,2];
		{_unit addmagazine _glmag} foreach [1,2,3,4];
		{_unit addmagazine _glsmokewhite} foreach [1,2,3,4];
		_unit addweapon _glrifle;					//_FTLrifle		
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		{_unit addmagazine _smokegrenadegreen;} foreach [1];
		_unit addWeapon "Binocular";
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		["g"] call _backpack;
	};		


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		{_unit addmagazine _ARmag} foreach [1,2];
		{_unit addmagazine _ARmag_tr} foreach [1];
		_unit addweapon _AR;
		{_unit addmagazine _grenade} foreach [1];
		{_unit addmagazine _smokegrenade;} foreach [1];
		{_unit addmagazine _pistolmag} foreach [1,2,3,4];
		_unit addweapon _pistol;
		["ar"] call _backpack;
	};	
	
// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8];
		{_unit addmagazine _riflemag_tr} foreach [1,2];
		_unit addweapon _rifle;		
		{_unit addmagazine _grenade} foreach [1];
		{_unit addmagazine _smokegrenade;} foreach [1];
		["aar"] call _backpack;
	};				
	
// LOADOUT: RIFLEMAN (AT)	
	case "rat":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
		{_unit addmagazine _carbinemag_tr} foreach [1,2];
		_unit addweapon _carbine;
		{_unit addmagazine _RATmag} foreach [1];
		{_unit addmagazine _smokegrenade} foreach [1];		
		_unit addweapon _RAT;
		["car"] call _backpack;
	};		
	
// LOADOUT: MEDIUM MG GUNNER	
	case "mmgg":
	{
		{_unit addmagazine _MMGmag} foreach [1,2,3];
		{_unit addmagazine _MMGmag_tr} foreach [1];
		_unit addweapon _MMG;		
		{_unit addmagazine _pistolmag} foreach [1,2,3,4];
		_unit addweapon _pistol;
		["mmg"] call _backpack;
	};			

// LOADOUT: MEDIUM MG ASSISTANT GUNNER	
	case "mmgag":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6];
		_unit addweapon _rifle;
		_unit addWeapon "Binocular";
		{_unit addmagazine _grenade} foreach [1];
		{_unit addmagazine _smokegrenade;} foreach [1];
		{_unit addmagazine _riflemag} foreach [1,2];
		{_unit addmagazine _grenade} foreach [1];
		{_unit addmagazine _smokegrenade;} foreach [1];
		{_unit addmagazine _MMGmag} foreach [1,2,3,4];
		{_unit addmagazine _MMGmag_tr;} foreach [1,2,3];
		["mmgag"] call _backpack;
	};
	
// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
		{_unit addmagazine _carbinemag_tr} foreach [1,2];
		_unit addweapon _carbine;
		{_unit addmagazine _MATmag1} foreach [1,2];
		// {_unit addmagazine _MATmag2} foreach [1];
		_unit addweapon _MAT;
		["mat"] call _backpack;
	};	
	
// LOADOUT: MEDIUM AT ASSISTANT GUNNER	
	case "matag":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
		{_unit addmagazine _carbinemag_tr} foreach [1,2];
		_unit addweapon _rifle;
		_unit addWeapon "Binocular";
		{_unit addmagazine _smokegrenade;} foreach [1];		
		{_unit addmagazine _riflemag} foreach [1,2];
		{_unit addmagazine _grenade} foreach [1];
		{_unit addmagazine _smokegrenade;} foreach [1];
		{_unit addmagazine _MATmag1;} foreach [1,2];
		// {_unit addmagazine _MATmag2;} foreach [1];
		["mat"] call _backpack;
	};	

// LOADOUT: MEDIUM AA GUNNER
	case "maag":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7,8,9];
		{_unit addmagazine _carbinemag_tr} foreach [1,2,3,4];
		_unit addweapon _carbine;
		{_unit addmagazine _MAAmag1} foreach [1];
		// {_unit addmagazine _MATmag2} foreach [1];
		_unit addweapon _MAA;
		["maa"] call _backpack;
	};	
	
// LOADOUT: MEDIUM AA ASSISTANT GUNNER	
	case "maaag":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7,8,9];
		{_unit addmagazine _carbinemag_tr} foreach [1,2,3,4];
		_unit addweapon _rifle;
		_unit addWeapon "Binocular";
		{_unit addmagazine _smokegrenade;} foreach [1];		
		{_unit addmagazine _riflemag} foreach [1,2];
		{_unit addmagazine _grenade} foreach [1];
		{_unit addmagazine _smokegrenade;} foreach [1];
		{_unit addmagazine _MAAmag1;} foreach [1];
		// {_unit addmagazine _MATmag2;} foreach [1];
		["maa"] call _backpack;
	};
	
// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
		{_unit addmagazine _carbinemag_tr} foreach [1,2];
		_unit addweapon _carbine;
		{_unit addmagazine _smokegrenade;} foreach [1];	
		_unit addBackpack _MTR;
	};	
	
// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
		{_unit addmagazine _carbinemag_tr} foreach [1,2];
		_unit addweapon _carbine;
		{_unit addmagazine _smokegrenade;} foreach [1];	
		_unit addWeapon "Binocular";
		_unit addBackpack _MTRmount;
	};			
// LOADOUT: AIR VEHICLE PILOTS
	case "p":
	{
		{_unit addmagazine _smgmag} foreach [1,2,3,4];
		_unit addweapon _smg;
		{_unit addmagazine _smokegrenade} foreach [1,2];					
	};		
	
// LOADOUT: ENGINEER
	case "eng":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5];
		{_unit addmagazine _carbinemag_tr} foreach [1,2];
		_unit addweapon _carbine;
		{_unit addmagazine _smokegrenade} foreach [1];
		{_unit addmagazine _grenade} foreach [1];
		{_unit addmagazine _satchel} foreach [1,2];
		{_unit addmagazine _ATmine} foreach [1];
		{_unit addmagazine _APmine1} foreach [1,2,3];
		{_unit addmagazine _APmine2} foreach [1,2,3];
		["eng"] call _backpack;
	};	
		
// LOADOUT: RIFLEMAN
	case "r":
	{
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7,8];
		{_unit addmagazine _riflemag_tr} foreach [1,2];
		_unit addweapon _rifle;
		{_unit addmagazine _grenade} foreach [1,2,3];
		{_unit addmagazine _smokegrenade;} foreach [1,2,3];
		["r"] call _backpack;
	};

// LOADOUT: CARABINEER
	case "car":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7,8];
		{_unit addmagazine _carbinemag_tr} foreach [1,2];
		_unit addweapon _carbine;
		{_unit addmagazine _grenade} foreach [1,2,3];
		{_unit addmagazine _smokegrenade;} foreach [1,2,3];
		["car"] call _backpack;
	};
// LOADOUT: Diver
	case "div":
	{
		{_unit addmagazine _diverMag1} foreach [1,2,3,4,5];
		{_unit addmagazine _diverMag2} foreach [1,2,3,4];
		_unit addweapon _diverWep;
		{_unit addmagazine _grenade} foreach [1,2,3];
		{_unit addmagazine _smokegrenade;} foreach [1,2,3];
		["div"] call _backpack;
	};
// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		{_unit addmagazine _smgmag} foreach [1,2,3,4,5,6,7,8];
		_unit addweapon _smg;
		{_unit addmagazine _grenade} foreach [1,2,3];
		{_unit addmagazine _smokegrenade;} foreach [1,2,3];
		["smg"] call _backpack;
	};

// LOADOUT: GRENADIER
	case "gren":
	{
		{_unit addmagazine _glriflemag} foreach [1,2,3,4,5,6,7,8];
		{_unit addmagazine _glriflemag_tr} foreach [1,2,3];
		_unit addweapon _glrifle;
		{_unit addmagazine _glmag} foreach [1,2,3,4,5,6];
		{_unit addmagazine _glsmokewhite} foreach [1,2];
		{_unit addmagazine _grenade} foreach [1,2,3];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		["g"] call _backpack;
	};

//===================================SF===========================================
// LOADOUT: FIRE TEAM LEADER
	case "sftl":
	{
		{_unit addmagazine _SFglriflemag} foreach [1,2,3,4,5,6,7];	//_FTLriflemag
		{_unit addmagazine _SFglriflemag_tr} foreach [1,2];
		{_unit addmagazine _SFglmag} foreach [1,2,3,4];
		{_unit addmagazine _SFglsmokewhite} foreach [1,2,3,4];
		_unit addweapon _SFglrifle;					//_FTLrifle		
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		{_unit addmagazine _smokegrenadegreen;} foreach [1];
		_unit addWeapon "Rangefinder";
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		{_unit addmagazine _pistolmag} foreach [1,2];
		_unit addweapon _pistol;
		["sftl"] call _backpack;
	};	
	case "smmgg":
	{
		{_unit addmagazine _SFMMGmag} foreach [1,2,3,4];
		{_unit addmagazine _SFMMGmag_tr} foreach [1];
		_unit addweapon _SFMMG;		
		{_unit addmagazine _pistolmag} foreach [1,2,3,4];
		_unit addweapon _pistol;
		_unit addWeapon "Binocular";
		{_unit addmagazine _pistolmag} foreach [1,2];
		_unit addweapon _pistol;
		["smmg"] call _backpack;
	};
	case "smrk":
	{
		{_unit addmagazine _SFMrkriflemag} foreach [1,2,3,4,5,6,7,8,9];	
		_unit addweapon _SFMrkrifle;					//_FTLrifle		
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		{_unit addmagazine _smokegrenadegreen;} foreach [1];
		_unit addWeapon "Rangefinder";
		{_unit addmagazine _pistolmag} foreach [1,2];
		_unit addweapon _pistol;
		["smrk"] call _backpack;
	};
	
	// LOADOUT: SF JTAC_AT
	case "sr":
	{
		{_unit addmagazine _SFriflemag} foreach [1,2,3,4,5,6,7,8];
		{_unit addmagazine _SFriflemag_tr} foreach [1,2];
		_unit addweapon _SFrifle;
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		_unit addWeapon "Laserdesignator";
		{_unit addmagazine "Laserbatteries"} foreach [1,2];
		_unit addWeapon _SFAT;
		
		if (MCC_isMode) then {_unit addItem MCC_Console; _unit assignItem MCC_Console;} else {_unit addItem "ItemGPS"; _unit assignItem "ItemGPS";}; 
		["sr"] call _backpack;
	};
	
	// LOADOUT: SF Explosion
	case "sexp":
	{
		{_unit addmagazine _SFriflemag} foreach [1,2,3,4,5,6,7,8];
		{_unit addmagazine _SFriflemag_tr} foreach [1,2];
		_unit addweapon _SFrifle;
		{_unit addmagazine _grenade} foreach [1,2,3];
		{_unit addmagazine _smokegrenade;} foreach [1,2,3];
		_unit addWeapon "Binocular";
		{_unit addmagazine _pistolmag} foreach [1,2];
		_unit addweapon _pistol;
		["sexp"] call _backpack;
	};
	
	// LOADOUT: SF Medic
	case "smed":
	{
		{_unit addmagazine _SFriflemag} foreach [1,2,3,4,5,6,7,8];
		{_unit addmagazine _SFriflemag_tr} foreach [1,2];
		_unit addweapon _SFrifle;
		{_unit addmagazine _grenade} foreach [1,2,3];
		{_unit addmagazine _smokegrenade;} foreach [1,2,3];
		_unit addWeapon "Binocular";
		{_unit addmagazine _pistolmag} foreach [1,2];
		_unit addweapon _pistol;
		["smed"] call _backpack;
	};
//======================== Sniper team=================================================
	// LOADOUT: Sniper
	case "sn":
	{
		{_unit addmagazine _sniperRiflemag} foreach [1,2,3,4,5,6,7,8,9];	
		_unit addweapon _sniperRifle;						
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		{_unit addmagazine _smokegrenadegreen;} foreach [1];
		_unit addWeapon "Rangefinder";
		_unit addItem "ItemGPS";
		_unit assignItem "ItemGPS";
		{_unit addmagazine _pistolmag} foreach [1,2];
		_unit addweapon _pistol;
	};
	// LOADOUT: Spotter
	case "sp":
	{
		{_unit addmagazine _SFriflemag} foreach [1,2,3,4,5,6,7,8];
		{_unit addmagazine _SFriflemag_tr} foreach [1,2];
		_unit addweapon _SFrifle;
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		_unit addWeapon "Laserdesignator";
		{_unit addmagazine "Laserbatteries"} foreach [1,2];
		{_unit addmagazine _pistolmag} foreach [1,2];
		_unit addweapon _pistol;
	};


//======================== mortar team=================================================

	// LOADOUT: mortar team leader
	case "artl":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7,8,9,10,11,12];	
		_unit addweapon _carbine;
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		_unit addWeapon "Rangefinder";
		_unit addBackpack "B_Mortar_01_support_F";
	};
	
	// LOADOUT: mortar team ammoman
	case "arta":
	{
		{_unit addmagazine _carbinemag} foreach [1,2,3,4,5,6,7,8,9,10,11,12];	
		_unit addweapon _carbine;
		{_unit addmagazine _grenade} foreach [1,2];
		{_unit addmagazine _smokegrenade;} foreach [1,2];
		_unit addWeapon "Rangefinder";
		_unit addBackpack "B_Mortar_01_weapon_F";
	};
	
//================================================================================

// CARGO: CAR - room for 10 weapons and 50 cargo items
	case "v_car":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 2];
		_unit addMagazineCargoGlobal [_riflemag, 8];
		_unit addMagazineCargoGlobal [_glriflemag, 8];
		_unit addMagazineCargoGlobal [_carbinemag, 10];
		_unit addMagazineCargoGlobal [_armag, 5];
		_unit addMagazineCargoGlobal [_ratmag, 1];
		_unit addMagazineCargoGlobal [_grenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenade, 4];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 4];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
	};	
	
// CARGO: TRUCK - room for 50 weapons and 200 cargo items
	case "v_tr":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 10];
		_unit addMagazineCargoGlobal [_riflemag, 40];
		_unit addMagazineCargoGlobal [_glriflemag, 40];
		_unit addMagazineCargoGlobal [_carbinemag, 40];
		_unit addMagazineCargoGlobal [_armag, 22];
		_unit addMagazineCargoGlobal [_ratmag, 6];
		_unit addMagazineCargoGlobal [_grenade, 12];
		_unit addMagazineCargoGlobal [_smokegrenade, 12];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 4];
		_unit addMagazineCargoGlobal [_glmag, 12];
		_unit addMagazineCargoGlobal [_glsmokewhite, 12];
	};
	
// CARGO: IFV - room for 10 weapons and 100 cargo items
	case "v_ifv":
	{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		_unit addWeaponCargoGlobal [_carbine, 4];
		_unit addMagazineCargoGlobal [_riflemag, 20];
		_unit addMagazineCargoGlobal [_glriflemag, 20];
		_unit addMagazineCargoGlobal [_carbinemag, 20];
		_unit addMagazineCargoGlobal [_armag, 8];
		_unit addMagazineCargoGlobal [_ratmag, 2];
		_unit addMagazineCargoGlobal [_grenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenade, 8];
		_unit addMagazineCargoGlobal [_smokegrenadegreen, 2];
		_unit addMagazineCargoGlobal [_glmag, 8];
		_unit addMagazineCargoGlobal [_glsmokewhite, 4];
	};
	
// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		{_unit addmagazine _riflemag} foreach [1,2,3,4,5,6,7];
		_unit addweapon _rifle;
		
		_unit selectweapon primaryweapon _unit;
				
		if (true) exitwith {player globalchat format ["DEBUG (f\common\folk_assignGear.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };


// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// ====================================================================================

// Handle weapon attachments here.

#include "f_assignGear_attach.sqf";

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING

_unit selectweapon primaryweapon _unit;