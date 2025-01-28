#> bw:lobby/map/init/data/3nd
# 地图初始化 #3

# 放置中心点强加载区块
$forceload add $(center_x) $(center_z) $(center_x) $(center_z)

# 放置中心点
$execute as @e[type=marker,tag=map_center] if score @s map matches $(id) run kill @s
# kill @e[type=marker,tag=map_center]
execute summon marker at @s run function bw:global/map/init/data/map_center_nbt with storage bw:map temp

# 以中心点执行后续
$execute as @e[tag=map_center] if score @s map matches $(id) at @s run function bw:global/map/init/data/4nd
$tellraw @a ["参数 (id):: global/map/init/data/3nd // ","$(id)"]