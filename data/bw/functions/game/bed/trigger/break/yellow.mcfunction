# 破坏黄队的床

# 如果没床则退出
execute unless score $yellow_bed team matches 2 unless entity @e[type=marker,tag=yellow_bed] run return 2

# 清除方块
execute at @e[type=marker,tag=yellow_bed] run setblock ~ ~ ~ air

# 清除实体
kill @e[type=marker,tag=yellow_bed]

# 设定数值
scoreboard players set $yellow_bed team 2