/**
 * ExileServer_util_getFragKiller
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_killer", "_player", "_sessionID"];
_killer = _this;
_player = objNull;
if (isPlayer _killer) then 
{
	if ((typeOf _killer) isEqualTo "Exile_Unit_Player") then
	{
		_player = _killer;	
	}
	else 
	{
		_sessionID = _killer getVariable ["ExileSessionID", -1];
		if !(_sessionID isEqualTo -1) then
		{
			_player = _sessionID call ExileServer_system_session_getPlayerObject;
		};
	};
}
else 
{
	if (isUAVConnected _killer) then 
	{
		_player = (UAVControl _killer) select 0; 
	};
};
_player