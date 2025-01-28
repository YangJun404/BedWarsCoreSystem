# 指令区域初始化

tellraw @s ""
tellraw @s {"text": ">> 步骤5_1：指令区域初始化","bold": true,"color": "aqua"}
tellraw @s "指令区域是一张地图的可选物，用于存放针对一地图的命令方块"
tellraw @s ""
tellraw @s [{"text": "☞ 执行 ","bold": false,"color": "aqua"},{"text": "/function debug:map_import/trigger/command_area_complete","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/function debug:map_import/trigger/init_command_area"}},{"text": " 来在地图最上方进行指令区域初始化","bold": false}]
tellraw @s ""