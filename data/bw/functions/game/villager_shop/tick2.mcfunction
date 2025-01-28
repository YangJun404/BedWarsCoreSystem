# 村民商店
execute as @a if data entity @s SelectedItem.tag.shop_list at @s positioned ^ ^ ^0.5 run data modify entity @e[type=minecraft:villager,tag=shop,sort=nearest,limit=1] Offers.Recipes set from entity @s SelectedItem.tag.shop_list
execute as @e[type=minecraft:villager,tag=shop] at @a[nbt={SelectedItem:{tag:{shop_list:[{}]}}}] if score @s player_id = @p player_id run tp @s ^ ^ ^0.5 ~ ~
execute as @e[type=minecraft:villager,tag=shop,scores={player_id=1..}] at @s positioned ^ ^ ^-0.5 unless entity @p[distance=..0.0001,nbt={SelectedItem:{tag:{shop_list:[{}]}}}] positioned ~ ~ ~ run tp @s ~ -3000 ~
execute as @a[nbt={SelectedItem:{tag:{shop_list:[{}]}}}] if score @s player_id = @s player_id at @s positioned ^ ^ ^0.5 unless entity @e[type=minecraft:villager,tag=shop,distance=..0.0001] unless entity @e[type=#minecraft:impact_projectiles,distance=..8,nbt=!{inGround:1b}] run summon minecraft:villager ^ ^ ^-1.5 {Tags:["shop"],NoAI:1b,Invulnerable:1b,Silent:1b,Offers:{Recipes:[]},active_effects:[{show_particles:0b,ambient:0b,id:"minecraft:invisibility",duration:-1,amplifier:0b,show_icon:0b}]}
execute as @e[type=minecraft:villager,tag=shop] unless score @s player_id = @s player_id at @s run scoreboard players operation @s player_id = @p player_id
execute as @e[type=minecraft:villager,tag=shop] at @s if entity @e[type=#minecraft:impact_projectiles,distance=..3,nbt=!{inGround:1b}] run tp @s ~ -3000 ~
execute as @e[type=minecraft:villager,tag=shop] at @s run kill @s[y=-2500,dy=-500]
execute as @a[nbt={SelectedItem:{tag:{shop_list:[{}]}}}] at @s positioned ^ ^ ^-0.5 as @e[type=minecraft:villager,tag=shop,distance=0.001,sort=nearest,limit=1] unless score @s player_id = @s player_id run tp @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:villager,tag=shop] unless score @s player_id = @s player_id at @s run scoreboard players operation @s player_id = @p player_id
execute as @e[type=minecraft:villager,tag=shop] at @s as @e[type=minecraft:villager,tag=shop,distance=0.0001..] if score @e[type=minecraft:villager,tag=shop,distance=..0.0001,sort=nearest,limit=1] player_id = @s player_id run kill @s
execute as @e[type=minecraft:villager,tag=shop] run data modify entity @s Offers.Recipes[].maxUses set value 2147483647
execute as @e[type=minecraft:villager,tag=shop] run data modify entity @s Offers.Recipes[].uses set value 0
execute as @e[type=minecraft:villager,tag=shop,tag=!discount] run data modify entity @s Gossips[].Value set value 1