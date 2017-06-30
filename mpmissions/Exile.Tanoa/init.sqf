// statusbar
[] execVM "addons\StatusBar\statusbar.sqf";

// Welcome Credits by Gr8
[] execVM "custom\welcome.sqf";

// ACD_TB - ACiDy Tanoa Bridges
[] execVM "custom\acd_TB\run.sqf";

// scarCODE ServerInfoMenu
[] ExecVM "scarCODE\ServerInfoMenu\sqf\initLocal.sqf";

/*
if (isServer) then {
	[] execVM "custom\objects.sqf";
};
*/

_hidePosToPlayer = [] spawn
{
    disableSerialization;
    while {true} do {
        waitUntil {sleep 1; visibleMap};
        _display = uiNamespace getVariable "RSCDiary";
        _ctrl = _display displayCtrl 1202;
        _ctrl ctrlEnable false;
        _ctrl ctrlsettextcolor [0,0,0,0];
        _ctrl ctrlSetTooltip "";
        _ctrl ctrlCommit 0;
        waitUntil {!visibleMap};
    };
};

// Disable Radio Chatter
enableRadio false;
0 fadeRadio 0;