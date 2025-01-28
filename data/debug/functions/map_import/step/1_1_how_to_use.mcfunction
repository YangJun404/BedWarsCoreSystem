# 程序使用方法

tellraw @s ""
tellraw @s {"text": ">> 步骤1_1： 知道导入程序如何使用","bold": true,"color": "aqua"}
tellraw @s "导入程序分为两部分：目录与详细信息"
tellraw @s "目录是可以点击的，你可以直接跳过步骤但这会让地图出现问题。你也可以重新来一次，设定的更好"
tellraw @s "详细信息将告诉你如何完成这一步骤..."
tellraw @s ""
tellraw @s [{"text": "☞ 执行 ","bold": false,"color": "aqua"},{"text": "/function debug:map_import/step_switch/120","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/120"}},{"text": " 来看看下一步...","bold": false}]
tellraw @s ""