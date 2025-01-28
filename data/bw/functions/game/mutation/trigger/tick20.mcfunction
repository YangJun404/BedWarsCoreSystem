# 每 20 Tick 执行一次

# 追踪火球
execute if score $working mutation matches 4 run function bw:game/mutation/4/tick20

# 鸡尾酒
execute if score $working mutation matches 7 run function bw:game/mutation/7/tick20