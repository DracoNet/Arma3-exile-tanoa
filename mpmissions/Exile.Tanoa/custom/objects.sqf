private _objects =
	[
    ];
{
    private _object = (_x select 0) createVehicle [0,0,0];
    _object setPosASL (_x select 1);
    _object setVectorDirAndUp (_x select 2);
    _object enableSimulationGlobal ((_x select 3) select 0);
    _object allowDamage ((_x select 3) select 1);
} forEach _objects;