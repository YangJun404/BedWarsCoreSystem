# input {c:SHORT,i:SHORT,g:SHORT,d:SHORT}
scoreboard players set @s purchase_success 0
# 检测是否有足够货币
$execute if score @s own_copper matches $(c).. if score @s own_iron matches $(i).. if score @s own_gold matches $(g).. if score @s own_diamond matches $(d).. run scoreboard players set @s purchase_success 1

## 购买成功
# 扣除货币
$execute if score @s purchase_success matches 1 run clear @s copper_ingot $(c)
$execute if score @s purchase_success matches 1 run clear @s iron_ingot $(i)
$execute if score @s purchase_success matches 1 run clear @s gold_ingot $(g)
$execute if score @s purchase_success matches 1 run clear @s diamond $(d)
$execute if score @s purchase_success matches 1 run scoreboard players remove @s own_copper $(c)
$execute if score @s purchase_success matches 1 run scoreboard players remove @s own_iron $(i)
$execute if score @s purchase_success matches 1 run scoreboard players remove @s own_gold $(g)
$execute if score @s purchase_success matches 1 run scoreboard players remove @s own_diamond $(d)