# 每 10 Tick 执行一次

# 玩家时钟
execute as @a[tag=playing,tag=!afk,team=!debug] at @s run function bw:game/tick/10tick_player

# 附魔系统
execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book"}}] at @s if entity @e[distance=0.1..0.8,type=item,nbt=!{Item:{id:"minecraft:enchanted_book"}}] run data modify entity @e[sort=nearest,limit=1,type=item,nbt=!{Item:{id:"minecraft:enchanted_book"}}] Item.tag.Enchantments append from entity @s Item.tag.StoredEnchantments[{}]
execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book"}}] at @s if entity @e[distance=0.1..0.8,type=item,nbt=!{Item:{id:"minecraft:enchanted_book"}}] run kill @s