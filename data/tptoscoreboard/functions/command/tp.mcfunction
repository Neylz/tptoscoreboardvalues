#executed as a player or entity

tag @s add tpts_traveler

summon armor_stand ~ ~ ~ {Tags:["tpts_markerDestination"]}

execute as @e[type=armor_stand,tag=tpts_markerDestination] at @s run function tptoscoreboard:core/tp/marker

tag @s remove tpts_traveler