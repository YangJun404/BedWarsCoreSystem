# 地图数据更新

# 初始化
execute unless data storage bw:map update[-1] run data modify storage bw:map update set from storage bw:map maps
execute unless score $max map matches -2147483648..2147483647 run scoreboard players set $max map -2147483648
execute unless score $min map matches -2147483648..2147483647 run scoreboard players set $min map 2147483647

# 抽样比较
execute store result score $check map run data get storage bw:map update[-1].id
scoreboard players operation $max map > $check map
scoreboard players operation $min map < $check map
scoreboard players reset $check map
data remove storage bw:map update[-1]

# 循环
execute if data storage bw:map update[-1] run function bw:lobby/map/data_update