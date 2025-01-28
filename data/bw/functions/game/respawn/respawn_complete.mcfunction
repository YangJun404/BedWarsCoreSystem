# 玩家复活事件（复活等待完成后）

# 数据控制
title @s times 10 70 20 
gamemode survival @s
scoreboard players set @s respawn_time -1

# 发送提示
title @s clear

# 效果控制
effect clear @s
effect give @s resistance 5 255

# 给予初始装备
function bw:game/default_kit

# 重新进入地图
function bw:game/map/enter