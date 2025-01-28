# input {Slot:BYTE,Count:BYTE,Item:STRING,Name:STRING,Lore:{...}}

summon marker ~ ~ ~ {Tags:[shop_item_data]}

## 读取信息
$data modify entity @e[type=marker,distance=..0.5,tag=shop_item_data,limit=1] data.Temp set value {Lore:$(Lore)}

## 处理/合并信息
# {Slot:BYTE,Count:BYTE,Item:STRING,Name:STRING}
$data modify entity @e[type=marker,distance=..0.5,tag=shop_item_data,limit=1] data.Arguments set value {Slot:$(Slot)b,Item:"$(Item)",Count:$(Count)b,Name:"$(Name)"}
# {c:SHORT,i:SHORT,g:SHORT,d:SHORT} → {lpc:STRING,lpi:STRING,lpg:STRING,lpd:STRING}
function bw:game/chest_shop/display_lore_read/display_price with entity @e[type=marker,distance=..0.5,tag=shop_item_data,limit=1] data.Temp.Lore.Price

## 显示物品
function bw:game/chest_shop/gui_shop_item with entity @e[type=marker,distance=..0.5,tag=shop_item_data,limit=1] data.Arguments

kill @e[type=marker,distance=..0.5,tag=shop_item_data]