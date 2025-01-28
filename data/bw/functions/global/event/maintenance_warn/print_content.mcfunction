# 记分板计算
scoreboard players set $maintenance_serial temp 0
scoreboard players operation $maintenance_transfer temp = $total maintenance

# 文本打印
tellraw @s {"storage":"bw:lang","nbt":"global.maintenance.subtitle2.content","interpret": true}
function bw:global/event/maintenance_warn/print_content_sec
tellraw @s ""

# 收尾
scoreboard players reset $maintenance_serial temp
scoreboard players reset $maintenance_transfer temp
data remove storage bw:basic temp.maintenance