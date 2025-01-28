# 每 2 Tick 由特殊玩家执行一次

## 计分板触发
# 展示菜单
execute as @s[scores={mi_menu=1..}] run function debug:map_import/step/show
scoreboard players reset @a[scores={mi_menu=1..}] mi_menu

# 选择实体
execute as @s[scores={mi_mem=130}] if score @s mi_input = @s mi_input unless score @s mi_input matches 0 run function debug:map_import/trigger/1_3_select_entity

# 特殊地图设定
execute as @s[scores={mi_mem=210,mi_input=1..}] run function debug:map_import/trigger/special_setting

# 地图id设定
execute as @s[scores={mi_mem=220}] if score @s mi_input = @s mi_input unless score @s mi_input matches 0 run function debug:map_import/trigger/set_map_id

# 资源点
## 击杀资源点
execute as @s[scores={mi_mem=310,mi_kill=1..}] store result score $kill_1 mi_mem run kill @e[type=marker,tag=res,distance=0..3]
title @s[scores={mi_mem=310,mi_kill=1..}] actionbar ["已清除 ",{"score":{"objective": "mi_mem","name": "$kill_1"}}," 个实体标记！"]
scoreboard players reset $kill_1 mi_mem
scoreboard players reset @s[scores={mi_mem=310,mi_kill=1..}] mi_kill
## 完成放置
execute as @s[scores={mi_mem=310,mi_input=1..}] run function debug:map_import/trigger/spawner_complete

# 队伍标记
## 更新刷怪蛋
### 出生点
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:red_wool"}],SelectedItem:{tag:{Tags:["map_importer","disable_throw","spawnpoint"]}}}] run item modify entity @s weapon.mainhand debug:map_importer/spawnpoint/red
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:green_wool"}],SelectedItem:{tag:{Tags:["map_importer","disable_throw","spawnpoint"]}}}] run item modify entity @s weapon.mainhand debug:map_importer/spawnpoint/green
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:yellow_wool"}],SelectedItem:{tag:{Tags:["map_importer","disable_throw","spawnpoint"]}}}] run item modify entity @s weapon.mainhand debug:map_importer/spawnpoint/yellow
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:blue_wool"}],SelectedItem:{tag:{Tags:["map_importer","disable_throw","spawnpoint"]}}}] run item modify entity @s weapon.mainhand debug:map_importer/spawnpoint/blue
### 床标记点
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:red_wool"}],SelectedItem:{tag:{Tags:["map_importer","disable_throw","bed_marker"]}}}] run item modify entity @s weapon.mainhand debug:map_importer/bed/red
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:green_wool"}],SelectedItem:{tag:{Tags:["map_importer","disable_throw","bed_marker"]}}}] run item modify entity @s weapon.mainhand debug:map_importer/bed/green
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:yellow_wool"}],SelectedItem:{tag:{Tags:["map_importer","disable_throw","bed_marker"]}}}] run item modify entity @s weapon.mainhand debug:map_importer/bed/yellow
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:blue_wool"}],SelectedItem:{tag:{Tags:["map_importer","disable_throw","bed_marker"]}}}] run item modify entity @s weapon.mainhand debug:map_importer/bed/blue
## 放置事件
execute as @e[type=marker,tag=player_spawnpoint] at @s run function debug:map_import/entity_event/spawnpoint_set
execute as @e[type=marker,tag=bed_marker] at @s run function debug:map_import/entity_event/bed_marker
## 清除标记
execute as @s[scores={mi_mem=320,mi_kill=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:green_wool"}]}] at @s run data remove entity @e[limit=1,sort=nearest,tag=map,tag=map_importer] data.map.team.green
execute as @s[scores={mi_mem=320,mi_kill=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:yellow_wool"}]}] at @s run data remove entity @e[limit=1,sort=nearest,tag=map,tag=map_importer] data.map.team.yellow
execute as @s[scores={mi_mem=320,mi_kill=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:red_wool"}]}] at @s run data remove entity @e[limit=1,sort=nearest,tag=map,tag=map_importer] data.map.team.red
execute as @s[scores={mi_mem=320,mi_kill=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:blue_wool"}]}] at @s run data remove entity @e[limit=1,sort=nearest,tag=map,tag=map_importer] data.map.team.blue
title @s[scores={mi_mem=320,mi_kill=1..}] actionbar ["已尝试清除对应队伍标记..."]
scoreboard players reset @a[scores={mi_mem=320,mi_kill=1..}] mi_kill

# 重置玩家输入
scoreboard players reset @s mi_input

# 允许管理员触发触发项
scoreboard players enable @s[scores={mi_mem=240}] mi_border
scoreboard players enable @s[scores={mi_mem=240}] mi_border_min
scoreboard players enable @s[scores={mi_mem=310..320}] mi_kill
scoreboard players enable @s mi_menu
scoreboard players enable @s mi_input