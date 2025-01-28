# 设定地图名称
data modify entity @e[limit=1,tag=map_importer,type=marker] data.map.name set from entity @s SelectedItem.tag.display.Name
data modify entity @e[limit=1,tag=map_importer,type=marker] CustomName set from entity @e[limit=1,tag=map_importer,type=marker] data.map.name

clear @s anvil{Tags:["map_importer"]}
clear @s iron_nugget{Tags:["map_importer"]}

tellraw @s [{"text": "[✔] ","bold": true,"color": "aqua"},{"text": "已更新实体数据：","bold": false},{"text": "data.map.name","bold": false,"color": "white"},{"text": " 设定为 ","bold": false},{"nbt":"data.map.name","entity": "@e[limit=1,tag=map_importer,type=marker]","bold": false,"color": "white"}]

scoreboard players set @s mi_mem 240
tellraw @s [{"text": "[☞] ","bold": true,"color": "aqua"},{"text": "执行 ","bold": false},{"text": "/trigger mi_menu","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/trigger mi_menu"}},{"text": " 来看看下一步...","bold": false}]

scoreboard players reset @s mi_input