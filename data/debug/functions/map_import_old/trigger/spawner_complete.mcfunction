# 将地图资源点数据全部导入数据实体

# 移除现有数据
data remove entity @e[type=minecraft:marker,tag=map,limit=1,tag=map_importer] data.map.spawner

# 数量统计
execute store result entity @e[type=marker,limit=1,sort=nearest,tag=map,tag=map_importer] data.map.spawner.number.copper double 1 if entity @e[type=marker,tag=res,tag=res_copper,tag=map_importer]
execute store result entity @e[type=marker,limit=1,sort=nearest,tag=map,tag=map_importer] data.map.spawner.number.iron double 1 if entity @e[type=marker,tag=res,tag=res_iron,tag=map_importer]
execute store result entity @e[type=marker,limit=1,sort=nearest,tag=map,tag=map_importer] data.map.spawner.number.diamond double 1 if entity @e[type=marker,tag=res,tag=res_diamond,tag=map_importer]

# 记录位置
## 通过偏移量计算游玩位置
execute as @e[type=marker,tag=res,tag=map_importer] run function debug:map_import/entity_event/res_offset_calculation

## 储存数据
execute as @e[type=marker,tag=res,tag=res_copper,tag=map_importer] run data modify entity @e[type=marker,limit=1,sort=nearest,tag=map,tag=map_importer] data.map.spawner.copper append from entity @s Pos
execute as @e[type=marker,tag=res,tag=res_iron,tag=map_importer] run data modify entity @e[type=marker,limit=1,sort=nearest,tag=map,tag=map_importer] data.map.spawner.iron append from entity @s Pos
execute as @e[type=marker,tag=res,tag=res_diamond,tag=map_importer] run data modify entity @e[type=marker,limit=1,sort=nearest,tag=map,tag=map_importer] data.map.spawner.diamond append from entity @s Pos

# 提示
tellraw @s [{"text": "[✔] ","bold": true,"color": "aqua"},{"text": "已更新实体数据：","bold": false},{"text": "data.map.spawner","bold": false,"color": "white"},{"text": " 设定为 ","bold": false},{"nbt":"data.map.spawner","entity": "@e[limit=1,tag=map_importer,type=marker,tag=map]","bold": false,"color": "white"}]

scoreboard players set @s mi_mem 320
tellraw @s [{"text": "[☞] ","bold": true,"color": "aqua"},{"text": "执行 ","bold": false},{"text": "/trigger mi_menu","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/trigger mi_menu"}},{"text": " 来看看下一步...","bold": false}]

scoreboard players reset @s mi_input