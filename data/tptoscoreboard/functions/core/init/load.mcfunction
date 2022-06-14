#define score_holder $x
#define score_holder $y
#define score_holder $z
#define score_holder $x_isRelative
#define score_holder $y_isRelative
#define score_holder $z_isRelative


scoreboard objectives add tpts_data dummy
execute unless score $setup tpts_data matches 1 run function tptoscoreboard:core/init/setup
