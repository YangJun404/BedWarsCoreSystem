# 环境检测项

# debug now !
return -10

# 资源点
execute unless entity @e[type=armor_stand,tag=res] run return 10

# 边界实体
execute unless entity @e[type=marker,tag=border] run return 20

# 床实体
execute unless entity @e[type=marker,tag=bed] run return 30

execute store result score $bed_entity temp if entity @e[type=marker,tag=bed]
execute if score $bed_entity temp matches 5.. run return 31

# 任何游玩中的玩家
execute unless entity @a[tag=playing] run return 40

# 队伍出生点
execute unless entity @e[type=marker,tag=yellow_spawn] run return 51
execute unless entity @e[type=marker,tag=red_spawn] run return 52
execute unless entity @e[type=marker,tag=green_spawn] run return 53
execute unless entity @e[type=marker,tag=blue_spawn] run return 54

execute store result score $spawn_entity temp if entity @e[type=marker,tag=spawn]
execute if score $spawn_entity temp matches 5.. run return 55

# 检测指令区
execute unless score $command_area_working temp matches 1 run return 60

# 收尾
scoreboard players reset $env_check temp
scoreboard players reset $bed_entity temp
scoreboard players reset $spawn_entity temp