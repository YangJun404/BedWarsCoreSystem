#> bw:lobby/map/init/data/6nd
# 地图初始化 #6

# 重置拷图系统
function bw:global/map/init/clone/reset
scoreboard players reset $fast_mode temp

# 收尾
forceload remove 150 150 0 0
forceload remove 1 1 -150 -150

scoreboard players reset $command_area_checking temp
setblock -8 50 -32 air

# # 如果是投票而造成地图加载，则现在允许玩家投票并且同步倒计时
# execute if score $voting vote matches 1..2 run function bw:lobby/vote/start

# # 如果是使用 /function start_game 造成地图加载，则现在启动游戏
# execute if score $force_start temp matches 1 run function bw:game/start
# scoreboard players reset $force_start temp

# 地图复制控制
function bw:global/map/cron/done