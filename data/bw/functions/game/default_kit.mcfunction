# 玩家初始装备

# 护甲
item replace entity @s[nbt=!{Inventory:[{Slot:103b}]},team=blue] armor.head with leather_helmet{Unbreakable:true,Enchantments:[{id:"minecraft:binding_curse", lvl:1}],display:{color:3772876}} 1
item replace entity @s[nbt=!{Inventory:[{Slot:103b}]},team=red] armor.head with leather_helmet{Unbreakable:true,Enchantments:[{id:"minecraft:binding_curse", lvl:1}],display:{color:13515579}} 1
item replace entity @s[nbt=!{Inventory:[{Slot:103b}]},team=green] armor.head with leather_helmet{Unbreakable:true,Enchantments:[{id:"minecraft:binding_curse", lvl:1}],display:{color:5749079}} 1
item replace entity @s[nbt=!{Inventory:[{Slot:103b}]},team=yellow] armor.head with leather_helmet{Unbreakable:true,Enchantments:[{id:"minecraft:binding_curse", lvl:1}],display:{color:14738018}} 1
item replace entity @s[nbt=!{Inventory:[{Slot:103b}]}] armor.head with leather_helmet{Unbreakable:true,Enchantments:[{id:"minecraft:binding_curse", lvl:1}]} 1
item replace entity @s[nbt=!{Inventory:[{Slot:103b}]}] armor.head with leather_helmet{Unbreakable:true,Enchantments:[{id:"minecraft:binding_curse", lvl:1}]} 1
item replace entity @s[nbt=!{Inventory:[{Slot:103b}]}] armor.head with leather_helmet{Unbreakable:true,Enchantments:[{id:"minecraft:binding_curse", lvl:1}]} 1

item replace entity @s[nbt=!{Inventory:[{Slot:102b}]}] armor.chest with chainmail_chestplate{Unbreakable:true} 1
item replace entity @s[nbt=!{Inventory:[{Slot:101b}]}] armor.legs with chainmail_leggings{Unbreakable:true} 1
item replace entity @s[nbt=!{Inventory:[{Slot:100b}]}] armor.feet with chainmail_boots{Unbreakable:true} 1

# 武器
clear @s wooden_sword
execute store success score @s temp run clear @s #bw:combat 0
execute unless score @s temp matches 1.. run give @s wooden_sword{Tags:["mini_item","disable_throw"],Unbreakable:true} 1
scoreboard players reset @s temp

# 基础资源
execute if score $shop_type gamerule matches 1 run give @s stick 6