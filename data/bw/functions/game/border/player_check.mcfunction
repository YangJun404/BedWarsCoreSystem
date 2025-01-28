# # 判定玩家是否在边境外（正数=在内 负数=在外）
# execute store result score $border_border_x temp run data get entity @e[limit=1,tag=border,type=marker] Pos[0]
# scoreboard players operation $border_border_x temp *= $border_border_x temp
# execute store result score $border_border_z temp run data get entity @e[limit=1,tag=border,type=marker] Pos[2]
# scoreboard players operation $border_border_z temp *= $border_border_z temp
# scoreboard players operation $border_border temp = $border_border_x temp
# scoreboard players operation $border_border temp += $border_border_z temp

# execute store result score $border_player_x temp run data get entity @s Pos[0]
# scoreboard players operation $border_player_x temp *= $border_player_x temp
# execute store result score $border_player_z temp run data get entity @s Pos[2]
# scoreboard players operation $border_player_z temp *= $border_player_z temp
# scoreboard players operation $border_player temp = $border_player_x temp
# scoreboard players operation $border_player temp += $border_player_z temp

# scoreboard players operation $border temp -= $border_player temp
# scoreboard players operation @s temp = $border temp

# # 重置数据
# scoreboard players reset @s temp
# scoreboard players reset $border temp
# scoreboard players reset $border_player temp
# scoreboard players reset $border_player_x temp
# scoreboard players reset $border_player_z temp

# 数据控制
tag @s remove out_of_border
tag @s remove out_of_world
tag @s[type=player] add sys_checking

# as / at @e[type=marker,tag=border]
execute if entity @s[type=player] store result entity @e[type=marker,limit=1,tag=border] Pos[1] double 1 run data get entity @s Pos[1]
execute if entity @s[type=player] store result storage bw:basic border.max double 1 run scoreboard players get $size border
execute if entity @s[type=player] as @e[type=marker,limit=1,tag=border] at @s run return run function bw:game/border/player_check with storage bw:basic border

# 判定玩家位置
$execute as @a[distance=$(max)..,team=!debug,tag=playing,tag=sys_checking] run tag @s add out_of_border
execute as @a[distance=400..,team=!debug,tag=playing,tag=sys_checking] run tag @s add out_of_world

# 数据控制
tag @a remove sys_checking