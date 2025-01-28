scoreboard players reset $map_change temp

# 选择上一张地图
scoreboard players remove $sel map 1
execute if score $sel map < $min map run scoreboard players operation $sel map = $max map

# 触发触发器
function bw:lobby/map/choice/change/trigger