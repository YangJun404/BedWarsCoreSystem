# 直接启动游戏

execute if score $working gaming matches 1 run tellraw @s ["",{"text": "[✖] ","color": "red","bold": true},{"text": "无法在游戏时执行这条指令！","color": "red"}]
execute if score $working gaming matches 1 run return 1

tag @a[team=!debug] add player
scoreboard players set $force_start temp 1

execute if score $voting vote matches 1..2 run function bw:lobby/vote/cancel
function bw:lobby/map/init/trigger

tellraw @a [{"text": "[⏻] ","bold": true,"color": "aqua"},{"text": "管理员已强制启动游戏！","color": "aqua","bold": false}]