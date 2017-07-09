/*

ExileZ Mod by [FPS]kuplion - Based on ExileZ 2.0 by Patrix87

*/

private ["_chanceRoll","_nPlayer","_sTime","_group","_count","_groupSize","_vestGroup","_lootGroup","_zombieGroup","_playerObj","_playerName","_playerPosition","_skipPlayer"];

_groupSize =         (_this select 0) select 0;
_vestGroup =         (_this select 0) select 1;
_lootGroup =         (_this select 0) select 2;
_zombieGroup =       (_this select 0) select 3;

// Wait 2 minutes before starting Harassing Zombie Loop
if (time < 120) exitWith 
{
    if (ExtendedLogging) then 
    {
        diag_log format["ExileZ Mod: Waiting until the server has been up at least 2 minutes (it has currently been up for %1 seconds)",time];
    };
};

// Run the Harassing Zombie Loop
{
	if (Debug) then
	{
		diag_log format["ExileZ Mod: HarassingZombiesLoop: GroupSize : %1 | Vest : %2 | Loot : %3 | ZGroup : %4",_groupSize,_vestGroup,_lootGroup,_zombieGroup];
	};
	
	// Setup skipping the player
	_skipPlayer = false;
	
	// Not in Blacklisted Areas
	if (UseAreaBlackList) then
	{
		_playerPos = getPos _x;
		{
			if (_playerPos distance (_x select 0) <= _x select 1) then
			{
				_skipPlayer = true;
				if (ExtendedLogging) then 
				{
					_playerObj = _x;
					_playerName = name _playerObj;
					diag_log format["ExileZ Mod: %1 is in a Blacklisted area, no Harassing Zombie for them.",_playerName];
				};
			};
		}
		forEach BlackListedPositions;		
	};
	sleep 0.5;
	
	// Not in Traders
	if ((RemoveZfromTraders) && ((getPosATL _x) call ExileClient_util_world_isInTraderZone)) then
	{
		_skipPlayer = true;
		if (ExtendedLogging) then 
		{
			_playerObj = _x;
			_playerName = name _playerObj;
			diag_log format["ExileZ Mod: %1 is in a SafeZone, no Harassing Zombie for them.",_playerName];
		};
	};
	sleep 0.5;
	
	// Not in Territory
	if ((RemoveZfromTerritory) && ((getPosATL _x) call ExileClient_util_world_isInTerritory)) then
	{
		_skipPlayer = true;
		if (ExtendedLogging) then 
		{
			_playerObj = _x;
			_playerName = name _playerObj;
			diag_log format["ExileZ Mod: %1 is in their Territory, no Harassing Zombie for them.",_playerName];
		};
	};
	sleep 0.5;
	
	// Roll for Harassing Zombie chance..
	_chanceRoll = random (floor 99);
	if (HarassingZedChance <= _chanceRoll) then
	{
		_skipPlayer = true;
		if (ExtendedLogging) then 
		{
			_playerObj = _x;
			_playerName = name _playerObj;
			diag_log format["ExileZ Mod: %1 got lucky, no Harassing Zombie for them.",_playerName];
		};
	};
	sleep 0.5;

	if ((HarassingZombieAtNightOnly && (daytime >= NightStartTime or daytime < NightEndTime) && !(_skipPlayer)) || (!(HarassingZombieAtNightOnly) && !(_skipPlayer))) then 
	{
		if (isPlayer _x) then 
		{ 
			if (alive _x) then 
			{	
				_playerObj = _x;
				_playerName = name _playerObj;
				_playerPosition = getPos _playerObj;
				
				// Get group from player
				_group = _playerObj getvariable ["group", objNull];
				
				// If nul create group
				if (isNull _group) then 
				{
					_group = [_playerObj] call InitGroup;
					sleep 1;
				};

				// Count number of zombie alive in the group
				_count = {alive _x} count units _group; 	
				
				// Fill the group
				if (_count < _groupSize) then 
				{
					for "_i" from 1 to (_groupSize - _count) do 
					{
						nul = [_group,_playerPosition,_vestGroup,_lootGroup,_zombieGroup] spawn SpawnZombie;
						sleep 1;
					};
					
					if (ExtendedLogging) then 
					{
						diag_log format["ExileZ Mod: Spawning %1 Harassing Zombie(s) for %2.",(_groupSize - _count),_playerName];
					};
				};
			};
		};
	};
	sleep 0.5;
}
forEach (allPlayers - entities "HeadlessClient_F");