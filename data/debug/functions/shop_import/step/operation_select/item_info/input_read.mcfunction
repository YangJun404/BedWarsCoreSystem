# input {ShopId:STRING,Page:BYTE,Slot:BYTE}

# 修复（如果数据不存在
$execute unless data storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.c run data modify storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.c set value 0s
$execute unless data storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.i run data modify storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.i set value 0s
$execute unless data storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.g run data modify storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.g set value 0s
$execute unless data storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.d run data modify storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.d set value 0s

## 导入数据
$execute unless data storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}] run data modify storage bw:shop/$(ShopId)/pg$(Page) data append value {Slot:$(Slot)b}

# 类别设置
$data modify storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Type set value "give"
# 内容设置
$data modify storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Item set from entity @s SelectedItem.id
$data modify storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Count set from entity @s SelectedItem.Count
$data modify storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Tag set from entity @s SelectedItem.tag
$execute if data entity @s SelectedItem unless data entity @s SelectedItem.tag run data modify storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Tag set value {HideFlags:4}
# 清除另一个类别
$data remove storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Loot

# 返回
$function debug:shop_import/step/operation_select/init {ShopId:"$(ShopId)",Slot:$(Slot)b,Page:$(Page)b}