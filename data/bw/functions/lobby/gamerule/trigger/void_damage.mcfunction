# 虚空伤害（0=原版 1=额外添加伤害 2=立即死亡）
scoreboard players add $void_damage gamerule 1
execute if score $void_damage gamerule matches 3 run scoreboard players set $void_damage gamerule 0

execute if score $void_damage gamerule matches 0 run data modify block 0 51 20 front_text.messages[2] set value '{"storage":"bw:lang","nbt":"lobby.gamerule.void_damage.0"}'
execute if score $void_damage gamerule matches 1 run data modify block 0 51 20 front_text.messages[2] set value '{"storage":"bw:lang","nbt":"lobby.gamerule.void_damage.1"}'
execute if score $void_damage gamerule matches 2 run data modify block 0 51 20 front_text.messages[2] set value '{"storage":"bw:lang","nbt":"lobby.gamerule.void_damage.2"}'

# 发送提示
title @a actionbar [{"storage":"bw:lang","nbt":"lobby.gamerule.change","interpret": true},{"storage":"bw:lang","nbt":"lobby.gamerule.void_damage.name"}," ",{"block":"0 51 20","nbt":"front_text.messages[2]","interpret": true,"bold": true}]