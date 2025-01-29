# 设定地图id

tellraw @s ""
tellraw @s {"text": ">> 步骤2_2：地图 ID 设定","bold": true,"color": "aqua"}
tellraw @s "地图 ID 是系统内部用来区分不同的地图而设定"

execute if data entity @e[type=marker,tag=map_importer,limit=1] data.map.id run tellraw @s ["系统已经自动填充了id（",{"nbt":"data.map.id","entity": "@e[type=marker,tag=map_importer,limit=1]"},"）\n\n",{"text": "☞ 执行 ","bold": false,"color": "aqua"},{"text": "/trigger debug:map_import/step_switch/230","bold": false,"underlined": true,"color": "aqua","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/230"}},{"text": " 来看看下一步...","bold": false,"color": "aqua"}]

execute unless data entity @e[type=marker,tag=map_importer,limit=1] data.map.id run tellraw @s [{"text": "☞ 执行 ","bold": false,"color": "aqua"},{"text": "/trigger mi_input set <id>","color": "aqua","bold": false,"underlined": true,"clickEvent": {"action": "suggest_command","value": "/trigger mi_input set "}},{"text": " 来设定地图 ID","bold": false}]
tellraw @s ""