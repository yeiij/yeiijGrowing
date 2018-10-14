/**
 *
 * Addon: yeiijGrowing
 * Author: Jason REDUX (@Yeiij)
 * Date: 09/09/2018
 * File: fn_GrowingPreInit.sqf
 *
 */

diag_log " |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| ";
diag_log " || yeiijGrowing (Server): PRE-INIT                              || ";
diag_log " |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| ";

if (hasInterface) exitWith {};

call compile preprocessFileLineNumbers "yeiijGrowing\config\config.sqf";
