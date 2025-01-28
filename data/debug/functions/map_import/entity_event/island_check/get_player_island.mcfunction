# 获得主岛至初始岛屿的路径长度
tp @s ~1 ~ ~
tellraw @a {"nbt":"Pos[0]","entity": "@s"}
scoreboard players add $player_island_number mi_mem 1
execute unless block ~ ~ ~ air run function debug:map_import/entity_event/island_check/get_player_island