#> bw:lobby/map/init/data/5nd
# 地图初始化 #5

# 放置地图实体全区域强加载区块

#debug
scoreboard players reset $debug_forceload temp 
$execute store success score $debug_forceload temp run forceload add ~ ~ ~-$(max) ~-$(max)
$execute store success score $debug_forceload temp run forceload add ~ ~ ~$(max) ~-$(max)
$execute store success score $debug_forceload temp run forceload add ~ ~ ~-$(max) ~$(max)
$execute store success score $debug_forceload temp run forceload add ~ ~ ~$(max) ~$(max)

scoreboard players add $lock temp 1
execute if score $lock temp matches 1 positioned ~ ~ ~1000 run function bw:global/map/init/data/5nd with storage bw:basic temp
execute if score $lock temp matches 1 run return 0
scoreboard players reset $lock temp 

# 收尾
scoreboard players reset $map_long temp
data remove storage bw:baisc temp.map_long

# 开始拷图
function bw:global/map/init/clone/trigger