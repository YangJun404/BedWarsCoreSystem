# input {ShopId:STRING,Page:BYTE,Slot:BYTE}

# 修复（如果数据不存在)
$execute unless data storage bw:shop_display/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Lore.Price.c run data modify storage bw:shop_display/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Lore.Price.c set value 0s
$execute unless data storage bw:shop_display/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Lore.Price.i run data modify storage bw:shop_display/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Lore.Price.i set value 0s
$execute unless data storage bw:shop_display/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Lore.Price.g run data modify storage bw:shop_display/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Lore.Price.g set value 0s
$execute unless data storage bw:shop_display/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Lore.Price.d run data modify storage bw:shop_display/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Lore.Price.d set value 0s

## 导入数据
$data modify storage bw:shop_display/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Item set from entity @s SelectedItem.id
$data modify storage bw:shop_display/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Count set from entity @s SelectedItem.Count

# 修复（如果数据不存在)
$execute unless data storage bw:shop_display/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Name run data modify storage bw:shop_display/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Name set value "未命名"

# 返回
$function debug:shop_import/step/operation_select/init {ShopId:"$(ShopId)",Slot:$(Slot)b,Page:$(Page)b}
execute if data entity @s SelectedItem run tellraw @s "     §a更改已成功应用"
execute unless data entity @s SelectedItem run tellraw @s "     §c更改应用失败（没有读取到主手物品）"