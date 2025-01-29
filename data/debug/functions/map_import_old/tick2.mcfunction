# 每 2 Tick 执行一次
schedule function debug:map_import/tick2 2t replace

# 玩家 Tick
execute as @a[team=debug,tag=map_importer] at @s run function debug:map_import/tick2_player

# 地图中心点
execute store result score $map_enter_number mi_mem if entity @e[type=marker,tag=map_importer,tag=map_center]
execute if score $map_enter_number mi_mem matches 2.. at @a[tag=map_importer] run kill @e[type=marker,tag=map_importer,tag=map_center,sort=furthest,limit=1]

# 显示特殊实体
execute as @e[tag=res,tag=res_iron,tag=map_importer] at @s run particle dust 1 1 1 2 ^ ^0.5 ^ 0 0 0 0 1 normal @a
execute as @e[tag=res,tag=res_diamond,tag=map_importer] at @s run particle dust 0.078 0.757 0.808 2 ^ ^0.5 ^ 0 0 0 0 1 normal @a
execute as @e[tag=res,tag=res_copper,tag=map_importer] at @s run particle dust 0.77 0.470 0.120 2 ^ ^0.5 ^ 0 0 0 0 1 normal @a

execute as @e[type=marker,tag=map_importer,tag=map_center] at @s run particle end_rod ~ ~0.5 ~

# 出生点和床标记放置事件
execute as @e[type=marker,tag=player_spawnpoint] at @s run function debug:map_import/entity_event/spawnpoint_set
execute as @e[type=marker,tag=bed_marker] at @s run function debug:map_import/entity_event/bed_marker

# ## 异常状态检测
# # 多个编辑中的实体
# execute store result score $entity_editing mi_mem if entity @e[type=marker,tag=map,tag=map_importer]
# execute if score $entity_editing mi_mem matches 2.. run tellraw @a [{"text": ">> ","bold": true,"color": "red"},{"text": "发送错误：多个实体存在中！"}]
# execute if score $entity_editing mi_mem matches 2.. run function debug:map_import/command/cancel