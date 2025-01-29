# 获得主岛半径
tp @s ~1 ~ ~
tellraw @a {"nbt":"Pos[0]","entity": "@s"}
scoreboard players add $main_island_r mi_mem 1
execute unless block ~ ~ ~ air run function debug:map_import/entity_even/island_check/get_main

execute if block ~ ~ ~ air run scoreboard players add $main_island_r mi_mem 4
execute if block ~ ~ ~ air run function debug:map_import/entity_event/island_check/get_road