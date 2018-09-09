# yeiijGrowing
Standalone Addon for Arma 3

## What this does?
The addon spawn plants to simulate a growing system

## How i do install this?
 1 - Download the code and make a PBO or download the [latest released version](https://github.com/yeiij/yeiijGrowing/releases)
<br>
 2 - Put the PBO file inside @life_server\addons
```
iex: @life_server\addons\yeiijGrowing.pbo
```

<br>
 3 - Add the next calls somewhere in a kind of seed:

```SQF
[] spawn YEIIJ_fnc_GrowingApple;
[] spawn YEIIJ_fnc_GrowingBanana;
[] spawn YEIIJ_fnc_GrowingCoca;
[] spawn YEIIJ_fnc_GrowingGrape;
[] spawn YEIIJ_fnc_GrowingOpio;
[] spawn YEIIJ_fnc_GrowingWeed;
```

## How i do edit this?
the addon contains a file named [config.sqf](https://github.com/yeiij/yeiijGrowing/blob/master/config/config.sqf) inside the folder config

