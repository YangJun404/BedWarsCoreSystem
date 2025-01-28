# 每 1 Tick 执行一次

# 特殊玩法
execute if score $working mutation matches -1 run function bw:game/mutation/-1/tick/1tick

# 追踪火球
execute if score $working mutation matches 4 run function bw:game/mutation/4/tick1

# 爆炸箭矢
execute if score $working mutation matches 6 as @e[type=arrow,nbt={inGround:true}] at @s run function bw:game/mutation/6/tick1