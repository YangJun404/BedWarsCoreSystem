data modify entity @s Tags set value ["bed","green_bed"]
data modify entity @s Rotation set from storage bw:map using.team.green.bed.rotation

# 位置更新

tellraw @s {"nbt":"Pos","entity":"@s"}

teleport @s ~ 0 ~

tellraw @s {"nbt":"Pos","entity":"@s"}

data modify storage bw:basic temp.Pos.x set from storage bw:map using.team.green.bed.pos[0]
data modify storage bw:basic temp.Pos.y set from storage bw:map using.team.green.bed.pos[1]
data modify storage bw:basic temp.Pos.z set from storage bw:map using.team.green.bed.pos[2]

execute at @s run function bw:game/map/init/teleport with storage bw:basic temp.Pos

tellraw @s {"nbt":"Pos","entity":"@s"}