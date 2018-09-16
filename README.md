# yeiijGrowing
Standalone Addon for Arma 3

## What this does?
The addon add actions in the mouse wheel that spawns plants to simulate a growing system (only for civilian)
 - Apple
 - Banana
 - Coca
 - Peach
 - Opio
 - Weed
 
Those plants models may not be the best models but at least you don't require any addon

## How i do install this?
 1 - Download the code and make a PBO or download the [latest released version](https://github.com/yeiij/yeiijGrowing/releases)
<br>
 2 - Put the PBO file inside @Yeiij\addons
```
iex: @Yeiij\addons\yeiijGrowing.pbo
remember load the mod on server start at -serverMods
```

<br>
3 - Add the next call in your mission in initPlayerLocal.sqf and onPlayerRspawn.sqf:

```SQF
[] spawn YEIIJ_fnc_GrowingAddAction;
```

## How i do edit this?
the addon contains a file named [config.sqf](https://github.com/yeiij/yeiijGrowing/blob/master/config/config.sqf) inside the folder config. You have to edit:
 - result on harvest the plant

