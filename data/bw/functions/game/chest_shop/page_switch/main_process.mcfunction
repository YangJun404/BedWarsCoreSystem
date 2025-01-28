# input {Slot:BYTE}
# 清除拿取的商店物品
$function bw:game/chest_shop/page_switch/hold_item_clear with storage bw:shop_display/general/pgc data[{Slot:$(Slot)b}]

# 切换页面
$scoreboard players set @s shop_view_page $(Slot)
$function bw:game/chest_shop/gui_reset {Page:$(Slot)b}