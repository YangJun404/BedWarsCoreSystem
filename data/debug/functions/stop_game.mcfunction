# 结束游戏

execute unless score $working gaming matches 1 run tellraw @s ["",{"text": "[✖] ","color": "red","bold": true},{"text": "无法在非游戏时执行这条指令！","color": "red"}]
execute unless score $working gaming matches 1 run return 1

function bw:game/game_end

tellraw @a [{"text": "[⏻] ","bold": true,"color": "aqua"},{"text": "管理员已强制停止游戏！","color": "aqua","bold": false}]