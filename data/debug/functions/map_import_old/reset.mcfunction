# 重置系统

# 清除正在进行的程序
schedule clear debug:map_import/tick2

# 加载必要强加载
forceload add 85 85 -85 -85 

# 清除玩家标签
tag @a remove map_importer

# 清除实体
kill @e[tag=map_importer]

# 清除计分板
scoreboard objectives remove mi_mem
scoreboard objectives remove mi_menu
scoreboard objectives remove mi_input
scoreboard objectives remove mi_border
scoreboard objectives remove mi_border_min
scoreboard objectives remove mi_kill

# 更新地图统计数据
execute store result score $max map if entity @e[type=marker,tag=map,tag=!special_map]
scoreboard players reset $min map
execute as @e[type=marker,tag=map] run scoreboard players operation $min map < @s map

# 取消维护模式
gamerule doDaylightCycle true
gamerule sendCommandFeedback true