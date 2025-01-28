# 取消/中断投票

function bw:lobby/vote/reset
scoreboard players reset $fast_mode temp
kill @e[tag=playing_center]
forceload remove all

# 提示
tellraw @a {"storage":"bw:lang","nbt":"lobby.vote.cancel","interpret": true}
execute as @a at @s run function lib:sounds/error