/**
 *
 * Addon: yeiijGrowing
 * Author: Jason REDUX (@Yeiij)
 * Date: 09/09/2018
 * File: fn_GrowingAction.sqf
 *
 */

diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijGrowing (Server): Add Action           :: ";
diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";

if (playerSide isEqualTo CIVILIAN) then {
	player addAction ["<t color='#0b8317'>-- APPLE</t>", {["a3\vegetation_f_exp\tree\t_millettia_plantation_f.p3d", 300] spawn YEIIJ_fnc_GrowingPlant;}, nil, 0, false, false, "", "", -1, false, "", ""];
	player addAction ["<t color='#f4f900'>-- BANANA</t>", {["a3\vegetation_f_exp\crop\t_banana_wild_f.p3d", 300] spawn YEIIJ_fnc_GrowingPlant;}, nil, 0, false, false, "", "", -1, false, "", ""];
	player addAction ["<t color='#ff00de'>-- COCA</t>", {["a3\plants_f\bush\b_neriumo2s_white_f.p3d", 300] spawn YEIIJ_fnc_GrowingPlant;}, nil, 0, false, false, "", "", -1, false, "", ""];
	player addAction ["<t color='#00BFFF'>-- OPIO</t>", {["a3\plants_f\bush\b_neriumo2s_f.p3d", 300] spawn YEIIJ_fnc_GrowingPlant;}, nil, 0, false, false, "", "", -1, false, "", ""];
	player addAction ["<t color='#ff6b00'>-- PEACH</t>", {["a3\vegetation_f_argo\bushes\b_vitis_vinifera_f.p3d", 300] spawn YEIIJ_fnc_GrowingPlant;}, nil, 0, false, false, "", "", -1, false, "", ""];
	player addAction ["<t color='#00ff19'>-- WEED</t>", {["a3\vegetation_f_exp\shrub\b_leucaena_f.p3d", 300] spawn YEIIJ_fnc_GrowingPlant;}, nil, 0, false, false, "", "", -1, false, "", ""];
};