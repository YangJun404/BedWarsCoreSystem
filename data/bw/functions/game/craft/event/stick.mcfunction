# 玩家购买击退棒
execute if data entity @s Inventory[{id:"minecraft:debug_stick"}] run function bw:game/craft/event/stick_2nd with entity @s Inventory[{id:"minecraft:debug_stick"}]