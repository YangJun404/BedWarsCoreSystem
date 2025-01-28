# 每 2 Tick 执行一次
# 动画实现

# 边界旋转实现
tp @s ~ ~ ~ ~3 ~

# 玩家 Tick
execute as @a[tag=!afk] run function bw:game/border/tick2_player

# tp YJ_ ~ ~ ~ ~ ~
# execute as @a[tag=!afk,name=!YJ_] at @e[type=marker,tag=border] facing entity @s feet align y rotated ~ 0 run tp YJ_ ~ ~ ~ ~ ~
# execute as @a[tag=!afk,name=!YJ_] at @e[type=marker,tag=border] align y run tp YJ_ ~ ~ ~ ~ ~