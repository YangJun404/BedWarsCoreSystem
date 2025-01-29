# 判定是否有中心点

# 预先检测环境
execute unless entity @e[type=marker,tag=map_importer,tag=map_center] run tellraw @s [{"text": ">> ","color": "red","bold": true},{"text": "错误：没有找到中心点！","bold": false}]
execute unless entity @e[type=marker,tag=map_importer,tag=map_center] run return 1

# 创造微观模型
execute as @e[type=marker,tag=map_center] at @s positioned ~ 45 ~ run function debug:map_import/entity_event/init_minimap

# 发送结构名称并且要求填入
execute store result score $map_id temp run data get entity @e[type=marker,limit=1,sort=nearest,tag=map,tag=map_importer] data.map.id
tellraw @s {"text": "---------------------","color": "yellow"}
tellraw @s [{"text": "[⚠] ","color": "yellow","bold": true},{"text": "请","bold": false},{"text": "回地图本体","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/tp @s @e[type=marker,tag=map_importer,tag=map_center,limit=1]"}},{"text": "，在y=44处，将","bold": false},{"text": "map_mini:","bold": false,"underlined": true},{"score":{"name": "$map_id","objective": "temp"},"bold": false,"underlined": true},{"text": "填入结构方块并保存","bold": false}]
tellraw @s {"text": "---------------------","color": "yellow"}

scoreboard players reset $map_id temp

# 发送下一步提示
scoreboard players set @s mi_mem 420
tellraw @s ""
tellraw @s [{"text": "[☞] ","bold": true,"color": "aqua"},{"text": "完成了？执行 ","bold": false},{"text": "/trigger mi_menu","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/trigger mi_menu"}},{"text": " 来看看下一步...","bold": false}]