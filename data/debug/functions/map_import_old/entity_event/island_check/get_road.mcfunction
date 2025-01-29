# 传送自己到玩家岛屿
tp @s ~1 ~ ~
tellraw @a {"nbt":"Pos[0]","entity": "@s"}
execute unless block ~ ~ ~ air run function debug:map_import/entity_event/island_check/get_road
execute if block ~ ~ ~ air run function debug:map_import/entity_event/island_check/get_player_island