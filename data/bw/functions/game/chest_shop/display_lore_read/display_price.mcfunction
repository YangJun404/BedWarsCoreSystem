# input {c:SHORT,i:SHORT,g:SHORT,d:SHORT}
$execute unless score $0 const matches $(c) run data modify entity @e[type=marker,distance=..0.5,tag=shop_item_data,limit=1] data.Arguments merge value {lpc:" §c$(c) 铜"}
$execute if score $0 const matches $(c) run data modify entity @e[type=marker,distance=..0.5,tag=shop_item_data,limit=1] data.Arguments merge value {lpc:""}

$execute unless score $0 const matches $(i) run data modify entity @e[type=marker,distance=..0.5,tag=shop_item_data,limit=1] data.Arguments merge value {lpi:" §f$(i) 铁"}
$execute if score $0 const matches $(i) run data modify entity @e[type=marker,distance=..0.5,tag=shop_item_data,limit=1] data.Arguments merge value {lpi:""}

$execute unless score $0 const matches $(g) run data modify entity @e[type=marker,distance=..0.5,tag=shop_item_data,limit=1] data.Arguments merge value {lpg:" §e$(g) 金"}
$execute if score $0 const matches $(g) run data modify entity @e[type=marker,distance=..0.5,tag=shop_item_data,limit=1] data.Arguments merge value {lpg:""}

$execute unless score $0 const matches $(d) run data modify entity @e[type=marker,distance=..0.5,tag=shop_item_data,limit=1] data.Arguments merge value {lpd:" §b$(d) 钻"}
$execute if score $0 const matches $(d) run data modify entity @e[type=marker,distance=..0.5,tag=shop_item_data,limit=1] data.Arguments merge value {lpd:""}

$execute if score $0 const matches $(c) if score $0 const matches $(i) if score $0 const matches $(g) if score $0 const matches $(d) run data modify entity @e[type=marker,distance=..0.5,tag=shop_item_data,limit=1] data.Arguments merge value {lpc:" §a免费"}

#
#function bw:game/chest_shop/gui_shop_item with entity @e[type=marker,distance=..0.5,tag=shop_item_data,limit=1] data.Arguments

#kill @e[type=marker,distance=..0.5,tag=shop_item_data]
