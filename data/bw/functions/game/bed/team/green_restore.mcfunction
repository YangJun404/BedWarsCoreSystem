# 恢复绿队的床

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