# 完成一次循环

# 5s 正常（20tps）有 5*20=100tick
# 5s 掉刻（10tps）有 5*10=50tick
# tps = tick/sec

# 计算
scoreboard players operation $tps tps = $tick tps
scoreboard players operation $tps tps /= $5 const

# 恢复
worldborder add 1

# loop
function bw:global/tps/start