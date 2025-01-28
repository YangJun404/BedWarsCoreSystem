# 地图载入
kill @e[tag=res,type=marker]


# 导入边界数据
execute store result score $size border run data get storage bw:map using.border.max
execute store result score $size_min border run data get storage bw:map using.border.min

# 资源点数据
execute store result score $map_copper_spawner temp run data get storage bw:map using.spawner.number.copper
function bw:game/map/init/spawner/copper
execute store result score $map_iron_spawner temp run data get storage bw:map using.spawner.number.iron
function bw:game/map/init/spawner/iron
execute store result score $map_diamond_spawner temp run data get storage bw:map using.spawner.number.diamond
function bw:game/map/init/spawner/diamond

scoreboard players reset $map_copper_spawner temp
scoreboard players reset $map_iron_spawner temp
scoreboard players reset $map_diamond_spawner temp

# 转换资源点
execute as @e[type=marker,tag=res_diamond] at @s run summon armor_stand ~ ~1.5 ~ {Tags:["res","res_diamond"],Small:true,Marker:true,Invisible:true,NoGravity:true,Invulnerable:true,CustomNameVisible:true,ArmorItems: [{}, {}, {}, {id: "minecraft:diamond_block", Count: 1b}]}
execute as @e[type=marker,tag=res_iron] at @s run summon armor_stand ~ ~1.5 ~ {Tags:["res","res_iron"],Small:true,Marker:true,Invisible:true,NoGravity:true,Invulnerable:true,CustomNameVisible:true,ArmorItems: [{}, {}, {}, {id: "minecraft:iron_block", Count: 1b}]}
execute as @e[type=marker,tag=res_copper] at @s run summon armor_stand ~ ~1.5 ~ {Tags:["res","res_copper"],Small:true,Marker:true,Invisible:true,NoGravity:true,Invulnerable:true}
kill @e[type=marker,tag=res]

# 床数据
execute if score $red_bed team matches 1 summon marker run function bw:game/map/init/bed/red
execute if score $blue_bed team matches 1 summon marker run function bw:game/map/init/bed/blue
execute if score $green_bed team matches 1 summon marker run function bw:game/map/init/bed/green
execute if score $yellow_bed team matches 1 summon marker run function bw:game/map/init/bed/yellow

# 出生点数据
execute summon marker run function bw:game/map/init/spawn/red
execute summon marker run function bw:game/map/init/spawn/blue
execute summon marker run function bw:game/map/init/spawn/green
execute summon marker at @s run function bw:game/map/init/spawn/yellow
execute as @e[type=marker,tag=spawn] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=playing_center,limit=1,sort=nearest] feet
execute as @e[type=marker,tag=spawn] at @s rotated ~ 0 run tp @s ~ ~ ~ ~ ~ 

# 放置床
execute as @e[type=marker,tag=blue_bed,y_rotation=135.1..180] at @s run setblock ~ ~ ~ blue_bed[facing=north]
execute as @e[type=marker,tag=blue_bed,y_rotation=135.1..180] at @s run setblock ~ ~ ~-1 blue_bed[facing=north,part=head]
execute as @e[type=marker,tag=blue_bed,y_rotation=-180..-135] at @s run setblock ~ ~ ~ blue_bed[facing=north]
execute as @e[type=marker,tag=blue_bed,y_rotation=-180..-135] at @s run setblock ~ ~ ~-1 blue_bed[facing=north,part=head]
execute as @e[type=marker,tag=blue_bed,y_rotation=-134.9..-45] at @s run setblock ~ ~ ~ blue_bed[facing=east]
execute as @e[type=marker,tag=blue_bed,y_rotation=-134.9..-45] at @s run setblock ~1 ~ ~ blue_bed[facing=east,part=head]
execute as @e[type=marker,tag=blue_bed,y_rotation=-44.9..45] at @s run setblock ~ ~ ~ blue_bed[facing=south]
execute as @e[type=marker,tag=blue_bed,y_rotation=-44.9..45] at @s run setblock ~ ~ ~1 blue_bed[facing=south,part=head]
execute as @e[type=marker,tag=blue_bed,y_rotation=45.1..135] at @s run setblock ~ ~ ~ blue_bed[facing=west]
execute as @e[type=marker,tag=blue_bed,y_rotation=45.1..135] at @s run setblock ~-1 ~ ~ blue_bed[facing=west,part=head]

execute as @e[type=marker,tag=red_bed,y_rotation=135.1..180] at @s run setblock ~ ~ ~ red_bed[facing=north]
execute as @e[type=marker,tag=red_bed,y_rotation=135.1..180] at @s run setblock ~ ~ ~-1 red_bed[facing=north,part=head]
execute as @e[type=marker,tag=red_bed,y_rotation=-180..-135] at @s run setblock ~ ~ ~ red_bed[facing=north]
execute as @e[type=marker,tag=red_bed,y_rotation=-180..-135] at @s run setblock ~ ~ ~-1 red_bed[facing=north,part=head]
execute as @e[type=marker,tag=red_bed,y_rotation=-134.9..-45] at @s run setblock ~ ~ ~ red_bed[facing=east]
execute as @e[type=marker,tag=red_bed,y_rotation=-134.9..-45] at @s run setblock ~1 ~ ~ red_bed[facing=east,part=head]
execute as @e[type=marker,tag=red_bed,y_rotation=-44.9..45] at @s run setblock ~ ~ ~ red_bed[facing=south]
execute as @e[type=marker,tag=red_bed,y_rotation=-44.9..45] at @s run setblock ~ ~ ~1 red_bed[facing=south,part=head]
execute as @e[type=marker,tag=red_bed,y_rotation=45.1..135] at @s run setblock ~ ~ ~ red_bed[facing=west]
execute as @e[type=marker,tag=red_bed,y_rotation=45.1..135] at @s run setblock ~-1 ~ ~ red_bed[facing=west,part=head]

execute as @e[type=marker,tag=green_bed,y_rotation=135.1..180] at @s run setblock ~ ~ ~ green_bed[facing=north]
execute as @e[type=marker,tag=green_bed,y_rotation=135.1..180] at @s run setblock ~ ~ ~-1 green_bed[facing=north,part=head]
execute as @e[type=marker,tag=green_bed,y_rotation=-180..-135] at @s run setblock ~ ~ ~ green_bed[facing=north]
execute as @e[type=marker,tag=green_bed,y_rotation=-180..-135] at @s run setblock ~ ~ ~-1 green_bed[facing=north,part=head]
execute as @e[type=marker,tag=green_bed,y_rotation=-134.9..-45] at @s run setblock ~ ~ ~ green_bed[facing=east]
execute as @e[type=marker,tag=green_bed,y_rotation=-134.9..-45] at @s run setblock ~1 ~ ~ green_bed[facing=east,part=head]
execute as @e[type=marker,tag=green_bed,y_rotation=-44.9..45] at @s run setblock ~ ~ ~ green_bed[facing=south]
execute as @e[type=marker,tag=green_bed,y_rotation=-44.9..45] at @s run setblock ~ ~ ~1 green_bed[facing=south,part=head]
execute as @e[type=marker,tag=green_bed,y_rotation=45.1..135] at @s run setblock ~ ~ ~ green_bed[facing=west]
execute as @e[type=marker,tag=green_bed,y_rotation=45.1..135] at @s run setblock ~-1 ~ ~ green_bed[facing=west,part=head]

execute as @e[type=marker,tag=yellow_bed,y_rotation=135.1..180] at @s run setblock ~ ~ ~ yellow_bed[facing=north]
execute as @e[type=marker,tag=yellow_bed,y_rotation=135.1..180] at @s run setblock ~ ~ ~-1 yellow_bed[facing=north,part=head]
execute as @e[type=marker,tag=yellow_bed,y_rotation=-180..-135] at @s run setblock ~ ~ ~ yellow_bed[facing=north]
execute as @e[type=marker,tag=yellow_bed,y_rotation=-180..-135] at @s run setblock ~ ~ ~-1 yellow_bed[facing=north,part=head]
execute as @e[type=marker,tag=yellow_bed,y_rotation=-134.9..-45] at @s run setblock ~ ~ ~ yellow_bed[facing=east]
execute as @e[type=marker,tag=yellow_bed,y_rotation=-134.9..-45] at @s run setblock ~1 ~ ~ yellow_bed[facing=east,part=head]
execute as @e[type=marker,tag=yellow_bed,y_rotation=-44.9..45] at @s run setblock ~ ~ ~ yellow_bed[facing=south]
execute as @e[type=marker,tag=yellow_bed,y_rotation=-44.9..45] at @s run setblock ~ ~ ~1 yellow_bed[facing=south,part=head]
execute as @e[type=marker,tag=yellow_bed,y_rotation=45.1..135] at @s run setblock ~ ~ ~ yellow_bed[facing=west]
execute as @e[type=marker,tag=yellow_bed,y_rotation=45.1..135] at @s run setblock ~-1 ~ ~ yellow_bed[facing=west,part=head]