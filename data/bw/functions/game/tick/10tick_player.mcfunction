# 每 10 Tick 执行一次
# as @a[tag=playing,tag=!afk,team=!debug] at @s

# 大厅保护
title @s[x=-200,y=34,z=-200,dx=400,dy=10,dz=400,gamemode=survival,tag=playing] title {"storage":"bw:lang","nbt":"game.lobby_protect.title","interpret": true}
title @s[x=-200,y=34,z=-200,dx=400,dy=10,dz=400,gamemode=survival,tag=playing] subtitle {"storage":"bw:lang","nbt":"game.lobby_protect.subtitle","interpret": true}
execute as @s[x=-200,y=34,z=-200,dx=400,dy=10,dz=400,gamemode=survival,tag=playing] at @s run function lib:sounds/hit
kill @s[x=-200,y=40,z=-200,dx=400,dy=4,dz=400,gamemode=survival,tag=playing]

# 特殊物品的nbt设定
item modify entity @s[nbt={SelectedItem:{id: "minecraft:wooden_axe"}}] weapon.mainhand bw:special_items/wooden_axe
item modify entity @s[nbt={SelectedItem:{id: "minecraft:tnt"}}] weapon.mainhand bw:special_items/tnt
item modify entity @s[nbt={Inventory:[{Slot:-106b,id: "minecraft:tnt"}]}] weapon.offhand bw:special_items/tnt

# 如果有玩家合成：立即调用合成检测
execute if score $shop_type gamerule matches 1 run function bw:game/craft/check

# 虚空伤害（y=-128）
execute if score $void_damage gamerule matches 1 as @s[x=-200,y=-200,z=-200,dx=400,dy=72,dz=400,gamemode=survival] run damage @s 8 out_of_world
execute if score $void_damage gamerule matches 2 as @s[x=-200,y=-200,z=-200,dx=400,dy=100,dz=400,gamemode=survival] run damage @s 114514 out_of_world

# 调用特殊物品
function bw:game/special_items/tick10