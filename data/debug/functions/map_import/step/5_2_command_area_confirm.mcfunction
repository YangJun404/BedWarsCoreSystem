# 指令区域信息确认

execute store result score $map_id temp run data get entity @e[type=marker,limit=1,sort=nearest,tag=map,tag=map_importer] data.map.id

tellraw @s ""
tellraw @s {"text": ">> 步骤5_2：指令区域信息确认","bold": true,"color": "aqua"}
tellraw @s "现在，微观模型已经在地图中心上方生成！"
tellraw @s ["请",{"text": "回地图本体","underlined": true,"clickEvent": {"action": "run_command","value": "/tp @s @e[type=marker,tag=map_importer,tag=map_center,limit=1]"}},{"text": "，在y=44红盘处，将","bold": false},{"text": "command_area:","bold": false,"underlined": true},{"score":{"name": "$map_id","objective": "temp"},"bold": false,"underlined": true},{"text": "填入结构方块并保存","bold": false}]
tellraw @s ""
tellraw @s [{"text": "☞ 执行 ","bold": false,"color": "aqua"},{"text": "/function debug:map_import/trigger/command_area_complete","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/function debug:map_import/trigger/command_area_complete"}},{"text": " 来保存结构","bold": false}]
tellraw @s ""

scoreboard players reset $map_id temp