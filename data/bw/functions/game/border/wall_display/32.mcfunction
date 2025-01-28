execute if score $wall_display border matches 64.. run scoreboard players remove $wall_display border 64
execute unless score $wall_display border matches 32.. run function bw:game/border/wall_display/16
execute if score $wall_display border matches 32.. positioned ^ ^ ^3.2 run function bw:game/border/wall_display/16