# 生成游玩区域中心点
execute store result entity @s Pos[0] double 1 run data get storage bw:map using.generate_entity.x
execute store result entity @s Pos[1] double 1 run data get storage bw:map using.generate_entity.y
execute store result entity @s Pos[2] double 1 run data get storage bw:map using.generate_entity.z

tag @s add playing_center
scoreboard players operation @s map = $using map