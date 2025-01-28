# 维护事项提示 - 触发器

# 消息头
tellraw @s ""
execute if score $total maintenance matches 1.. run tellraw @s [{"storage":"bw:lang","nbt":"global.maintenance.title","interpret": true,"color": "aqua"},"（",{"score":{"objective":"maintenance","name": "$total"}},"项）",{"text": " \n     "},{"storage":"bw:lang","nbt":"global.maintenance.subtitle","interpret": true,"color": "gray"}]
execute unless score $total maintenance matches 1.. run tellraw @s [{"storage":"bw:lang","nbt":"global.maintenance.title","interpret": true,"color": "aqua"},{"text": " \n     "},{"storage":"bw:lang","nbt":"global.maintenance.subtitle","interpret": true,"color": "gray"}]
tellraw @s ""

# 如果有维护事项
execute if score $total maintenance matches 1.. run function bw:global/event/maintenance_warn/print_content

# 如果有阻断服务
execute if score $system_killer maintenance matches 1 run function bw:global/event/maintenance_warn/print_killer