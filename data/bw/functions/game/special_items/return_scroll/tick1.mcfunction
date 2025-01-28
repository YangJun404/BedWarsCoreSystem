# 回城卷轴 TICK 2

# execute as @a run title @s actionbar ["return_scroll_holding: ",{"score":{"name": "@s","objective": "return_scroll_holding"}}," | return_scroll_time: ",{"score":{"name": "@s","objective": "return_scroll_time"}}]

# title YaJn actionbar ["return_scroll_holding: ",{"score":{"name": "YaJn","objective": "return_scroll_holding"}}," | return_scroll_time: ",{"score":{"name": "YaJn","objective": "return_scroll_time"}}]
# 使用检测
execute as @a[nbt={SelectedItem:{id:"minecraft:gunpowder"}}] at @s unless entity @e[type=minecraft:interaction,tag=return_scroll_click_check,distance=..2] run summon minecraft:interaction ~ ~ ~ {Tags:["return_scroll_click_check"],height:0.1f,width:0.25f}
execute as @a[nbt={SelectedItem:{id:"minecraft:gunpowder"}}] at @s anchored eyes run tp @e[type=minecraft:interaction,tag=return_scroll_click_check,distance=..2,sort=nearest,limit=1] ^ ^-0.05 ^0.1
execute as @e[type=minecraft:interaction,tag=return_scroll_click_check,nbt={interaction:{}}] on target at @s run function bw:game/special_items/return_scroll/holding
execute as @e[type=minecraft:interaction,tag=return_scroll_click_check] at @s on target run kill @e[type=minecraft:interaction,tag=return_scroll_click_check,sort=nearest,limit=1]
execute as @e[type=minecraft:interaction,tag=return_scroll_click_check] at @s unless entity @p[nbt={SelectedItem:{id:"minecraft:gunpowder"}},distance=..2] run kill @s

# 检测超时
scoreboard players add @a[scores={return_scroll_holding=1..}] return_scroll_time 1
execute as @a[scores={return_scroll_time=10..,return_scroll_holding=1..}] run function bw:game/special_items/return_scroll/cancel
scoreboard players reset @a[scores={return_scroll_holding=0}] return_scroll_time

# 触发
execute as @a[scores={return_scroll_holding=25..}] run function bw:game/special_items/return_scroll/trigger_back