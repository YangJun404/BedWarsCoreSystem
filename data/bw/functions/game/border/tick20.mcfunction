# 每 20 Tick 执行一次

# 收缩边界
execute if score $size border > $size_min border if score $shrinking border matches 1 run scoreboard players remove $size border 1

# 玩家检测
execute as @a[tag=playing,team=!debug] at @s run function bw:game/border/player_check with storage bw:map using.border

# 发送警告并且给予伤害
title @a[tag=out_of_border,tag=playing,gamemode=survival] actionbar {"storage":"bw:lang","nbt":"game.border.warn","interpret": true}
execute as @a[tag=out_of_border,tag=playing,gamemode=survival] run damage @s 3 magic
execute as @a[tag=out_of_world,tag=playing,gamemode=survival] run damage @s 1919810 out_of_world