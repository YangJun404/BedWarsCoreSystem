execute if score $wall_display border matches 4096.. run scoreboard players remove $wall_display border 4096
execute unless score $wall_display border matches 2048.. run function bw:game/border/wall_display/1024
execute if score $wall_display border matches 2048.. positioned ^ ^ ^204.8 run function bw:game/border/wall_display/1024