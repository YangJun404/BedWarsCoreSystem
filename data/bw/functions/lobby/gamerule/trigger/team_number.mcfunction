# 队伍数量
scoreboard players add $team_number gamerule 1
execute if score $team_number gamerule matches 5 run scoreboard players set $team_number gamerule 2

# 更新告示牌
execute if score $team_number gamerule matches 2 run data modify block -2 51 20 front_text.messages[2] set value '{"storage":"bw:lang","nbt":"lobby.gamerule.team_number.2"}'
execute if score $team_number gamerule matches 3 run data modify block -2 51 20 front_text.messages[2] set value '{"storage":"bw:lang","nbt":"lobby.gamerule.team_number.3"}'
execute if score $team_number gamerule matches 4 run data modify block -2 51 20 front_text.messages[2] set value '{"storage":"bw:lang","nbt":"lobby.gamerule.team_number.4"}'

# 发送提示文本
title @a actionbar [{"storage":"bw:lang","nbt":"lobby.gamerule.change","interpret": true},{"storage":"bw:lang","nbt":"lobby.gamerule.team_number.name"}," ",{"block":"-2 51 20","nbt":"front_text.messages[2]","interpret": true,"bold": true}]