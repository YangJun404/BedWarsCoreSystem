# 重生中

# 倒计时
scoreboard players remove @s respawn_time 1

# 发送复活倒计时
execute unless score @s respawn_time = $ respawn_time run title @s title {"storage":"bw:lang","nbt":"game.respawn.respawning.title","interpret": true}
execute unless score @s respawn_time = $ respawn_time run title @s subtitle {"storage":"bw:lang","nbt":"game.respawn.respawning.subtitle","interpret": true}

# 复活完成
execute if score @s respawn_time matches 0 run function bw:game/respawn/respawn_complete