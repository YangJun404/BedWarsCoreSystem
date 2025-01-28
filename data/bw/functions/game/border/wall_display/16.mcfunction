execute if score $wall_display border matches 32.. run scoreboard players remove $wall_display border 32
execute unless score $wall_display border matches 16.. run function bw:game/border/wall_display/8
execute if score $wall_display border matches 16.. positioned ^ ^ ^1.6 run function bw:game/border/wall_display/8