/**
 *
 * Addon: yeiijGrowing
 * Author: Jason REDUX (@Yeiij)
 * Date: 09/09/2018
 * File: fn_GrowingPostInit.sqf
 *
 */

diag_log " |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| ";
diag_log " || yeiijGrowing (Server): POST-INIT                             || ";
diag_log " |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| ";

if (hasInterface) exitWith {};

[] call YEIIJ_fnc_GrowingStartAddon;
