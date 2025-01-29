# 信息确认

tellraw @s ""
tellraw @s {"text": ">> 步骤6_0：地图信息确认","bold": true,"color": "aqua"}
tellraw @s "大部分设定已经存入地图！现在请确认是否导入地图..."
tellraw @s "如果是的话则继续，如果取消则执行 /function minecraft:map_inporter/cancel"
tellraw @s ""
tellraw @s [{"text": "☞ 执行 ","bold": false,"color": "aqua"},{"text": "/function debug:map_import/trigger/set_border","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/function debug:map_import/trigger/importer"}},{"text": " 来完成导入！","bold": false}]
tellraw @s ""