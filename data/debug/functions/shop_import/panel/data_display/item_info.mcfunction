# input {Slot:BYTE,Count:BYTE,Item:STRING,Tag:COMPOUND,Price:{...}}
$tellraw @s ["     ","§l[商品信息]§r ","§a$(Item) *§c$(Count)"," "]
#,{"text": "§b[获取物品]","clickEvent": {"action":"run_command","value":"/function bw:game/chest_shop/purchase_detect/item_gain with storage bw:shop/general/pg$(Page) data[{Slot:$(Slot)b}]"}}]
