# 生成游玩区域中心点
# $data modify entity @s Pos[0] set value $(x)
# $data modify entity @s Pos[2] set value $(z)
execute store result entity @s Pos[0] double 1 run data get storage bw:basic temp.x
execute store result entity @s Pos[2] double 1 run data get storage bw:basic temp.z
tag @s add playing_center
scoreboard players operation @s map = $using map
# tellraw @a ["Pos::@s // ",{"nbt":"Pos","entity": "@s"}]
# # tellraw @a ["map::@s // ",{"score":{"name": "@s","objective": "map"}}]
# $tellraw @a "x: $(x) // z: $(z)"