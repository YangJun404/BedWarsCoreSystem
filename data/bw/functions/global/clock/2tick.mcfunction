# 每 2 Tick 执行一次
schedule function bw:global/clock/2tick 2t replace

# 状态执行
execute if score $working gaming matches 0 run function bw:lobby/tick2
execute if score $working gaming matches 1 run function bw:game/tick/2tick

# 玩家载入检测
execute as @a[team=!debug] unless score @s leave_game matches 0 run function bw:global/event/player_enter

# 玩家死亡检测
execute as @a[scores={death=1..},team=!debug] run function bw:global/event/player_death

# 防止玩家丢弃物品：如果特殊物品存在 Thrower 则要求强制捡起
execute as @e[type=item,nbt={Item:{tag:{Tags:["disable_throw"]}}}] if data entity @s Thrower run function bw:global/event/item_throw