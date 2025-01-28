# 商店类型（0=箱子商店 1=配方 2=村民交易）
scoreboard players add $shop_type gamerule 1
execute if score $shop_type gamerule matches 3 run scoreboard players set $shop_type gamerule 0

# 更新告示牌
execute if score $shop_type gamerule matches 0 run data modify block 2 51 20 front_text.messages[2] set value '{"storage":"bw:lang","nbt":"lobby.gamerule.shop_type.0"}'
execute if score $shop_type gamerule matches 1 run data modify block 2 51 20 front_text.messages[2] set value '{"storage":"bw:lang","nbt":"lobby.gamerule.shop_type.1"}'
execute if score $shop_type gamerule matches 2 run data modify block 2 51 20 front_text.messages[2] set value '{"storage":"bw:lang","nbt":"lobby.gamerule.shop_type.2"}'

# 发送提示文本
title @a actionbar [{"storage":"bw:lang","nbt":"lobby.gamerule.change","interpret": true},{"storage":"bw:lang","nbt":"lobby.gamerule.shop_type.name"}," ",{"block":"2 51 20","nbt":"front_text.messages[2]","interpret": true,"bold": true}]