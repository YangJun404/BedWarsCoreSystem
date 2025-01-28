# 重置地图复制系统
schedule clear bw:global/map/init/clone/marker_clone_schedule
schedule clear bw:global/map/init/clone/marker_clone
kill @e[type=marker,tag=map_clone]
scoreboard players reset $map_x temp 
scoreboard players reset $map_z temp 
scoreboard players reset $entity_x temp 
scoreboard players reset $map_long temp
scoreboard players reset $copy_mode temp
scoreboard players reset $entity_forceload_z temp
scoreboard players reset $entity_z temp 
scoreboard players reset $map_border temp 
scoreboard players reset $map_coping temp
scoreboard players reset $map_coping_max temp
data remove storage bw:basic temp.map_copy
# bossbar set lobby players
fill -100 43 140 101 -64 160 air