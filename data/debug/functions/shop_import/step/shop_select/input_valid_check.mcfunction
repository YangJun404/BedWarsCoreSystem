# input {title:STRING,...}
# 重置
scoreboard players set @s is_input_valid 0
# 输入结果检查
$execute if data storage bw:shop/$(title) data run scoreboard players set @s is_input_valid 1

## 有效
$execute if score @s is_input_valid matches 1 run function debug:shop_import/step/slot_select/init {ShopId:$(title)}

## 无效
execute unless score @s is_input_valid matches 1 run function debug:shop_import/init
$execute unless score @s is_input_valid matches 1 run tellraw @s ["     ",{"text":"[Error] baka! 你输入的商店（$(title)）不存在","color": "red"}]