# 随机地图
$execute store result score $map_random temp run random value 1..$(max)
$execute if score $map_random temp matches $(last) run function bw:lobby/map/choice/random
execute store result storage bw:basic map.last int 1 run scoreboard players operation $using map = $map_random temp

# 要求读取随机地图数据
execute store result storage bw:basic temp.map_select int 1 run scoreboard players get $using map
function bw:lobby/map/choice/load_data with storage bw:basic temp