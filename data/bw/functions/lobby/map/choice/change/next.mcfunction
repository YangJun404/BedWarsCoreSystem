scoreboard players reset $map_change temp

# 选择下一张地图
scoreboard players add $sel map 1
execute if score $sel map > $max map run scoreboard players operation $sel map = $min map

# 触发触发器
function bw:lobby/map/choice/change/trigger