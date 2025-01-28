# 每 1 Tick 执行一次
schedule function bw:global/clock/1tick 1t replace

# 状态执行
execute if score $working gaming matches 1 run function bw:game/tick/1tick

# tps 检测
function bw:global/tps/tick1