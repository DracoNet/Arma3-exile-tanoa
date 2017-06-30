/**
 * ExileClient_gui_map_event_onDraw
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_marker"];
{
	deleteMarkerLocal _x;
}
/*
forEach ExileClientPartyMapMarkers;
{
	_marker = createMarkerLocal [format ["ExilePartyMarker%1", _forEachIndex], getPosVisual _x];
	_marker setMarkerShapeLocal "ICON";
	_marker setMarkerTypeLocal "ExilePlayer";
	_marker setMarkerDirLocal (getDirVisual _x);
	_marker setMarkerAlphaLocal 0.75;
	if (_x isEqualTo player) then 
	{
		_marker setMarkerColorLocal "ColorBlue";
	}
	else 
	{
		_marker setMarkerColorLocal "ColorGreen";
		_marker setMarkerTextLocal (name _x);
	};
	ExileClientPartyMapMarkers pushBack _marker;
}
forEach units (group player);
*/