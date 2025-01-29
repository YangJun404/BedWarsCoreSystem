# 设定地图边界数据

tellraw @s ""
tellraw @s {"text": ">> 步骤2_5：地图边界数据","bold": true,"color": "aqua"}
tellraw @s "边界系统将防止玩家走出地图，设定合适的边界数据是必要的..."
tellraw @s ""
tellraw @s "主岛半径："
tellraw @s [{"text": "☞ 执行 ","bold": false,"color": "aqua"},{"text": "/trigger mi_border_min","bold": false,"underlined": true,"clickEvent": {"action": "suggest_command","value": "/trigger mi_border_min set "}},{"text": " 来保存主岛半径","bold": false}]
tellraw @s ""
tellraw @s "地图半径："
tellraw @s [{"text": "☞ 执行 ","bold": false,"color": "aqua"},{"text": "/trigger mi_border","bold": false,"underlined": true,"clickEvent": {"action": "suggest_command","value": "/trigger mi_border set "}},{"text": " 来保存地图半径","bold": false}]
tellraw @s ""
tellraw @s "都完成了吗？"
tellraw @s [{"text": "☞ 执行 ","bold": false,"color": "aqua"},{"text": "/function debug:map_import/trigger/set_border","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/function debug:map_import/trigger/set_border"}},{"text": " 来确认所有操作","bold": false}]
tellraw @s ""