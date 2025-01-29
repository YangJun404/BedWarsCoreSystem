# 设定中心点
execute store result entity @e[limit=1,tag=map,tag=map_importer,type=marker] data.map.border.max double 1 run scoreboard players get @s mi_border
execute store result entity @e[limit=1,tag=map,tag=map_importer,type=marker] data.map.border.min double 1 run scoreboard players get @s mi_border_min 

scoreboard players reset @s mi_border
scoreboard players reset @s mi_border_min
scoreboard players reset @s mi_input

tellraw @s [{"text": "[✔] ","bold": true,"color": "aqua"},{"text": "已更新实体数据：","bold": false},{"text": "data.map.border","bold": false,"color": "white"},{"text": " 设定为 ","bold": false},{"nbt":"data.map.border","entity": "@e[limit=1,tag=map_importer,type=marker,tag=map]","bold": false,"color": "white"}]

scoreboard players set @s mi_mem 310
tellraw @s [{"text": "[☞] ","bold": true,"color": "aqua"},{"text": "执行 ","bold": false},{"text": "/trigger mi_menu","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/trigger mi_menu"}},{"text": " 来看看下一步...","bold": false}]