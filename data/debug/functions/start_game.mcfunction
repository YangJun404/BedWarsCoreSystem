# 直接启动游戏

execute if score $working gaming matches 1 run return run tellraw @s ["",{"text": "[✖] ","color": "red","bold": true},{"text": "无法在游戏时执行这条指令！","color": "red"}]

tag @a[team=!debug] add player

execute if score $voting vote matches 1..2 run function bw:lobby/vote/cancel

# 同步地图选择
scoreboard players operation $using map = $sel map

# 随机地图
execute if score $using map matches 0 run function bw:lobby/map/choice/random with storage bw:basic map

# 加载地图中心点
function bw:global/map/playing_area/generate_entity

# 快速模式
execute if score #sys_working map = $using map run scoreboard players set $fast_mode temp 1
execute if score #sys_working map = $using map run say [地图复制系统] 当前投票中的地图正在复制中，系统正在加速复制，造成卡顿属于正常现象。

function bw:game/start
tellraw @a [{"text": "[⏻] ","bold": true,"color": "aqua"},{"text": "管理员已强制启动游戏！","color": "aqua","bold": false}]