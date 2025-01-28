# 更新中心点数据

scoreboard players operation @s mi_map = @p[tag=map_importer] mi_map

data modify entity @s Pos set from entity @e[tag=map,tag=map_importer,limit=1] data.map.center
data modify entity @s Tags set value ["map_center"]