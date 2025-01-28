# 环境变量检测失败

# 音效
execute as @a at @s run function lib:sounds/error

# 具体原因
execute if score $env_check temp matches -10 run tellraw @a {"storage":"bw:lang","nbt":"game.env_check.fail.-10","interpret": true}
execute if score $env_check temp matches 10 run tellraw @a {"storage":"bw:lang","nbt":"game.env_check.fail.10","interpret": true}
execute if score $env_check temp matches 20 run tellraw @a {"storage":"bw:lang","nbt":"game.env_check.fail.20","interpret": true}
execute if score $env_check temp matches 30 run tellraw @a {"storage":"bw:lang","nbt":"game.env_check.fail.30","interpret": true}
execute if score $env_check temp matches 31 run tellraw @a {"storage":"bw:lang","nbt":"game.env_check.fail.31","interpret": true}
execute if score $env_check temp matches 40 run tellraw @a {"storage":"bw:lang","nbt":"game.env_check.fail.40","interpret": true}
execute if score $env_check temp matches 51 run tellraw @a {"storage":"bw:lang","nbt":"game.env_check.fail.51","interpret": true}
execute if score $env_check temp matches 52 run tellraw @a {"storage":"bw:lang","nbt":"game.env_check.fail.52","interpret": true}
execute if score $env_check temp matches 53 run tellraw @a {"storage":"bw:lang","nbt":"game.env_check.fail.53","interpret": true}
execute if score $env_check temp matches 54 run tellraw @a {"storage":"bw:lang","nbt":"game.env_check.fail.54","interpret": true}
execute if score $env_check temp matches 55 run tellraw @a {"storage":"bw:lang","nbt":"game.env_check.fail.55","interpret": true}
execute if score $env_check temp matches 60 run tellraw @a {"storage":"bw:lang","nbt":"game.env_check.fail.60","interpret": true}

# 清除地图载入的实体
function bw:global/clear_entity

# 延迟载入大厅
schedule function bw:lobby/setup 5t replace

# 收尾
schedule clear bw:game/mutation/game_start/trigger
scoreboard players reset $bed_entity temp
scoreboard players reset $spawn_entity temp