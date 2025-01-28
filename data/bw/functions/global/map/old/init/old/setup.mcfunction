# 分段复制地图 初始化
# as / at 地图中心点

#debug
scoreboard players reset $debug_fill temp

# 计算地图长宽
execute store result score $map_coping_max temp run data get storage bw:map clone.data.border.max
scoreboard players operation $map_coping_max temp *= $2 const
scoreboard players add $map_coping_max temp 1

execute store result storage bw:basic temp.map_copy.long int 1 run scoreboard players get $map_coping_max temp

# 计分板运算
scoreboard players set $map_coping temp 0

# # 创造 BossBar 并且设定为复制状态
# bossbar set lobby name {"storage":"bw:lang","nbt":"lobby.map.clone.bossbar","interpret": true}
# execute store result bossbar lobby max run scoreboard players get $map_coping_max temp
# bossbar set lobby players @a

# 生成对应实体
execute summon marker run data modify entity @s Tags set value ["temp","map_clone"]

# 计算偏差量
execute store result score $map_x temp run data get entity @e[type=marker,tag=map_center,limit=1,tag=copying] Pos[0]
execute store result score $map_z temp run data get entity @e[type=marker,tag=map_center,limit=1,tag=copying] Pos[2]
execute store result score $map_border temp run data get storage bw:map clone.data.border.max

# 更新实体位置（x y z）
scoreboard players operation $entity_x temp = $map_x temp
scoreboard players operation $entity_z temp = $map_z temp

scoreboard players operation $entity_x temp -= $map_border temp
scoreboard players operation $entity_z temp -= $map_border temp

execute store result entity @e[limit=1,type=marker,tag=map_clone] Pos[0] double 1 run scoreboard players get $entity_x temp 
data modify entity @e[limit=1,type=marker,tag=map_clone] Pos[1] set value -64d
execute store result entity @e[limit=1,type=marker,tag=map_clone] Pos[2] double 1 run scoreboard players get $entity_z temp 

scoreboard players reset $entity_x temp
scoreboard players reset $entity_z temp

# 分段复制
schedule function bw:global/map/init/clone/marker_clone_schedule 2t replace

# 收尾
scoreboard players reset $map_border temp