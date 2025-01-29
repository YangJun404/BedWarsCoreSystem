# 将团队数据全部导入数据实体
tellraw @s [{"text": "[✔] ","bold": true,"color": "aqua"},{"text": "已更新实体数据：","bold": false},{"text": "data.map.spawner","bold": false,"color": "white"},{"text": " 设定为 ","bold": false},{"nbt":"data.map.spawner","entity": "@e[limit=1,tag=map_importer,type=marker]","bold": false,"color": "white"}]

scoreboard players set @s mi_mem 320
tellraw @s [{"text": "[☞] ","bold": true,"color": "aqua"},{"text": "执行 ","bold": false},{"text": "/trigger mi_menu","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/trigger mi_menu"}},{"text": " 来看看下一步...","bold": false}]

scoreboard players reset @s mi_input