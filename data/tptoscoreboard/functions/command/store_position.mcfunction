execute store result score $x tpts_destination run data get entity @s Pos[0]
execute store result score $y tpts_destination run data get entity @s Pos[1]
execute store result score $z tpts_destination run data get entity @s Pos[2]

scoreboard players set $x_isRelative tpts_destination 0
scoreboard players set $y_isRelative tpts_destination 0
scoreboard players set $z_isRelative tpts_destination 0