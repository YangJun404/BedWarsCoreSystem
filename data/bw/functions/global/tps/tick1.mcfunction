# 每 1 Tick 执行一次

# 增加计时器
scoreboard players add $tick tps 1

# 极值
execute store result score $worldborder_now tps run worldborder get
execute if score $worldborder_now tps = $worldborder_timer tps run function bw:global/tps/cal