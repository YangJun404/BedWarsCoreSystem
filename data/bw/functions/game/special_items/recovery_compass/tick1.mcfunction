# 追溯指针

# 玩家使用（手持）
execute as @a[nbt={SelectedItem:{id:"minecraft:recovery_compass"}}] at @s if score @s player_id matches -2147483648..2147483647 run function bw:game/special_items/recovery_compass/use

# 盔甲架自毁
execute as @e[type=armor_stand,tag=recovery_compass] at @s unless entity @a[distance=..1] run kill @s 

# 玩家选择
execute as @a[nbt={SelectedItem:{id:"minecraft:recovery_compass"}}] at @s unless entity @e[type=minecraft:interaction,tag=compass_click_check,distance=..2] run summon minecraft:interaction ~ ~ ~ {Tags:["compass_click_check"],height:0.1f,width:0.25f}
execute as @a[nbt={SelectedItem:{id:"minecraft:recovery_compass"}}] at @s anchored eyes run tp @e[type=minecraft:interaction,tag=compass_click_check,distance=..2,sort=nearest,limit=1] ^ ^-0.05 ^0.1
execute as @e[type=minecraft:interaction,tag=compass_click_check] on attacker at @s run function bw:game/special_items/recovery_compass/mouse_check/left
execute as @e[type=minecraft:interaction,tag=compass_click_check] at @s on attacker run kill @e[type=minecraft:interaction,tag=compass_click_check,sort=nearest,limit=1]
execute as @e[type=minecraft:interaction,tag=compass_click_check,nbt={interaction:{}}] on target at @s run function bw:game/special_items/recovery_compass/mouse_check/right
execute as @e[type=minecraft:interaction,tag=compass_click_check] at @s on target run kill @e[type=minecraft:interaction,tag=compass_click_check,sort=nearest,limit=1]
execute as @e[type=minecraft:interaction,tag=compass_click_check] at @s unless entity @p[nbt={SelectedItem:{id:"minecraft:recovery_compass"}},distance=..2] run kill @s