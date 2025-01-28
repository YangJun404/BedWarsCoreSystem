# input {Slot:BYTE,Type:give,Count:BYTE,Item:STRING,Tag:COMPOUND,Price:{...}}
# function will be killed if merge various item-gaining methods into one single file (missing arguments)
$function bw:game/chest_shop/item_gain/$(Type) with storage bw:shop/general/pg1 data[{Slot:$(Slot)b}]
