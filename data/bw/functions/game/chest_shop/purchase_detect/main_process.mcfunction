# input {Page:BYTE,Slot:BYTE}
# 清除拿取的商店物品
$function bw:game/chest_shop/purchase_detect/hold_item_clear with storage bw:shop_display/general/pg$(Page) data[{Slot:$(Slot)b}]

# 检测是否有足够的资源！
$function bw:game/chest_shop/purchase_detect/currency_verify with storage bw:shop/general/pg$(Page) data[{Slot:$(Slot)b}].Price

## 购买成功
# 获取物品
$execute if score @s purchase_success matches 1 run function bw:game/chest_shop/item_gain/method_detect/$(Page) with storage bw:shop/general/pg$(Page) data[{Slot:$(Slot)b}]
function bw:game/bed/break with storage bw:baisc
execute if score @s purchase_success matches 1 run function lib:sounds/hit
execute if score @s purchase_success matches 1 run tellraw @s "§a购买成功"

## 购买失败
execute if score @s purchase_success matches 0 run function lib:sounds/error
execute if score @s purchase_success matches 0 run tellraw @s "§c你没有足够的资源购买这个物品"

