/*

ExileZ Mod by [FPS]kuplion - Based on ExileZ 2.0 by Patrix87

*/

private ["_nPlayer","_group","_groupSize","_vestGroup","_lootGroup","_zombieGroup","_playerObj","_playerName","_playerPosition","_position","_validLocation","_playerObjs","_sleepTime","_minFrequency","_maxFrequency","_hordeDensity"];


_groupSize =         (_this select 0) select 0;
_vestGroup =         (_this select 0) select 1;
_lootGroup =         (_this select 0) select 2;
_zombieGroup =       (_this select 0) select 3;
_hordeDensity =      (_this select 0) select 4;

// Wait 2 minutes before starting Horde Loop
if (time < 120) exitWith 
{
    if (ExtendedLogging) then 
    {
        diag_log format["ExileZ Mod: Waiting until the server has been up at least 2 minutes (it has currently been up for %1 seconds)",time];
    };
};

// Run the Horde Loop
// Count players in game
_nPlayer = count (allPlayers - entities "HeadlessClient_F");
if (_nPlayer >= 1) then 
{

	//create player list
	_playerObjs = allPlayers - entities "HeadlessClient_F";
	
	//try to pick a lucky winner with a possible valid location
	for "_i" from 1 to _nPlayer do 
	{
		_playerObj = selectRandom _playerObjs;
		//Check if player is in a valid location
		_playerPosition = getPos _playerObj;
		_validLocation = [_playerPosition,true] call VerifyLocation;
		//if player is valid try to find a valid location 10 times
		if (isPlayer _playerObj && alive _playerObj && _validLocation) then 
		{
			for "_i" from 1 to 10 do 
			{
				_playerPosition = getPos _playerObj;
				_position = [_playerPosition,(MinSpawnDistance+_hordeDensity),(MaxSpawnDistance+_hordeDensity)] call GetRandomLocation;
				//Validate location
				_validLocation = [_position] call VerifyLocation;
				if (_validLocation) exitWith {_validLocation};
				sleep 0.05;
			};
		};
		if (_validLocation) exitWith {_playerObj};
		_playerObj = ObjNull;
		sleep 0.05;
	};
	
	//if _playerObj is not null or in a Trader, spawn the horde
	if (!(isnull _playerObj) && !((getPosATL _playerObj) call ExileClient_util_world_isInTraderZone)) then 
	{
		_playerName = name _playerObj;
		
		//get group from player
		_group = _playerObj getvariable ["group", objNull];
		
		//if nul create group
		if (isNull _group) then 
		{
			_group = [_playerObj] call InitGroup;
			sleep 1;
		};

		//Spawn the horde
		if (ExtendedLogging) then 
		{
			diag_log format["ExileZ Mod: Spawning The Horde near %1.",_playerName];
		};
		for "_i" from 1 to _groupSize do 
		{
			nul = [_group,_position,_vestGroup,_lootGroup,_zombieGroup,_hordeDensity] spawn SpawnZombie;
			sleep 1;
		};
	}
	else
	{
		if (ExtendedLogging) then
		{
			diag_log "ExileZ Mod: No valid player found for The Horde..";
		};
	};
};