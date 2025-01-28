scoreboard players remove $map_iron_spawner temp 1
summon marker ~ 0 ~ {Tags:["res","res_iron","sys_editing"]}

# 位置更新
# data modify entity @e[type=marker,tag=sys_editing,limit=1] Pos set from storage bw:map using.spawner.copper[0]

# tp @s @e[limit=1,tag=playing_center]
# tp @s ~ 0 ~
# tellraw @a [{"nbt":"Pos","entity": "@s"}]
data modify storage bw:basic temp.Pos.x set from storage bw:map using.spawner.iron[0][0]
data modify storage bw:basic temp.Pos.y set from storage bw:map using.spawner.iron[0][1]
data modify storage bw:basic temp.Pos.z set from storage bw:map using.spawner.iron[0][2]

execute as @e[tag=sys_editing,tag=res,type=marker] at @s run function bw:game/map/init/teleport with storage bw:basic temp.Pos

data remove storage bw:map temp.Pos
data remove storage bw:map using.spawner.iron[0]

# 数据控制
tag @e[type=marker,tag=sys_editing] remove sys_editing

execute if score $map_iron_spawner temp matches 1.. run function bw:game/map/init/spawner/iron