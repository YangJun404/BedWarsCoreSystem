# input {ShopId:STRING,Page:BYTE,Slot:BYTE} + {Action:STRING,ActionName:STRING,Currency:STRING,Delta:INT}

summon marker ~ ~ ~ {Tags:[price_modify]}

# 修复（如果数据不存在
$execute unless data storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.c run data modify storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.c set value 0s
$execute unless data storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.i run data modify storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.i set value 0s
$execute unless data storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.g run data modify storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.g set value 0s
$execute unless data storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.d run data modify storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.d set value 0s

# 更改数据
$execute as @e[type=marker,distance=..0.5,tag=price_modify,limit=1] store result score @s temp run data get storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.$(Currency)
$scoreboard players set @e[type=marker,distance=..0.5,tag=price_modify,limit=1] temp2 $(Delta)
execute as @e[type=marker,distance=..0.5,tag=price_modify,limit=1] run scoreboard players operation @s temp += @s temp2
$execute store result storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.$(Currency) short 1 run scoreboard players get @e[type=marker,distance=..0.5,tag=price_modify,limit=1] temp

# 返回
$function debug:shop_import/panel/operation_select/price_modify {ShopId:"$(ShopId)",Slot:$(Slot)b,Page:$(Page)b,Action:"$(Action)",ActionName:"$(ActionName)"}

kill @e[type=marker,distance=..0.5,tag=price_modify,limit=1]