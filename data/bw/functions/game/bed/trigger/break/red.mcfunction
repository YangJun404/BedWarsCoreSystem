# 破坏红队的床

# 如果没床则退出
execute unless score $red_bed team matches 2 unless entity @e[type=marker,tag=red_bed] run return 2

# 清除方块
execute at @e[type=marker,tag=red_bed] run setblock ~ ~ ~ air

# 清除实体
kill @e[type=marker,tag=red_bed]

# 设定数值
scoreboard players set $red_bed team 2