# scoreboards
##destination
scoreboard objectives add tpts_destination dummy


#destination
scoreboard players set $x tpts_destination 0
scoreboard players set $y tpts_destination 0
scoreboard players set $z tpts_destination 0

scoreboard players set $x_isRelative tpts_destination 0
scoreboard players set $y_isRelative tpts_destination 0
scoreboard players set $z_isRelative tpts_destination 0

#data
scoreboard players set $setup tpts_data 1
scoreboard players set $tpCount tpts_data 0


#setup/version
scoreboard players set $setup tpts_data 1