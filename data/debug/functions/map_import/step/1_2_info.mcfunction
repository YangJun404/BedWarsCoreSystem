# 发送地图需求

tellraw @s ""
tellraw @s {"text": ">> 步骤1_2：明白地图导入需求","bold": true,"color": "aqua"}
tellraw @s "在开始前，你应该注意到地图有以下几个必须点位："
tellraw @s {"text": "   资源点（数量随意）：铜、铁、钻石","color": "yellow"}
tellraw @s {"text": "   队伍（共4个）：出生点、床","color": "yellow"}
tellraw @s ""
tellraw @s "你应该注意到地图有以下几个可选点位："
tellraw @s {"text": "   队伍（共4个）：末影箱、普通箱","color": "green"}
tellraw @s ""

execute if entity @e[type=marker,tag=map,tag=map_importer] run scoreboard players set @s mi_mem 210
execute unless entity @e[type=marker,tag=map,tag=map_importer] run scoreboard players set @s mi_mem 130
tellraw @s [{"text": "☞ 执行 ","bold": false,"color": "aqua"},{"text": "/trigger mi_menu","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/trigger mi_menu"}},{"text": " 来看看下一步...","bold": false}]
tellraw @s ""