# 无地图名称警告
$execute unless data storage bw:map maps[{id:$(map_select)d}].name run tellraw @s [{"text": "[✖] ","color": "yellow","bold": true},{"text": "警告！当前编辑的地图无地图名称...","bold": false}]
execute unless entity @e[type=marker,tag=map,tag=map_importer] run function lib:sounds/hit

# 选择成功
$execute if data storage bw:map maps[{id:$(map_select)d}].name run tellraw @s [{"text": "[✔] ","bold": true,"color": "aqua"},{"text": "已选择！地图编号为 ","bold": false},{"nbt":"maps[{id:$(map_select)d}].id","storage": "bw:map","bold": true,"color": "white"},{"text": " 名称为：","bold": false},{"nbt":"maps[{id:$(map_select)d}].name","storage": "bw:map","color": "white","bold": true}]

execute as @e[type=marker,tag=map,tag=map_importer] if data entity @s data.map.id run tellraw @p [{"text": "[✔] ","bold": true,"color": "aqua"},{"text": "已选择！地图编号为 ","bold": false},{"nbt":"data.map.id","entity": "@e[type=marker,tag=map_importer,tag=map]","bold": true,"color": "white"},{"text": " 名称为：","bold": false},{"nbt":"data.map.name","entity": "@e[type=marker,tag=map_importer,tag=map]","color": "white","bold": true}]