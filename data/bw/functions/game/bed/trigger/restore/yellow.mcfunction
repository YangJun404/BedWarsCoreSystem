# 复活黄队的床

# 如果已有床则退出
execute if score $yellow_bed team matches 1 if entity @e[type=marker,tag=yellow_bed] run return 2

# 生成实体
summon marker ~ ~ ~ {Tags:["bed","yellow_bed"]}

# 应用床位置和朝向
data modify entity @e[type=marker,tag=yellow_bed,limit=1] Pos set from storage bw:map using.team.yellow.bed.pos
data modify entity @e[type=marker,tag=yellow_bed,limit=1] Rotation set from storage bw:map using.team.yellow.bed.rotation

# 计分板更新
scoreboard players set $yellow_bed team 1

# 清除破坏特效
execute as @e[type=marker,tag=yellow_bed] at @s run kill @e[type=text_display,tag=bed,distance=0..3,limit=1,sort=nearest]

# 恢复方块
function bw:game/bed/team/yellow_restore