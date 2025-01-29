# 设定地图id

tellraw @s ""
tellraw @s {"text": ">> 步骤2_1：特殊地图设定","bold": true,"color": "aqua"}
tellraw @s "特殊地图需要特殊的解锁方式，需要地图制作者手动设定。"
tellraw @s "并且地图将放置于地图选择的末端，随机地图不会随机到特殊地图"
tellraw @s ""

tellraw @s ["如果认为需要设定为特殊地图："]
tellraw @s [{"text": "☞ 执行 ","bold": false,"color": "aqua"},{"text": "/trigger mi_input set 1","bold": false,"underlined": true,"clickEvent": {"action": "suggest_command","value": "/trigger mi_input set 1"}},{"text": " 来设定","bold": false}]
tellraw @s ""
tellraw @s ["如果认为需要撤回特殊地图的设定："]
tellraw @s [{"text": "☞ 执行 ","bold": false,"color": "aqua"},{"text": "/trigger mi_input set 2","bold": false,"underlined": true,"clickEvent": {"action": "suggest_command","value": "/trigger mi_input set 2"}},{"text": " 来取消设定","bold": false}]
tellraw @s ""
tellraw @s "如果认为没人任何需要执行的操作："
tellraw @s [{"text": "☞ 执行 ","bold": false,"color": "aqua"},{"text": "/trigger debug:map_import/step_switch/220","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/220"}},{"text": " 来看看下一步...","bold": false}]
tellraw @s ""