execute if score $wall_display border matches 2048.. run scoreboard players remove $wall_display border 2048
execute unless score $wall_display border matches 1024.. run function bw:game/border/wall_display/512
execute if score $wall_display border matches 1024.. positioned ^ ^ ^102.4 run function bw:game/border/wall_display/512