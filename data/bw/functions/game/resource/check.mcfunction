# 检测资源点是否出现积累物品太多的情况

# 检测周围资源
execute store result score $res_number temp run data get entity @e[type=item,distance=..3,limit=1,sort=nearest] Item.Count

# 抽取符合自己条件的数值用于对比
execute as @s[tag=res_diamond] run scoreboard players operation $res_max temp = $res_diamond_max gamerule
execute as @s[tag=res_iron] run scoreboard players operation $res_max temp = $res_iron_max gamerule
execute as @s[tag=res_copper] run scoreboard players operation $res_max temp = $res_copper_max gamerule

# 判断条件
execute if score $res_number temp >= $res_max temp run tag @s add res_max
execute if score $res_number temp < $res_max temp run tag @s remove res_max

# 清除缓存
scoreboard players reset $res_number temp
scoreboard players reset $res_max temp