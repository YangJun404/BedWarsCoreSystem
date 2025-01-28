# 每 2 Tick 执行一次
# as @a[tag=!afk]

# 同步玩家y轴
execute store result entity @e[type=marker,limit=1,tag=border] Pos[1] double 1 run data get entity @s Pos[1]

# 显示边境位置
execute at @e[type=marker,tag=border] align y run function bw:game/border/wall_display/trigger
execute at @e[type=marker,tag=border] align y rotated ~90 ~ run function bw:game/border/wall_display/trigger
execute at @e[type=marker,tag=border] align y rotated ~180 ~ run function bw:game/border/wall_display/trigger
execute at @e[type=marker,tag=border] align y rotated ~270 ~ run function bw:game/border/wall_display/trigger


# 玩家面向边界
execute at @e[type=marker,tag=border] facing entity @s feet align y rotated ~ 0 run function bw:game/border/wall_display/trigger