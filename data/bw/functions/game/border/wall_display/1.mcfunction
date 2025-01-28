execute if score $wall_display border matches 2.. run scoreboard players remove $wall_display border 2
execute unless score $wall_display border matches 1.. run function bw:game/border/wall_display/display
execute if score $wall_display border matches 1.. positioned ^ ^ ^0.1 run function bw:game/border/wall_display/display