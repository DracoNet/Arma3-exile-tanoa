// statusbar
[] execVM "addons\StatusBar\statusbar.sqf";

// Welcome Credits by Gr8
//[] execVM "custom\welcome.sqf";

// scarCODE ServerInfoMenu
[] ExecVM "scarCODE\ServerInfoMenu\sqf\initLocal.sqf";

/*
if (isServer) then {
	[] execVM "custom\objects.sqf";
};
*/

// Disable Radio Chatter
enableRadio false;
0 fadeRadio 0;