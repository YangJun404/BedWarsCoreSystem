# 边界设定（1=在设定时间后自动缩圈 2=不会自动缩圈）
scoreboard players add $border gamerule 1
execute if score $border gamerule matches 3 run scoreboard players set $border gamerule 1

# 更新告示牌
execute if score $border gamerule matches 1 run data modify block 1 51 20 front_text.messages[2] set value '{"storage":"bw:lang","nbt":"lobby.gamerule.border.1"}'
execute if score $border gamerule matches 2 run data modify block 1 51 20 front_text.messages[2] set value '{"storage":"bw:lang","nbt":"lobby.gamerule.border.2"}'

# 发送提示文本
title @a actionbar [{"storage":"bw:lang","nbt":"lobby.gamerule.change","interpret": true},{"storage":"bw:lang","nbt":"lobby.gamerule.border.name"}," ",{"block":"1 51 20","nbt":"front_text.messages[2]","interpret": true,"bold": true}]