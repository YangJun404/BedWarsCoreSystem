execute if score $wall_display border matches 512.. run scoreboard players remove $wall_display border 512
execute unless score $wall_display border matches 256.. run function bw:game/border/wall_display/128
execute if score $wall_display border matches 256.. positioned ^ ^ ^25.6 run function bw:game/border/wall_display/128