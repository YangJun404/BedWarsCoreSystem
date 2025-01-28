# 读取输入内容
summon marker ~ ~ ~ {Tags:[ShopId]}
# 读取数据 {pages:['JSON'],title:STRING,author:STRING}
data modify entity @e[type=marker,tag=ShopId,distance=..0.5,limit=1] data set from entity @s SelectedItem.tag
item replace entity @s weapon.mainhand with air
# 判断输入是否有效
function debug:shop_import/step/shop_select/input_valid_check with entity @e[type=marker,tag=ShopId,distance=..0.5,limit=1] data

kill @e[type=marker,tag=ShopId,distance=..0.5,limit=1]
# 还没写完