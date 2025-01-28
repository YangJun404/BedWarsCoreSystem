# 播放音效
execute as @a[team=!yellow] at @s run function lib:sounds/dragon_growl
execute as @a[team=yellow] at @s run function lib:sounds/wither_death

# 发送提示
tellraw @a[team=!yellow] [{"text": "[⛏] ","bold": true,"color": "aqua"},{"selector":"@s","bold": false},{"text": " 破坏了黄队的床！","bold": false}]
tellraw @a[team=yellow] [{"text": "[⛏]  ","bold": true,"color": "yellow"},{"selector":"@s","bold": false},{"text": " 破坏了你的床，你将再也无法重生！","bold": false}]

# 超级酷的特效！
execute as @e[tag=yellow_bed,type=marker] at @s run function bw:game/bed/break_effect

# 清除床
execute at @e[type=marker,tag=yellow_bed] run setblock ~ ~ ~ air

# 清除实体
kill @e[type=marker,tag=yellow_bed]
# kill @e[type=item,nbt={Item:{id:"minecraft:yellow_bed"}}]

# 记录操作
scoreboard players set $yellow_bed team 2
tag @a[team=yellow] add lose_bed

# 刷新本局信息
function bw:game/update_round_info