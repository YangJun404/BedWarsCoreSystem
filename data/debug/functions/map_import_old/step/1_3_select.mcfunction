# 选择地图实体

tellraw @s ""
tellraw @s {"text": ">> 步骤1_3：手动选择一张地图编号","bold": true,"color": "aqua"}
tellraw @s "地图“存储”存有一张地图的所有数据，而此程序是通过创造、添加和修改它的数据来实时编辑地图"
tellraw @s ""

tellraw @s "如果没有实体正在编辑："
tellraw @s [{"text": "☞ 执行 ","bold": false,"color": "aqua"},{"text": "/trigger mi_input set","bold": false,"underlined": true,"clickEvent": {"action": "suggest_command","value": "/trigger mi_input set "}},{"text": " 来设定需要编辑的地图编号","bold": false}]
tellraw @s ""
tellraw @s "如果已经选择了一个数据实体："
tellraw @s [{"text": "☞ 执行 ","bold": false,"color": "aqua"},{"text": "/trigger debug:map_import/step_switch/210","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/210"}},{"text": " 来看看下一步...","bold": false}]
tellraw @s ""