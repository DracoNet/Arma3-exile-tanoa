/*

ExileZ Mod by [FPS]kuplion - Based on ExileZ 2.0 by Patrix87

*/

// Verify validity of spawning location

//_validLocation = [_triggerPosition,false] call VerifyLocation;

// Return True if valid
private ["_flags","_validLocation","_distance","_radius","_position","_ignorePlayer"];

_ignorePlayer = false;

_position = _this select 0;
if (count _this == 2) then
{
	_ignorePlayer = _this select 1;
};

_validLocation = true;

// Check if empty
if ((count _position) == 0) then
{
	_validLocation = false
};

// Check for water
if (_validLocation) then 
{
	if (surfaceIsWater _position) then
	{
		_validLocation = false;
	};
};

// Check for safezones
if (_validLocation) then 
{
	if ((_position) call ExileClient_util_world_isInTraderZone) then
	{
		_validLocation = false
	};
};

// Check for flags
if (_validLocation) then 
{
	if (RemoveZfromTerritory) then
	{
		_flags = _position nearObjects ["Exile_Construction_Flag_Static", MaxTerritoryRange];
		{
			_distance = (getPosATL _x) distance _position;
			_radius = _x getVariable ["ExileTerritorySize", 0];
			if (_distance <= _radius) exitWith {_validLocation = false};
		}forEach _flags;
	};
};

// Check for players too close
if (_validLocation && !_ignorePlayer) then 
{
	if ({isplayer _x} count (_position nearEntities MinSpawnDistance) == 1) then {_validLocation = false};
};

// Check for absence of players near
if (_validLocation && !_ignorePlayer) then 
{
	if ({isplayer _x} count (_position nearEntities MaxSpawnDistance) == 0) then {_validLocation = false};
};


// return
_validLocation;