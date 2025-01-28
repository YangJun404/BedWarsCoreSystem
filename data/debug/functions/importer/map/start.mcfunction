execute if score #init mi_mem matches 1 run tellraw @s [{"text": "[⚠] ","color": "yellow","bold": true},{"text": "请注意！当前已经处于导入模式...","bold": false},{"text": "[我知道我在干什么]","bold": true,"clickEvent": {"action": "run_command","value": "/function debug:map_import/command/new_map"}}]
execute if score #init mi_mem matches 1 run return 0

function debug:map_import/command/new_map