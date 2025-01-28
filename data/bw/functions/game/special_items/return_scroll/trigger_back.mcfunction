# 回城卷轴 - 触发返回
effect give @s minecraft:resistance 1 5
effect give @s blindness 1 5
function bw:game/map/enter
title @s title {"storage":"bw:lang","nbt":"game.specical_item.return_scroll.return.title","interpret": true}
title @s subtitle {"storage":"bw:lang","nbt":"game.specical_item.return_scroll.return.subtitle","interpret": true}
function lib:sounds/hit2

# 重置
function bw:game/special_items/return_scroll/reset

# 清除道具
# item replace entity @s weapon.mainhand from entity @s weapon.offhand
# item replace entity @s weapon.offhand with air
clear @s minecraft:gunpowder 1