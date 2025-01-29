#> debug:map_import/trigger/backup

# 覆盖提示
$execute if data storage bw:map map.$(id) run tellraw @s [{"text": "[⚠] ","color": "yellow","bold": true},{"text": "已有相同地图ID（$(id)）"}]

# 克隆数据
data modify storage bw:map map.$(id) set from entity @e[limit=1,tag=map_importer] data.map

# 发送提示
tellraw @s [{"text": "[✔] ","color": "green","bold": true},{"text": "已完成地图备份","bold": false,"hoverEvent":{"action":"show_text","value":"单击此处查阅备份数据。"},"clickEvent": {"action": "suggest_command","value": "/data get storage bw:map map.$(id)"}}]