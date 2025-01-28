# 设定中心点
## 存储数据
data modify entity @e[limit=1,tag=map,tag=map_importer,type=marker] data.map.center set from entity @e[type=marker,tag=map_importer,tag=map_center,limit=1] Pos
## 设定实体中心点
# data modify entity @e[type=marker,tag=map_center,tag=map_importer,limit=1,sort=nearest] data.map_id set from entity @e[limit=1,tag=map,tag=map_importer,type=marker] data.map.id
# tag @e[type=marker,tag=map_center,tag=map_importer,limit=1,sort=nearest] remove map_importer
# execute as @e[type=marker,tag=map_center] store result score @s map run data get entity @s data.map_id

scoreboard players reset @s mi_input
execute store result score $center_x mi_mem run data get entity @e[type=marker,tag=map_importer,tag=map_center,limit=1] Pos[0]
execute store result score $center_y mi_mem run data get entity @e[type=marker,tag=map_importer,tag=map_center,limit=1] Pos[1]
execute store result score $center_z mi_mem run data get entity @e[type=marker,tag=map_importer,tag=map_center,limit=1] Pos[2]

tellraw @s [{"text": "[✔] ","bold": true,"color": "aqua"},{"text": "已更新实体数据：","bold": false},{"text": "data.map.center","bold": false,"color": "white"},{"text": " 设定为 ","bold": false},{"nbt":"data.map.center","entity": "@e[limit=1,tag=map_importer,type=marker,tag=map]","bold": false,"color": "white"}]

clear @s husk_spawn_egg{Tags:["map_importer","disable_throw"]}

# tellraw @a [{"text": "[⚠] ","bold": true,"color": "aqua"},{"text": "正在复制地图至中心点...","bold": false}]
# execute as @e[limit=1,tag=map_center,tag=map_importer,type=marker] at @s run forceload add ~ ~ ~ ~
# forceload add 0 0
# fill -149 -64 -149 149 43 149 air 
# kill @e[type=item,tag=!bypass_kill]
# execute as @e[limit=1,tag=map_center,tag=map_importer,type=marker] at @s run clone ~100 -64 ~100 ~-100 43 ~-100 -100 -64 -100
# tellraw @s {"text": "---------------------","color": "yellow"}
# tellraw @s [{"text": ">> ","bold": true,"color": "yellow"},{"text": "复制完成！接下来的操作请在","bold": false},{"text": "世界中心点","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/tp @s 0 44 0"}},{"text": "完成...","bold": false}]
# tellraw @s {"text": "---------------------","color": "yellow"}
# title @s title [{"text":"/ WARNING警告 \\","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
# title @s subtitle [{"text":"请立即前往坐标(0,0)处来执行后续操作","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

scoreboard players set @s mi_mem 250
tellraw @s [{"text": "[☞] ","bold": true,"color": "aqua"},{"text": "执行 ","bold": false},{"text": "/trigger mi_menu","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/trigger mi_menu"}},{"text": " 来看看下一步...","bold": false}]