# 保存微观模型

execute at @e[type=marker,tag=map_center,limit=1,sort=nearest] run data modify entity @e[type=marker,tag=map,tag=map_importer,limit=1,sort=nearest] data.map.mini_name set from block ~ 45 ~ name

tellraw @s [{"text": "[✔] ","bold": true,"color": "aqua"},{"text": "已更新实体数据：","bold": false},{"text": "data.map.mini_name","bold": false,"color": "white"},{"text": " 设定为 ","bold": false},{"nbt":"data.map.mini_name","entity": "@e[limit=1,tag=map_importer,type=marker,tag=map]","bold": false,"color": "white"}]

scoreboard players set @s mi_mem 500
tellraw @s [{"text": "[☞] ","bold": true,"color": "aqua"},{"text": "执行 ","bold": false},{"text": "/trigger mi_menu","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/trigger mi_menu"}},{"text": " 来看看下一步...","bold": false}]

scoreboard players reset @s mi_input