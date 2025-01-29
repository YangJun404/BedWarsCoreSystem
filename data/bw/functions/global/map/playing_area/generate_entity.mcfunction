# 生成地图必要实体

# 拷贝数据 
data remove storage bw:map using
execute store result storage bw:map using.id int 1 run scoreboard players get $using map
function bw:global/map/playing_area/copy_data with storage bw:map using

# 强加载游玩区域
execute store result score $using_x map run data get storage bw:map using.center[0]
execute store result score $using_y map run data get storage bw:map using.center[1]
execute store result score $using_z map run data get storage bw:map using.center[2]

scoreboard players add $using_z map 1000

execute store result storage bw:map using.generate_entity.x int 1 run scoreboard players get $using_x map
execute store result storage bw:map using.generate_entity.y int 1 run scoreboard players get $using_y map
execute store result storage bw:map using.generate_entity.z int 1 run scoreboard players get $using_z map
data modify storage bw:map using.generate_entity.distance set from storage bw:map using.border.max

function bw:global/map/playing_area/forceload with storage bw:map using.generate_entity

# 生成游玩区域中心点
kill @e[type=marker,tag=playing_center]
execute summon marker run function bw:global/map/playing_area/init_entity

# 清除无用数据
data remove storage bw:map using.generate_entity
scoreboard players reset $using_x map
scoreboard players reset $using_z map