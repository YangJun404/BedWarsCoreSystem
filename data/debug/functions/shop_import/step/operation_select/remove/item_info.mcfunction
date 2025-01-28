# input {ShopId:STRING,Page:BYTE,Slot:BYTE}

$data remove storage bw:shop/$(ShopId)/pg$(Page) data[{Slot:$(Slot)b}]

# 返回
$function debug:shop_import/step/operation_select/init {ShopId:"$(ShopId)",Slot:$(Slot)b,Page:$(Page)b}
execute if data entity @s SelectedItem run tellraw @s "     §a更改已成功应用"