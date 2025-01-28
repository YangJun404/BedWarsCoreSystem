#> debug:panel_trigger/maintenance_delete
# 删除指定的维护事件
# @input ID 维护事件ID
#define storage bw:maintenance

$tellraw @a ["管理员已删除维护事项：",{"storage":"bw:maintenance","nbt":"content[$(ID)]","hoverEvent": {"action":"show_text","value": "已删除"}}]

$data remove storage bw:maintenance content[$(ID)]
scoreboard players remove $total maintenance 1
execute if score $total maintenance matches ..0 run scoreboard players reset $total maintenance

function debug