summon text_display 0 319 0 {Tags:["res","res_display","temp"],Invulnerable:true}
tp @e[type=text_display,tag=res_display] @s
data modify entity @e[type=text_display,limit=1,tag=res_display] text set value '{"storage":"bw:lang","nbt":"game.resource.countdown","interpret": true}'
data modify entity @s CustomName set from entity @e[type=text_display,limit=1,tag=res_display] text
kill @e[type=text_display,tag=res_display,tag=temp]