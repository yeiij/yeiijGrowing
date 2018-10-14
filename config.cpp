/**
 *
 * Addon: yeiijGrowing
 * Author: Jason REDUX (@Yeiij)
 * Date: 09/09/2018
 * File: config.cpp
 *
 */

class CfgPatches
{
	class YeiijGrowing
	{
		name = "Yeiij Growing Addon";
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.0;
		requiredAddons[] = {};
		author = "Yeiij";
		authors[] = {"Yeiij"};
		url = "https://github.com/yeiij";
		version = "1.0";
		versionStr = "1.0";
		versionAr[] = {1,0};
	};
};

class CfgFunctions
{
	class YeiijGrowing
	{
		tag = "YEIIJ";
		class initGrowing
		{
			file = "yeiijGrowing";
			class GrowingPreInit  { preInit  = 1; };
			class GrowingPostInit { postInit = 1; };
			class GrowingStartAddon {};
		};
		class compilesGrowing
		{
			file = "yeiijGrowing\functions";
			class GrowingAction {};
			class GrowingPlant {};
		};
	};
};
