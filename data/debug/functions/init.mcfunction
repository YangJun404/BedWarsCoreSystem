# 全局初始化

# 显示提示
tellraw @a {"storage":"bw:lang","nbt":"global.init","interpret": true}

# # 卸载导入器
# execute if score #init mi_mem matches 1 run function debug:map_import/command/cancel
# execute if score #init si_mem matches 1 run function debug:shop_import/command/cancel

# 清除计划任务/时钟
schedule clear bw:lobby/map/init/clone/marker_clone
schedule clear bw:game/mutation/game_start/trigger
schedule clear bw:lobby/vote/start

schedule clear bw:global/clock/1tick
schedule clear bw:global/clock/2tick
schedule clear bw:global/clock/10tick
schedule clear bw:global/clock/15tick
schedule clear bw:global/clock/20tick

# 恢复所有可调用的模块
function bw:global/map/control/reset_all

# # 清理游戏区域和其他改动区域
# fill 0 319 0 0 318 0 air
# fill -149 -64 -149 149 45 149 air
# fill -100 43 140 101 -64 160 air
# kill @e[type=item]

# 清除实体
function bw:global/clear_entity
kill @e[tag=gamerule]
kill @e[type=marker,tag=map_center]

# 移除容器 NBT
data remove storage bw:map using
data remove storage bw:map using
data remove storage temp player_kill_streak
# data remove storage bw:maintenance content
# data remove storage temp version

# 玩家数据控制
effect clear @a
recipe take @a *
tag @a remove playing
tag @a remove afk_check

# 调用全局初始化
function bw:global/init

# 调用大厅初始化
function bw:lobby/init

# 调用游戏初始化
function bw:game/init

# 同步配置文件
function debug:config_sync

# HUB 控制
scoreboard objectives setdisplay below_name
scoreboard objectives setdisplay list
scoreboard objectives setdisplay sidebar

# 挂载系统时钟
schedule function bw:global/clock/1tick 1t replace
schedule function bw:global/clock/2tick 2t replace
schedule function bw:global/clock/10tick 10t replace
schedule function bw:global/clock/15tick 15t replace
schedule function bw:global/clock/20tick 20t replace

# 载入大厅状态
function bw:lobby/setup