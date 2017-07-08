// Dynamic Trigger creation for ExileZ 2
// by second_coming

private _middle 		    = worldSize/2;			
private _spawnCenter 	    = [_middle,_middle,0];			// Centre point for the map
private _maxDistance 	    = _middle;			        	// Max radius for the map
private _validspot			= false;

MainCitiesOnly 	= [];
Cities			= [];
Military 		= [];
NoBuildings 	= [];                                    
NoMansLand 		= [];                      
Mission 		= [[15868.15298,150]];

private _locations = (nearestLocations [_spawnCenter, ["NameLocal","NameCity", "NameCityCapital"], _maxDistance]);
{
	private _temppos 		= position _x;
	private _locationName 	= text _x;
	private _locationType 	= type _x;
	private _triggerDetails	= [_temppos select 0, _temppos select 1];
	if(_locationType isEqualTo "NameCityCapital") then { MainCitiesOnly pushBack [_temppos select 0, _temppos select 1,400]; };	
	if(_locationType isEqualTo "NameCity") then { Cities pushBack [_temppos select 0, _temppos select 1,300]; };
	if ((tolower (text _x)) in ["military"]) then { Military pushBack [_temppos select 0, _temppos select 1,300]; };	
} forEach _locations;

// Check Config Compiled
EZM_TriggersCompiledOkay				= true;