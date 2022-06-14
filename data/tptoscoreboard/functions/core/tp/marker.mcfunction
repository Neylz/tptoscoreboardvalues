#define storage tpts:data
#
#
# executed as the marker (@s)


data modify storage tpts:data Pos set value [0.,0.,0.]


# merge coordinates if relative = 0
execute unless score $x_isRelative tpts_destination matches 1 store result storage tpts:data Pos[0] int 1 run scoreboard players get $x tpts_destination
execute unless score $y_isRelative tpts_destination matches 1 store result storage tpts:data Pos[1] int 1 run scoreboard players get $y tpts_destination
execute unless score $z_isRelative tpts_destination matches 1 store result storage tpts:data Pos[2] int 1 run scoreboard players get $z tpts_destination

data modify entity @s Pos set from storage tpts:data Pos
data remove storage tpts:data Pos

# tp
execute positioned as @s positioned ~.5 ~ ~.5 run function tptoscoreboard:core/tp/teleport

# kill marker
kill @s