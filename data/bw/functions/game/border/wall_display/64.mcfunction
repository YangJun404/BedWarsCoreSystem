execute if score $wall_display border matches 128.. run scoreboard players remove $wall_display border 128
execute unless score $wall_display border matches 64.. run function bw:game/border/wall_display/32
execute if score $wall_display border matches 64.. positioned ^ ^ ^6.4 run function bw:game/border/wall_display/32