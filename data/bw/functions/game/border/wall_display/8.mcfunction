execute if score $wall_display border matches 16.. run scoreboard players remove $wall_display border 16
execute unless score $wall_display border matches 8.. run function bw:game/border/wall_display/4
execute if score $wall_display border matches 8.. positioned ^ ^ ^0.8 run function bw:game/border/wall_display/4