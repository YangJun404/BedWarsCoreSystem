#> bw:lobby/map/init/data/4nd
# 地图初始化 #4

tellraw @a ["DATA Tags::@s // ",{"nbt":"Tags","entity": "@s"}]
tellraw @a ["SCORE @s::map // ",{"score":{"name": "@s","objective": "map"}}]


# 计算需要的强加载区块
execute store result score $map_long temp run data get storage bw:map clone.data.border.max
scoreboard players operation $map_long temp *= $2 const
scoreboard players add $map_long temp 1

execute store result storage bw:basic temp.max int 1 run scoreboard players get $map_long temp

# GO ON
function bw:global/map/init/data/5nd with storage bw:basic temp