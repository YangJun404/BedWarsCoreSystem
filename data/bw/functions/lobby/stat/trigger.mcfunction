# 重新统计三个玩家：单局表现分、单局击杀、单局拆床
#note：需要注意最高分玩家可能离线

# 上局玩家表现分
scoreboard players reset $score_max temp
scoreboard players set $score_max temp -2147483648
scoreboard players operation $score_max temp > @a round_score
execute as @a if score @s round_score = $score_max temp run function bw:lobby/stat/ranking/round_score

# 上局玩家 KD
scoreboard players reset $score_max temp
scoreboard players set $score_max temp -2147483648
scoreboard players operation $score_max temp > @a round_kd
execute as @a if score @s round_kd = $score_max temp run function bw:lobby/stat/ranking/round_kd

# 上局玩家击杀
scoreboard players reset $score_max temp
scoreboard players set $score_max temp -2147483648
scoreboard players operation $score_max temp > @a round_kill
execute as @a if score @s round_score = $score_max temp run function bw:lobby/stat/ranking/round_kill