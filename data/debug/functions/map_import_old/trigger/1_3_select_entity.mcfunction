# 设定地图编辑编号

# 设定玩家编辑编号
scoreboard players operation @s mi_map = @s mi_input
execute store result storage debug:map_import tmep.id byte 1 run scoreboard players get @s mi_map

# 提示信息
function debug:map_import/trigger/1_3_select_entity_2 with storage debug:map_import temp

# 重新召唤中心点
execute as @e[type=marker,tag=map_center] if score @s mi_map = @p mi_map run kill @s 
execute if data entity @e[type=marker,tag=map,tag=map_importer,limit=1] data.map.id summon marker run function debug:map_import/entity_event/summon_center

# 收尾
scoreboard players reset @s mi_input