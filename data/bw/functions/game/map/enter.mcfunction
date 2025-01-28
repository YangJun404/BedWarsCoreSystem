# 玩家载入地图

# 如果脚下没有方块则生成
execute as @e[type=marker,tag=spawn] at @s if block ~ ~-1 ~ air run setblock ~ ~-1 ~ bedrock

# 传送玩家并重设出生点
execute as @s[team=red] run tp @s @e[limit=1,sort=nearest,type=marker,tag=red_spawn]
execute as @s[team=red] at @e[type=marker,tag=red_spawn] run spawnpoint @s ~ ~30 ~ ~

execute as @s[team=blue] run tp @s @e[limit=1,sort=nearest,type=marker,tag=blue_spawn]
execute as @s[team=blue] at @e[type=marker,tag=blue_spawn] run spawnpoint @s ~ ~30 ~ ~ 

execute as @s[team=green] run tp @s @e[limit=1,sort=nearest,type=marker,tag=green_spawn]
execute as @s[team=green] at @e[type=marker,tag=green_spawn] run spawnpoint @s ~ ~30 ~ ~ 

execute as @s[team=yellow] run tp @s @e[limit=1,sort=nearest,type=marker,tag=yellow_spawn]
execute as @s[team=yellow] at @e[type=marker,tag=yellow_spawn] run spawnpoint @s ~ ~30 ~ ~ 