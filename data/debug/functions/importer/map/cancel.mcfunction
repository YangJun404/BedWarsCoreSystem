execute if score #init mi_mem matches 1 run tellraw @s [{"text": "[⚠] ","color": "yellow","bold": true},{"text": "请注意！取消导入将会删除正在编辑的实体...","bold": false},{"text": "[我知道我在干什么]","bold": true,"clickEvent": {"action": "run_command","value": "/function debug:map_import/command/cancel"}}]
execute if score #init mi_mem matches 1 run return 0

function debug:map_import/command/cancel