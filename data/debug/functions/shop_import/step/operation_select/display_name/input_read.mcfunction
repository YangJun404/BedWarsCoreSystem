# input {ShopId:STRING,Page:BYTE,Slot:BYTE}

# 修改
$data modify storage bw:shop_display/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}].Name set from entity @s SelectedItem.tag.title
item replace entity @s weapon.mainhand with air

# 返回
$function debug:shop_import/step/operation_select/init {ShopId:"$(ShopId)",Slot:$(Slot)b,Page:$(Page)b}
execute if data entity @s SelectedItem.tag.title run tellraw @s "     §a更改已成功应用"
execute unless data entity @s SelectedItem.tag.title run tellraw @s "     §c更改应用失败（没有读取到主手物品为已署名的书）"