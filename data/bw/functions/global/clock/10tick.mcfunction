# 每 10 Tick 执行一次
schedule function bw:global/clock/10tick 10t replace

# 执行各个状态
execute if score $working gaming matches 1 run function bw:game/tick/10tick