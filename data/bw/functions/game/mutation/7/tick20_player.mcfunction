# 给予玩家随机效果

# 随机抽取
execute store result score $random temp run random value 1..10

# 给予效果与提示
title @s title ""
execute if score $random temp matches 1 run effect give @s invisibility 13 1
execute if score $random temp matches 1 run title @s subtitle "隐身Ⅰ"

execute if score $random temp matches 2 run effect give @s jump_boost 13 1
execute if score $random temp matches 2 run title @s subtitle "跳跃提升Ⅰ"

execute if score $random temp matches 3 run effect give @s resistance 13 3
execute if score $random temp matches 3 run title @s subtitle "抗性提升 Ⅲ"

execute if score $random temp matches 4 run effect give @s conduit_power 13 1
execute if score $random temp matches 4 run title @s subtitle "潮涌能量Ⅰ"

execute if score $random temp matches 5 run effect give @s regeneration 13 1
execute if score $random temp matches 5 run title @s subtitle "生命恢复Ⅰ"

execute if score $random temp matches 6 run effect give @s strength 13 1
execute if score $random temp matches 6 run title @s subtitle "力量Ⅰ"

execute if score $random temp matches 7 run effect give @s dolphins_grace 13 1
execute if score $random temp matches 7 run title @s subtitle "海豚的恩惠Ⅰ"

execute if score $random temp matches 8 run effect give @s slow_falling 13 1
execute if score $random temp matches 8 run title @s subtitle "缓降Ⅰ"

execute if score $random temp matches 9 run effect give @s speed 13 1
execute if score $random temp matches 9 run title @s subtitle "迅捷Ⅰ"

execute if score $random temp matches 10 run effect give @s fire_resistance 13 1
execute if score $random temp matches 10 run title @s subtitle "抗火Ⅰ"

# 收尾
scoreboard players reset $random temp
scoreboard players reset $random_max temp
scoreboard players reset $random_min temp