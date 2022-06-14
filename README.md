# TPTS - Teleport to Scoreboard

## Why ?

This datapack permits you to teleport a player to coordinates specified in a scoreboard. Why use this ? Because it's easier than recreate this in your datapack.
There is only passives functions (no tick functions or loops with schedules) so while you don't use it, it doesn't impact your perfs.

* setup values of the scoreboard
* tp the player or entity with one command

## How ?

### Set coordinates manualy

The destination coordinates are stored in only one scoreboard called `tpts_destination`. In `$x`, `$y` and `$z` score holders.
So you can manualy change this values with the `/scoreboard` command.

For example :
```hs
scoreboard players set $x tpts_destination 42
scoreboard players set $y tpts_destination 100
scoreboard players set $z tpts_destination 69
```
*The destination is now `x:42 y:100 z:69`.*

This datapack also include a relative option. If you activate this feature on one axis, when you will teleport the player or the entity, the destination coordinates of this axis will be ignored. This feature permits you a sort of `/tp 42 ~ 69`. Set the value of `$x_isRelative` to `1` if you want to use this on the `x` axis. Same thing for the 2 other.

Example :
```hs
scoreboard players set $x tpts_destination 42
scoreboard players set $y_isRelative tpts_destination 1
scoreboard players set $z tpts_destination 69
```
*The destination is now `x:42 y:~ z:69`.*

### Set coordinates with build-in functions

There is 2 functions that can help you in your datapacks to setup coordinates.


```hs
function tptoscoreboard:command/store_position
```
Executable as entities that store its position in the scoreboard.

Note : the `execute at @s` isn't required and the `execute positioned` will not have an impact.



```hs
function tptoscoreboard:command/reset_coordinates
```
You can use this function if you want to reset quickly the destination coordinates.
By default, the coordinates will be `x:0 y:0 z:0` and the relative feature desactivated.


### Teleport

To teleport a player or an entity just run as them :
```hs
function tptoscoreboard:command/tp
```
Note : `execute at @s` is required before if you want to use the relative option, and then `eexcute positioned` will have an impact.
