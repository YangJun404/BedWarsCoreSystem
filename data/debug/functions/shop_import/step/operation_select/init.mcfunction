# input {ShopId:STRING,Page:BYTE,Slot:BYTE}

## 显示面板
$function debug:shop_import/panel/operation_select/title {ShopId:"$(ShopId)",Page:$(Page)b,Slot:$(Slot)b}

# 读取本格商店当前信息
$function debug:shop_import/panel/data_display/item_info with storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}]
$function debug:shop_import/panel/data_display/loot_table with storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}]
$execute unless data storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Type run tellraw @s "     §l[商品信息]§r §cNot Exist"

$function debug:shop_import/panel/data_display/item_price_info with storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price
$execute unless data storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price run tellraw @s "     §l[商品价格]§r §cNot Exist"

$function debug:shop_import/panel/data_display/display_info with storage bw:shop_display/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}]
$execute unless data storage bw:shop_display/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Item run tellraw @s "     §l[显示信息]§r §cNot Exist"

$function debug:shop_import/panel/data_display/display_price_info with storage bw:shop_display/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Lore.Price
$execute unless data storage bw:shop_display/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Lore.Price run tellraw @s "     §l[显示价格]§r §cNot Exist"

# 操作按钮
$function debug:shop_import/panel/operation_select/operation {ShopId:"$(ShopId)",Page:$(Page)b,Slot:$(Slot)b}
