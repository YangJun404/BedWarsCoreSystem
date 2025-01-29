# 完成导入

# 备份数据
execute store result storage debug:map id int 1 run data get entity @e[limit=1,tag=map_importer] data.map.id
function debug:map_import/trigger/backup with storage debug:map


# 移除多余实体
tag @e[limit=1,tag=map_importer,type=marker,tag=map] remove map_importer
kill @e[type=marker,tag=map_center,tag=map_importer]

# 重置系统
function debug:map_import/reset

# 提示
tellraw @a [{"text": "[✔] ","color": "green","bold": true},{"text": "已结束导入程序！","bold": false}]