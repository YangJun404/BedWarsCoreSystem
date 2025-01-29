# 导入新地图

# 设定默认编辑地图的 id
scoreboard players set @s mi_map -2147483648 
scoreboard players operation @s mi_map > $max map
scoreboard players operation @s mi_map += $1 const

execute store result entity @s data.map.id double 1 run scoreboard players get @s map

# 开展主程序
execute unless score #init mi_mem matches 1 run function debug:map_import/init

# 玩家数据设定
team join debug @s
tag @s add map_importer

# 设定玩家步数
scoreboard players set @s mi_mem 110

# 发送主菜单
function debug:map_import/step/show