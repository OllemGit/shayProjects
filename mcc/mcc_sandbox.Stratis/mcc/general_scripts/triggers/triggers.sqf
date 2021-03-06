#define MCC_SANDBOX3_IDD 3000
#define MCCSTOPCAPTURE 1014

#define MCC_TRIGGERS_ACTIVATE 3064
#define MCC_TRIGGERS_CONDITION 3065
#define MCC_TRIGGERS_SHAPE 3066
#define MCC_TRIGGERS_LIST 3067
#define MCC_TRIGGERS_NAME 3068

#define MCC_TRIGGERS_TIME_MIN 3071
#define MCC_TRIGGERS_TIME_MAX 3072
#define MCC_TRIGGERS_STAT_COND 3073
#define MCC_TRIGGERS_STAT_ACTIVE 3074
#define MCC_TRIGGERS_STAT_DEACTIVE 3075

disableSerialization;
private ["_dlg","_type","_size","_zoneY","_activate","_cond","_angle","_shape","_text","_pos","_nul","_triggerSelected","_timeMin","_timeMax","_stateCond","_stateDiac"];

_dlg = findDisplay MCC_SANDBOX3_IDD;
_type = _this select 0;

switch (_type) do
{
   case 0:	//Mapclick Generate
	{ 
		MCC_capture_state = true;
		MCC_drawTriggers = true;
		Mshape = (MCC_shapeMarker select (lbCurSel MCC_TRIGGERS_SHAPE));
		Mcolor = "ColorOrange";
		Mtype = "SOLID";
		hint "Left click on and drag a box on the map to create a trigger";
	};
	
	case 1:	//Generate
	{ 
		ctrlEnable [1014,true];
		_pos 		= _this select 1;	
		_size 		= _this select 2; 
		_activate 	= MCC_musicActivateby_array select (lbCurSel MCC_TRIGGERS_ACTIVATE);
		_cond 		= MCC_musicCond_array select (lbCurSel MCC_TRIGGERS_CONDITION);
		_text 		= ctrlText (_dlg displayCtrl MCC_TRIGGERS_NAME);
		_timeMin	= call compile (ctrlText (_dlg displayCtrl MCC_TRIGGERS_TIME_MIN));
		_timeMax	= call compile (ctrlText (_dlg displayCtrl MCC_TRIGGERS_TIME_MAX));
		_stateCond	= (ctrlText (_dlg displayCtrl MCC_TRIGGERS_STAT_COND));
		_stateDiac	= (ctrlText (_dlg displayCtrl MCC_TRIGGERS_STAT_DEACTIVE));
		MCC_capture_var = "";
		hint "Trigger created: capture MCC actions that you want to link to that trigger, press Stop Capturing to finish";
		waituntil {(!MCC_capture_state)};
		mcc_safe = mcc_safe + FORMAT ["
							MCC_capture_var = '%7';
							script_handler = [0, %1, %2, '%3', '%4', '%5', '%6', MCC_capture_var,%8,%9,'%10','%11'] execVM '"+MCC_path+"mcc\general_scripts\triggers\triggers_execute.sqf';
							waitUntil {scriptDone script_handler};"								 
							,_pos
							,_size
							,_activate
							,_cond
							,Mshape
							,_text
							,MCC_capture_var  
							,_timeMin
							,_timeMax
							,_stateCond
							,_stateDiac
							];
		[0, _pos, _size, _activate, _cond, Mshape, _text, MCC_capture_var,_timeMin,_timeMax,_stateCond,_stateDiac] execVM MCC_path + "mcc\general_scripts\triggers\triggers_execute.sqf";
		closedialog 3000;
		waituntil {!dialog};
		_ok = createDialog "MCC_Sandbox3";
	};
	   
   case 2:	//Mapclick Move trigger
	{
		hint "Left click on the map to move a trigger";
			onMapSingleClick " 	hint 'Trigger moved.'; 
								nul=[3,_pos] execVM '"+MCCPATH+"mcc\general_scripts\triggers\triggers.sqf';
								onMapSingleClick """";";
	};
	
   case 3:	// Move trigger
	{
		_pos = _this select 1;
		_text = MCC_triggers select (lbCurSel MCC_TRIGGERS_LIST) select 0;
		_triggerSelected = MCC_triggers select (lbCurSel MCC_TRIGGERS_LIST) select 1;
		[1,_pos, _text, _triggerSelected] execVM MCC_path + 'mcc\general_scripts\triggers\triggers_execute.sqf';
								
	};
};