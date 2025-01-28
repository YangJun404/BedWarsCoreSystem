# execute if entity @p[nbt={Inventory:[{Slot:-106b,id:"minecraft:red_wool"}]}] run data modify entity @e[type=marker,limit=1,sort=nearest,tag=map,tag=map_importer] data.map.team.red.bed.pos set from entity @s Pos
# execute as @p[nbt={Inventory:[{Slot:-106b,id:"minecraft:red_wool"}]}] run data modify entity @e[type=marker,limit=1,sort=nearest,tag=map,tag=map_importer] data.map.team.red.bed.rotation set from entity @s Rotation
# execute as @p[nbt={Inventory:[{Slot:-106b,id:"minecraft:red_wool"}]}] run title @s actionbar [{"text": "已更新实体数据 ","bold": false},{"text": ">> ","bold": true,"color": "aqua"},{"text": "data.map.team.red","bold": false,"color": "white"},{"text": " 设定为 ","bold": false},{"nbt":"data.map.team.red","entity": "@e[limit=1,tag=map_importer,type=marker,tag=map]","bold": false,"color": "white"}]

# execute if entity @p[nbt={Inventory:[{Slot:-106b,id:"minecraft:green_wool"}]}] run data modify entity @e[type=marker,limit=1,sort=nearest,tag=map,tag=map_importer] data.map.team.green.bed.pos set from entity @s Pos
# execute if entity @p[nbt={Inventory:[{Slot:-106b,id:"minecraft:green_wool"}]}] run data modify entity @e[type=marker,limit=1,sort=nearest,tag=map,tag=map_importer] data.map.team.green.bed.rotation set from entity @p Rotation 
# execute as @p[nbt={Inventory:[{Slot:-106b,id:"minecraft:green_wool"}]}] run title @s actionbar [{"text": "已更新实体数据 ","bold": false},{"text": ">> ","bold": true,"color": "aqua"},{"text": "data.map.team.green","bold": false,"color": "white"},{"text": " 设定为 ","bold": false},{"nbt":"data.map.team.green","entity": "@e[limit=1,tag=map_importer,type=marker,tag=map]","bold": false,"color": "white"}]

# execute if entity @p[nbt={Inventory:[{Slot:-106b,id:"minecraft:yellow_wool"}]}] run data modify entity @e[type=marker,limit=1,sort=nearest,tag=map,tag=map_importer] data.map.team.yellow.bed.pos set from entity @s Pos
# execute if entity @p[nbt={Inventory:[{Slot:-106b,id:"minecraft:yellow_wool"}]}] run data modify entity @e[type=marker,limit=1,sort=nearest,tag=map,tag=map_importer] data.map.team.yellow.bed.rotation set from entity @p Rotation 
# execute as @p[nbt={Inventory:[{Slot:-106b,id:"minecraft:yellow_wool"}]}] run title @s actionbar [{"text": "已更新实体数据 ","bold": false},{"text": ">> ","bold": true,"color": "aqua"},{"text": "data.map.team.yellow","bold": false,"color": "white"},{"text": " 设定为 ","bold": false},{"nbt":"data.map.team.yellow","entity": "@e[limit=1,tag=map_importer,type=marker,tag=map]","bold": false,"color": "white"}]

# execute if entity @p[nbt={Inventory:[{Slot:-106b,id:"minecraft:blue_wool"}]}] run data modify entity @e[type=marker,limit=1,sort=nearest,tag=map,tag=map_importer] data.map.team.blue.bed.pos set from entity @s Pos
# execute if entity @p[nbt={Inventory:[{Slot:-106b,id:"minecraft:blue_wool"}]}] run data modify entity @e[type=marker,limit=1,sort=nearest,tag=map,tag=map_importer] data.map.team.blue.bed.rotation set from entity @p Rotation 
# execute as @p[nbt={Inventory:[{Slot:-106b,id:"minecraft:blue_wool"}]}] run title @s actionbar [{"text": "已更新实体数据 ","bold": false},{"text": ">> ","bold": true,"color": "aqua"},{"text": "data.map.team.blue","bold": false,"color": "white"},{"text": " 设定为 ","bold": false},{"nbt":"data.map.team.blue","entity": "@e[limit=1,tag=map_importer,type=marker,tag=map]","bold": false,"color": "white"}]

# particle dust 1 0 1 2 ^ ^0.5 ^ 0 0 0 0 1 normal @a
# kill @s 

# 展示粒子效果
particle dust 0.7 0 1 2 ^ ^0.5 ^ 0 0 0 0 1 normal @a

# 保存朝向数据到实体
execute if entity @s[tag=blue_team] run data modify entity @e[type=marker,limit=1,sort=nearest,tag=map,tag=map_importer] data.map.team.blue.bed.rotation set from entity @p Rotation 
execute if entity @s[tag=red_team] run data modify entity @e[type=marker,limit=1,sort=nearest,tag=map,tag=map_importer] data.map.team.red.bed.rotation set from entity @p Rotation 
execute if entity @s[tag=green_team] run data modify entity @e[type=marker,limit=1,sort=nearest,tag=map,tag=map_importer] data.map.team.green.bed.rotation set from entity @p Rotation 
execute if entity @s[tag=yellow_team] run data modify entity @e[type=marker,limit=1,sort=nearest,tag=map,tag=map_importer] data.map.team.yellow.bed.rotation set from entity @p Rotation 

# 保存临时实体位置
execute store result score $entity_x mi_mem run data get entity @s Pos[0]
execute store result score $entity_y mi_mem run data get entity @s Pos[1]
execute store result score $entity_z mi_mem run data get entity @s Pos[2]

# 通过偏移量计算游玩区域位置
scoreboard players operation $entity_x mi_mem -= $center_x mi_mem
scoreboard players operation $entity_y mi_mem -= $center_y mi_mem
scoreboard players operation $entity_z mi_mem -= $center_z mi_mem

# 矫正 xz 轴
scoreboard players operation $entity_x mi_mem *= $10 const
scoreboard players operation $entity_z mi_mem *= $10 const

scoreboard players operation $entity_x mi_mem += $5 const
scoreboard players operation $entity_z mi_mem += $5 const

# 保存资源点数据
execute store result entity @s Pos[0] double 0.1 run scoreboard players get $entity_x mi_mem
execute store result entity @s Pos[1] double 1 run scoreboard players get $entity_y mi_mem
execute store result entity @s Pos[2] double 0.1 run scoreboard players get $entity_z mi_mem

# 保存位置数据到实体
execute if entity @s[tag=blue_team] run data modify entity @e[limit=1,tag=map_importer,type=marker,tag=map] data.map.team.blue.bed.pos set from entity @s Pos
execute if entity @s[tag=blue_team] run title @a[tag=map_importer,team=debug] actionbar [{"text": "已更新实体数据 ","bold": false},{"text": ">> ","bold": true,"color": "aqua"},{"text": "data.map.team.blue","bold": false,"color": "white"},{"text": " 设定为 ","bold": false},{"nbt":"data.map.team.blue","entity": "@e[limit=1,tag=map_importer,type=marker,tag=map]","bold": false,"color": "white"}]

execute if entity @s[tag=red_team] run data modify entity @e[limit=1,tag=map_importer,type=marker,tag=map] data.map.team.red.bed.pos set from entity @s Pos
execute if entity @s[tag=red_team] run title @a[tag=map_importer,team=debug] actionbar [{"text": "已更新实体数据 ","bold": false},{"text": ">> ","bold": true,"color": "aqua"},{"text": "data.map.team.red","bold": false,"color": "white"},{"text": " 设定为 ","bold": false},{"nbt":"data.map.team.red","entity": "@e[limit=1,tag=map_importer,type=marker,tag=map]","bold": false,"color": "white"}]

execute if entity @s[tag=green_team] run data modify entity @e[limit=1,tag=map_importer,type=marker,tag=map] data.map.team.green.bed.pos set from entity @s Pos
execute if entity @s[tag=green_team] run title @a[tag=map_importer,team=debug] actionbar [{"text": "已更新实体数据 ","bold": false},{"text": ">> ","bold": true,"color": "aqua"},{"text": "data.map.team.green","bold": false,"color": "white"},{"text": " 设定为 ","bold": false},{"nbt":"data.map.team.green","entity": "@e[limit=1,tag=map_importer,type=marker,tag=map]","bold": false,"color": "white"}]

execute if entity @s[tag=yellow_team] run data modify entity @e[limit=1,tag=map_importer,type=marker,tag=map] data.map.team.yellow.bed.pos set from entity @s Pos
execute if entity @s[tag=yellow_team] run title @a[tag=map_importer,team=debug] actionbar [{"text": "已更新实体数据 ","bold": false},{"text": ">> ","bold": true,"color": "aqua"},{"text": "data.map.team.yellow","bold": false,"color": "white"},{"text": " 设定为 ","bold": false},{"nbt":"data.map.team.yellow","entity": "@e[limit=1,tag=map_importer,type=marker,tag=map]","bold": false,"color": "white"}]

# 收尾
scoreboard players reset $entity_x mi_mem
scoreboard players reset $entity_y mi_mem
scoreboard players reset $entity_z mi_mem
kill @s 