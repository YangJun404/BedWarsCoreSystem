execute if score $wall_display border matches 256.. run scoreboard players remove $wall_display border 256
execute unless score $wall_display border matches 128.. run function bw:game/border/wall_display/64
execute if score $wall_display border matches 128.. positioned ^ ^ ^12.8 run function bw:game/border/wall_display/64