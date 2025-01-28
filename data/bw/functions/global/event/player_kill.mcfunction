# 玩家击杀事件

# 重置计分
scoreboard players reset @s kill_player

# 执行状态事件
execute if score $working gaming matches 1 run function bw:game/player_event/kill