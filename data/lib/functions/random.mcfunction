#> lib:random
# 随机数发生器

# 最大数值 $random_max
# 最小数字 $random_min

# 输出：
# 介于最大数值和最小数值之间的随机数值：$andom

# 获得随机数
summon minecraft:marker ~ ~ ~ {Tags:["random"]}
execute store result score $random temp run data get entity @e[tag=random,limit=1] UUID[0]
kill @e[tag=random,type=marker]

# 计算
scoreboard players operation $random_max temp -= $random_min temp
scoreboard players add $random_max temp 1
scoreboard players operation $random temp %= $random_max temp
scoreboard players operation $random temp += $random_min temp

# 过时警告
tellraw @a[team=debug] "检测到 lib:random 函数的调用，请开发成员注意此函数即将过时。"