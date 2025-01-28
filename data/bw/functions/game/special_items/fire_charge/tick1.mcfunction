# 召唤火球
execute as @a[nbt={SelectedItem:{id:"minecraft:magma_cream"}}] at @s unless entity @e[type=minecraft:interaction,tag=magma_cream_click_check,distance=..2] run summon minecraft:interaction ~ ~ ~ {Tags:["magma_cream_click_check"],height:0.1f,width:0.25f}
execute as @a[nbt={SelectedItem:{id:"minecraft:magma_cream"}}] at @s anchored eyes run tp @e[type=minecraft:interaction,tag=magma_cream_click_check,distance=..2,sort=nearest,limit=1] ^ ^-0.05 ^0.1
# execute as @e[type=minecraft:interaction,tag=magma_cream_click_check,nbt={interaction:{}}] on target at @s anchored eyes positioned ^ ^ ^ summon fireball run function bw:game/special_items/magma_cream/set_data
# execute as @e[type=minecraft:interaction,tag=magma_cream_click_check] at @s on attacker run kill @e[type=minecraft:interaction,tag=magma_cream_click_check,sort=nearest,limit=1]
execute as @e[type=minecraft:interaction,tag=magma_cream_click_check,nbt={interaction:{}}] on target at @s anchored eyes positioned ^ ^ ^ summon fireball run function bw:game/special_items/fire_charge/summon
execute as @e[type=minecraft:interaction,tag=magma_cream_click_check,nbt={interaction:{}}] on target at @s run clear @s[gamemode=!creative] magma_cream 1
execute as @e[type=minecraft:interaction,tag=magma_cream_click_check] at @s on target run kill @e[type=minecraft:interaction,tag=magma_cream_click_check,sort=nearest,limit=1]
execute as @e[type=minecraft:interaction,tag=magma_cream_click_check] at @s unless entity @p[nbt={SelectedItem:{id:"minecraft:magma_cream"}},distance=..2] run kill @s

# execute as @e[type=minecraft:snowball] at @s on origin anchored eyes summon fireball run function bw:game/special_items/magma_cream/set_data

# 火球寿命
execute as @e[type=fireball] run scoreboard players add @s fireball_life 1
execute as @e[type=fireball] if score @s fireball_life >= $life_max fireball_life run kill @s