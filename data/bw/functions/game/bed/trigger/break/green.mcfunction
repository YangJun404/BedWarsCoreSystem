# 破坏绿队的床

# 如果没床则退出
execute unless score $green_bed team matches 2 unless entity @e[type=marker,tag=green_bed] run return 2

# 清除方块
execute at @e[type=marker,tag=green_bed] run setblock ~ ~ ~ air

# 清除实体
kill @e[type=marker,tag=green_bed]

# 设定数值
scoreboard players set $green_bed team 2