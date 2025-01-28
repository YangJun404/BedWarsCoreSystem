data modify entity @s Tags set value ["bed","red_bed"]
data modify entity @s Rotation set from storage bw:map using.team.red.bed.rotation

# 位置更新
teleport @s ~ 0 ~

data modify storage bw:basic temp.Pos.x set from storage bw:map using.team.red.bed.pos[0]
data modify storage bw:basic temp.Pos.y set from storage bw:map using.team.red.bed.pos[1]
data modify storage bw:basic temp.Pos.z set from storage bw:map using.team.red.bed.pos[2]

execute at @s run function bw:game/map/init/teleport with storage bw:basic temp.Pos