# 移除挂机玩家
# as @a[score={afk_time=180..}]

# 数据操控
function bw:game/player_event/spec_join

# 发送提示
tellraw @a[distance=0.1..] {"storage":"bw:lang","nbt":"game.afk_leave.other","interpret": true}
tellraw @s {"storage":"bw:lang","nbt":"game.afk_leave.own","interpret": true}