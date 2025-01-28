# 每 15 Tick 执行一次
schedule function bw:global/clock/15tick 15t replace

# 执行各个状态
execute if score $working gaming matches 1 run function bw:game/tick/15tick

# 玩家离开检测
execute store result score $total_count player_count if entity @a[team=!debug]
execute if score #leave_check player_count > $total_count player_count run function bw:global/event/player_leave
execute store result score #leave_check player_count run scoreboard players get $total_count player_count