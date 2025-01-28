# 昼夜更替（1=启用 2=关闭）
scoreboard players add $daylight_cycle gamerule 1
execute if score $daylight_cycle gamerule matches 3 run scoreboard players set $daylight_cycle gamerule 1

# 更新告示牌
execute if score $daylight_cycle gamerule matches 1 run data modify block -1 51 20 front_text.messages[2] set value '{"storage":"bw:lang","nbt":"lobby.gamerule.daylight_cycle.1"}'
execute if score $daylight_cycle gamerule matches 2 run data modify block -1 51 20 front_text.messages[2] set value '{"storage":"bw:lang","nbt":"lobby.gamerule.daylight_cycle.2"}'

# 发送提示文本
title @a actionbar [{"storage":"bw:lang","nbt":"lobby.gamerule.change","interpret": true},{"storage":"bw:lang","nbt":"lobby.gamerule.daylight_cycle.name"}," ",{"block":"-1 51 20","nbt":"front_text.messages[2]","interpret": true,"bold": true}]