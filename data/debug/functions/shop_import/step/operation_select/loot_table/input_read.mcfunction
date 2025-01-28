# input {ShopId:STRING,Page:BYTE,Slot:BYTE}

# 修复（如果数据不存在
$execute unless data storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.c run data modify storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.c set value 0s
$execute unless data storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.i run data modify storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.i set value 0s
$execute unless data storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.g run data modify storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.g set value 0s
$execute unless data storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.d run data modify storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Price.d set value 0s

## 导入数据
$execute unless data storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}] run data modify storage bw:shop/$(ShopId)/pg$(Page) data append value {Slot:$(Slot)b}

# 类别设置
$data modify storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Type set value "loot"
# 内容设置

# 清除另一个类别
$data remove storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Item
$data remove storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Count
$data remove storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Tag

# 返回
$function debug:shop_import/step/operation_select/init {ShopId:"$(ShopId)",Slot:$(Slot)b,Page:$(Page)b}