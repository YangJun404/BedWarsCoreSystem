execute if score $wall_display border matches 1024.. run scoreboard players remove $wall_display border 1024
execute unless score $wall_display border matches 512.. run function bw:game/border/wall_display/256
execute if score $wall_display border matches 512.. positioned ^ ^ ^51.2 run function bw:game/border/wall_display/256