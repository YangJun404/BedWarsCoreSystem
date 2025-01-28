# 触发投票

# 管理员正在强开游戏
execute if score $force_start temp matches 1 run tellraw @p {"storage":"bw:lang","nbt":"lobby.vote.trigger.error.force_start","interpret": true}
execute if score $force_start temp matches 1.. run return 1

# 维护模式
execute if score $disable_player_vote maintenance matches 1 run tellraw @p {"storage":"bw:lang","nbt":"lobby.vote.trigger.error.maintenance","interpret": true}
execute if score $disable_player_vote maintenance matches 1 run return 1

# 打断地图复制
execute store result score $map_copy temp run scoreboard players get $map_coping temp
execute if score $map_copy temp matches 1.. run function bw:lobby/map/init/clone/reset

# 打断投票
execute store result score $voting temp run scoreboard players get $voting vote
execute if score $voting temp matches 1..2 run function bw:lobby/vote/cancel
execute if score $voting temp matches 1..2 run return 1

# 没有解锁地图
execute as @e[type=marker,tag=map,tag=special_map] if score @s map = $sel map if data entity @s data.map.Lock run tellraw @p {"storage":"bw:lang","nbt":"lobby.vote.trigger.error.lock","interpret": true}
execute as @e[type=marker,tag=map,tag=special_map] if score @s map = $sel map if data entity @s data.map.Lock as @p at @s run function lib:sounds/error
execute as @e[type=marker,tag=map,tag=special_map] if score @s map = $sel map if data entity @s data.map.Lock run return 1

# 玩家不足
execute store result score $total_count player_count if entity @a[team=!debug,scores={afk_time=..179}]

execute if score $total_count player_count < $team_member gamerule run tellraw @p {"storage":"bw:lang","nbt":"lobby.vote.trigger.error.player_number","interpret": true}
execute if score $total_count player_count < $team_member gamerule run return 1

# 开始投票
function bw:lobby/vote/setup

# 收尾
scoreboard players reset $voting temp
scoreboard players reset $map_copy temp