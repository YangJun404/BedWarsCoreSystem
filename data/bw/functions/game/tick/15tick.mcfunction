# 每 15 Tick 执行一次

# 玩家时钟
execute as @a[tag=playing,tag=!afk,team=!debug] at @s run function bw:game/tick/15tick_player