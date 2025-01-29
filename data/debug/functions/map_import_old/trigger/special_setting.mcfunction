# 特殊地图设定
# 如果是特殊地图：
#   id 为负数作为排列
#   需要解锁才可以选择

# 输入检测
execute unless score @s mi_input matches 1..2 run tellraw @s [{"text": "[✖] ","color": "red","bold": true},{"text": "输入的数值不正确！","bold": false}]
execute unless score @s mi_input matches 1..2 run return 1

# 设定空 ID
scoreboard players reset @e[tag=map,tag=map_impsorter,limit=1,type=marker] map

# 设定（mi_input=1）
## 标签
execute if score @s mi_input matches 1 run tag @e[tag=map,tag=map_importer,type=marker] add special_map

## ID
execute if score @s mi_input matches 1 as @e[type=marker,tag=map,tag=!map_importer] run scoreboard players operation $map_min temp < @s map
execute if score @s mi_input matches 1 run scoreboard players remove $map_min temp 1
execute if score @s mi_input matches 1 run scoreboard players operation @e[tag=map,tag=map_importer,type=marker] map = $map_min temp
execute if score @s mi_input matches 1 run scoreboard players reset $map_min temp

# 撤回设定（mi_input=2）
## 标签
execute if score @s mi_input matches 2 run tag @e[tag=map,tag=map_importer,type=marker] remove special_map
## ID
execute if score @s mi_input matches 2 as @e[type=marker,tag=map,tag=!map_importer,tag=!special_map] run scoreboard players operation $map_max temp > @s map
execute if score @s mi_input matches 2 run scoreboard players operation $map_max temp += $1 const
execute if score @s mi_input matches 2 run scoreboard players operation @e[tag=map,tag=map_importer,type=marker] map = $map_max temp
execute if score @s mi_input matches 2 run scoreboard players reset $map_max temp

# 将计分板 ID 设定为 NBT 
execute as @e[limit=1,tag=map_importer,type=marker,tag=map] store result entity @s data.map.id double 1 run scoreboard players get @s map

# 发送提示
tellraw @s [{"text": "[✔] ","bold": true,"color": "aqua"},{"text": "已更新实体数据：","bold": false},{"text": "data.map.id","bold": false,"color": "white"},{"text": " 设定为 ","bold": false},{"nbt":"data.map.id","entity": "@e[limit=1,tag=map_importer,type=marker,tag=map]","bold": false,"color": "white"}]
tellraw @s [{"text": "[✔] ","bold": true,"color": "aqua"},{"text": "已更新实体数据：","bold": false},{"text": "Tags","bold": false,"color": "white"},{"text": " 设定为 ","bold": false},{"nbt":"Tags","entity": "@e[limit=1,tag=map_importer,type=marker,tag=map]","bold": false,"color": "white"}]

# 跳转到下一步
scoreboard players set @s mi_mem 220
tellraw @s [{"text": "[☞] ","bold": true,"color": "aqua"},{"text": "执行 ","bold": false},{"text": "/trigger mi_menu","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/trigger mi_menu"}},{"text": " 来看看下一步...","bold": false}]

# 重置玩家输入
scoreboard players reset @s mi_input