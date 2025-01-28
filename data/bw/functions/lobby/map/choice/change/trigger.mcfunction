#> bw:lobby/map/choice/trigger
# 地图更换触发器

# 打断投票
execute if score $voting vote matches 1..2 run function bw:lobby/vote/cancel

# 加载数据
execute store result storage bw:basic temp.map_select int 1 run scoreboard players get $sel map
function bw:lobby/map/choice/load_data with storage bw:basic temp

# 更新地图
function bw:lobby/map/change

# 解锁地图
function bw:lobby/map/lock/tool/give

# 消息提示
title @a actionbar {"storage":"bw:lang","nbt":"lobby.map.choice.change","interpret": true}