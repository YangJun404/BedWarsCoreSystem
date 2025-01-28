# 初始化记分板
scoreboard players set $tick tps 0

execute store result score $worldborder_timer tps run worldborder get
scoreboard players remove $worldborder_timer tps 1

# 开始累积计算值
worldborder add -1 5