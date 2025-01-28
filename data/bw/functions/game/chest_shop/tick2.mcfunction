# 使所有玩家都有该计分板的值（防止bug）
scoreboard players add @s shop_view_page 0
# 读取玩家持有资源数
execute store result score @s own_copper run clear @s copper_ingot 0
execute store result score @s own_iron run clear @s iron_ingot 0
execute store result score @s own_gold run clear @s gold_ingot 0
execute store result score @s own_diamond run clear @s diamond 0
# 清除地面上的商店物品
execute as @e[type=item] if data entity @s Item.tag.Tag run kill @s

# 检测是否切换页面
execute unless data entity @s EnderItems[{Slot:0b}] run function bw:game/chest_shop/page_switch/main_process {Slot:0b}
execute unless data entity @s EnderItems[{Slot:1b}] run function bw:game/chest_shop/page_switch/main_process {Slot:1b}
execute unless data entity @s EnderItems[{Slot:2b}] run function bw:game/chest_shop/page_switch/main_process {Slot:2b}
execute unless data entity @s EnderItems[{Slot:3b}] run function bw:game/chest_shop/page_switch/main_process {Slot:3b}
execute unless data entity @s EnderItems[{Slot:4b}] run function bw:game/chest_shop/page_switch/main_process {Slot:4b}
execute unless data entity @s EnderItems[{Slot:5b}] run function bw:game/chest_shop/page_switch/main_process {Slot:5b}
execute unless data entity @s EnderItems[{Slot:6b}] run function bw:game/chest_shop/page_switch/main_process {Slot:6b}
execute unless data entity @s EnderItems[{Slot:7b}] run function bw:game/chest_shop/page_switch/main_process {Slot:7b}
execute unless data entity @s EnderItems[{Slot:8b}] run function bw:game/chest_shop/page_switch/main_process {Slot:8b}

# 检测是否拿取物品
execute unless data entity @s EnderItems[{Slot:9b}] run function bw:game/chest_shop/purchase_request {Slot:9b}
execute unless data entity @s EnderItems[{Slot:10b}] run function bw:game/chest_shop/purchase_request {Slot:10b}
execute unless data entity @s EnderItems[{Slot:11b}] run function bw:game/chest_shop/purchase_request {Slot:11b}
execute unless data entity @s EnderItems[{Slot:12b}] run function bw:game/chest_shop/purchase_request {Slot:12b}
execute unless data entity @s EnderItems[{Slot:13b}] run function bw:game/chest_shop/purchase_request {Slot:13b}
execute unless data entity @s EnderItems[{Slot:14b}] run function bw:game/chest_shop/purchase_request {Slot:14b}
execute unless data entity @s EnderItems[{Slot:15b}] run function bw:game/chest_shop/purchase_request {Slot:15b}
execute unless data entity @s EnderItems[{Slot:16b}] run function bw:game/chest_shop/purchase_request {Slot:16b}
execute unless data entity @s EnderItems[{Slot:17b}] run function bw:game/chest_shop/purchase_request {Slot:17b}
execute unless data entity @s EnderItems[{Slot:18b}] run function bw:game/chest_shop/purchase_request {Slot:18b}
execute unless data entity @s EnderItems[{Slot:19b}] run function bw:game/chest_shop/purchase_request {Slot:19b}
execute unless data entity @s EnderItems[{Slot:20b}] run function bw:game/chest_shop/purchase_request {Slot:20b}
execute unless data entity @s EnderItems[{Slot:21b}] run function bw:game/chest_shop/purchase_request {Slot:21b}
execute unless data entity @s EnderItems[{Slot:22b}] run function bw:game/chest_shop/purchase_request {Slot:22b}
execute unless data entity @s EnderItems[{Slot:23b}] run function bw:game/chest_shop/purchase_request {Slot:23b}
execute unless data entity @s EnderItems[{Slot:24b}] run function bw:game/chest_shop/purchase_request {Slot:24b}
execute unless data entity @s EnderItems[{Slot:25b}] run function bw:game/chest_shop/purchase_request {Slot:25b}
execute unless data entity @s EnderItems[{Slot:26b}] run function bw:game/chest_shop/purchase_request {Slot:26b}

# 刷新商店页面 (0-8)
execute if score @s shop_view_page matches 0 run function bw:game/chest_shop/gui_reset {Page:0b}
execute if score @s shop_view_page matches 1 run function bw:game/chest_shop/gui_reset {Page:1b}
execute if score @s shop_view_page matches 2 run function bw:game/chest_shop/gui_reset {Page:2b}
execute if score @s shop_view_page matches 3 run function bw:game/chest_shop/gui_reset {Page:3b}
execute if score @s shop_view_page matches 4 run function bw:game/chest_shop/gui_reset {Page:4b}
execute if score @s shop_view_page matches 5 run function bw:game/chest_shop/gui_reset {Page:5b}
execute if score @s shop_view_page matches 6 run function bw:game/chest_shop/gui_reset {Page:6b}
execute if score @s shop_view_page matches 7 run function bw:game/chest_shop/gui_reset {Page:7b}
execute if score @s shop_view_page matches 8 run function bw:game/chest_shop/gui_reset {Page:8b}