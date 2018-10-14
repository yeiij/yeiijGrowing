/**
 *
 * Addon: yeiijGrowing
 * Author: Jason REDUX (@Yeiij)
 * Date: 09/09/2018
 * File: fn_GrowingPlant.sqf
 *
 */

diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijGrowing (Server): Grow the plant       :: ";
diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";

params [
	["_plantModel", "", [""]],
	["_time2Grow", 0, [0]]
];

// check the player is not in a vehicle
if (!(vehicle player isEqualTo player)) exitWith {
	hintSilent "you can't plant inside a vehicle";
};
// check the player is not in the water
if (surfaceIsWater position player) exitWith {
    hintSilent "how the hell do you spect to plant in the water!";
};
// check the player is not near a road
if (count(player nearRoads 50) > 0) exitWith {
    hintSilent "you can't plant that close to a road - 50m";
};
// check if the player is too close to a car/truck
if (count(nearestObjects [player, ["Car", "Truck"], 10]) > 0) exitWith {
    hintSilent "too close to a car/truck - 10m";
};
// check the distance to another plant (pot)
if (count(nearestObjects [player, ["Land_Pot_02_F"], 3]) > 0) exitWith  {
    hintSilent "too close to another pot - 3m";
};
// check if the player is too close to a house
private _nearHouses = nearestObjects [player, ["house"], 250];
if (count(_nearHouses) > 0) then {
    {
        if ((typeOf _x) != "Land_Pot_02_F") exitWith {
            hintSilent "too close to a house - 250m";
        };
    } forEach _nearHouses;
};

// get the gardener position
private _playerPos = getPosWorld  player;

// create the plant model
private _plant = createSimpleObject [_plantModel, [0.0,0.0,0.0]];
// create the object wich will contain the hold action
private _haObj = "Land_Pot_02_F" createVehicle [0.0,0.0,0.0];
// attach the object with hold action to the simple object (plant)
_plant attachTo [_haObj,[ 0,0,1.2]];

// start depth / progress
private _growProgress = -2.0;
// move the object to the correct position
_haObj setPos [_playerPos select 0, _playerPos select 1, _growProgress];

sleep 2.5;

private _tmpObjPos = getPos _haObj;
private _calculatedTime = _time2Grow / 40;

for "_i" from 0 to 40 do {
    _haObj setPos [_tmpObjPos select 0, _tmpObjPos select 1, _growProgress];
    _growProgress = _growProgress + 0.05;
    sleep _calculatedTime;
};

[
	_haObj,
	"Harvest",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",
	"_this distance _target < 3",
	"_caller distance _target < 3 && {count(player nearEntities 3) isEqualto 1}",
	{},
	{},
	{
        detach ((_this select 3) select 0);
        deleteVehicle ((_this select 3) select 0);
        deleteVehicle _target;
        hintSilent "X plant harvested";
    },
	{
		hintSilent "There is another player around ? - 3m";
    },
	[_plant],
	1,
	0,
	true,
	false
] remoteExec ["BIS_fnc_holdActionAdd", 0, _haObj];