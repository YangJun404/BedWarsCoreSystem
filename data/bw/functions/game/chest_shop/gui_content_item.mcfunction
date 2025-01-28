# input {Slot:BYTE,Count:BYTE,Item:STRING,Name:JSON,Lore:LIST}
$item replace entity @s enderchest.$(Slot) with $(Item){display:{Name:'$(Name)',Lore:$(Lore)},Tag:"shop"} $(Count)
$execute if score @s shop_view_page matches $(Slot) run item replace entity @s enderchest.$(Slot) with $(Item){display:{Name:'$(Name)',Lore:$(Lore)},Tag:"shop",Enchantments:[{id:"fortune",lvl:1}],HideFlags:1} $(Count)
