data modify entity @s Tags set value ["spawn","blue_spawn"]

# 位置更新
teleport @s ~ 0 ~

data modify storage bw:basic temp.Pos.x set from storage bw:map using.team.blue.spawn[0]
data modify storage bw:basic temp.Pos.y set from storage bw:map using.team.blue.spawn[1]
data modify storage bw:basic temp.Pos.z set from storage bw:map using.team.blue.spawn[2]

execute at @s run function bw:game/map/init/teleport with storage bw:basic temp.Pos