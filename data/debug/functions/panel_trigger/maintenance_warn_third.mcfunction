# 3nd

$tellraw @s ["             $(serial). ",{"storage":"bw:maintenance","nbt":"content[$(transfer)]","clickEvent": {"action": "suggest_command","value": "/function debug:panel_trigger/maintenance_delete {ID:$(transfer)}"},"hoverEvent": {"action":"show_text","value": "单次来删除这个维护事项"}}]