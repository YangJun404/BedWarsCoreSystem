# 设定地图 ID

# # 预先检测环境
# execute if data entity @e[type=marker,tag=map_importer,limit=1] data.map.id run tellraw @s [{"text": "[✖] ","color": "red","bold": true},{"text": "错误：已经设定了地图 ID ！","bold": false}]
# execute if data entity @e[type=marker,tag=map_importer,limit=1] data.map.id run return 1

# 设定地图id
execute store result entity @e[limit=1,tag=map_importer,type=marker] data.map.id double 1 run scoreboard players get @s mi_input
execute store result score @e[limit=1,tag=map_importer,type=marker] map run data get entity @e[limit=1,tag=map_importer,type=marker] data.map.id

tellraw @s [{"text": "[✔] ","bold": true,"color": "aqua"},{"text": "已更新实体数据：","bold": false},{"text": "data.map.id","bold": false,"color": "white"},{"text": " 设定为 ","bold": false},{"nbt":"data.map.id","entity": "@e[limit=1,tag=map_importer,type=marker]","bold": false,"color": "white"}]


# 跳转到下一步
scoreboard players set @s mi_mem 230
tellraw @s [{"text": "[☞] ","bold": true,"color": "aqua"},{"text": "执行 ","bold": false},{"text": "/trigger mi_menu","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/trigger mi_menu"}},{"text": " 来看看下一步...","bold": false}]

# 收尾
scoreboard players reset @s mi_input