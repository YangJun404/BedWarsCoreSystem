execute if score $wall_display border matches 4.. run scoreboard players remove $wall_display border 4
execute unless score $wall_display border matches 2.. run function bw:game/border/wall_display/1
execute if score $wall_display border matches 2.. positioned ^ ^ ^0.2 run function bw:game/border/wall_display/1