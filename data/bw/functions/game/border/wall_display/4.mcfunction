execute if score $wall_display border matches 8.. run scoreboard players remove $wall_display border 8
execute unless score $wall_display border matches 4.. run function bw:game/border/wall_display/2
execute if score $wall_display border matches 4.. positioned ^ ^ ^0.4 run function bw:game/border/wall_display/2