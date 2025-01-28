# 玩家破坏自己的床

# 发送提示
tellraw @s [{"text": "[⚠] ","bold": true,"color": "red"},{"text": "你不能破坏自己的床！","bold": false}]
tag @s remove break_own_bed

# 重新放置床
execute as @s[team=blue] run function bw:game/bed/team/blue_restore
execute as @s[team=green] run function bw:game/bed/team/green_restore
execute as @s[team=red] run function bw:game/bed/team/red_restore
execute as @s[team=yellow] run function bw:game/bed/team/yellow_restore

# 清除物品实体
kill @e[type=item,nbt={Item:{id:"minecraft:blue_bed"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:red_bed"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:green_bed"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:yellow_bed"}}]