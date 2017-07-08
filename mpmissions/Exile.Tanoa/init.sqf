// statusbar
[] execVM "addons\StatusBar\statusbar.sqf";

// Welcome Credits by Gr8
[] execVM "custom\welcome.sqf";

// ACD_TB - ACiDy Tanoa Bridges
[] execVM "custom\acd_TB\run.sqf";

// scarCODE ServerInfoMenu
//[] ExecVM "scarCODE\ServerInfoMenu\sqf\initLocal.sqf";

// Advanced Rappelling

AR_SUPPORTED_VEHICLES_OVERRIDE = [ 
	"Exile_Chopper_Taru_CSAT", 
	"Exile_Chopper_Taru_Black", 
	"Exile_Chopper_Taru_Covered_CSAT", 
	"Exile_Chopper_Taru_Covered_Black", 
	"Exile_Chopper_Huron_Black", 
	"Exile_Chopper_Huron_Green",
	"Exile_Chopper_Mohawk_FIA",
	"Exile_Chopper_Huey_Green", 
	"Exile_Chopper_Huey_Desert", 
	"Exile_Chopper_Huey_Armed_Green",
	"Exile_Chopper_Huey_Armed_Desert"
];

AR_DISABLE_SHOOTING_OVERRIDE = false; //Defaults to false (shooting enabled).
AR_MAX_RAPPEL_POINTS_OVERRIDE = 4; //Defaults to 6. You can set any value from 1 to 6.

[] spawn {
	waitUntil {!isNil "AR_Rappel_From_Heli_Action_Check"};
		AR_Rappel_From_Heli_Action_Check = {
		params ["_player","_vehicle"];
		if!([_vehicle] call AR_Is_Supported_Vehicle) exitWith {false};
		if(((getPos _vehicle) select 2) < 5 ) exitWith {false};
		if(((getPos _vehicle) select 2) > 150 ) exitWith {false};
		if(driver _vehicle == _player && isEngineOn _vehicle) exitWith {false};
		if(speed _vehicle > 100) exitWith {false};
		if!("Exile_Item_Rope" in magazines _player) exitWith {false};
		true;
	};
};

//Advanced Train Simulator (ATS)
//ATRAIN_Track_Debug_Enabled = true

// Disable Radio Chatter
enableRadio false;
0 fadeRadio 0;