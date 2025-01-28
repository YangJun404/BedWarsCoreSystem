# 地图分段复制

# 获取实体位置
execute store result score $entity_x temp run data get entity @s Pos[0]
execute store result score $entity_z temp run data get entity @s Pos[2]

# 计算对应游玩区域位置（x y z+1000）
scoreboard players operation $entity_z temp += $1000 const
execute store result storage bw:basic temp.map_copy.x long 1 run scoreboard players get $entity_x temp
execute store result storage bw:basic temp.map_copy.z long 1 run scoreboard players get $entity_z temp

# 强加载区块计算
scoreboard players operation $entity_forceload_z temp = $entity_z temp
scoreboard players operation $entity_forceload_z temp += $1000 const

execute store result storage bw:basic temp.map_copy.force_load long 1 run scoreboard players get $entity_forceload_z temp

# 根据实际游玩区域拷贝地图
execute if score $copy_mode temp matches 1 positioned ~ ~ ~1000 run function bw:global/map/init/clone/marker_clone_clear_2nd with storage bw:basic temp.map_copy
execute if score $copy_mode temp matches 2 run function bw:global/map/init/clone/marker_clone_2nd with storage bw:basic temp.map_copy
execute if score $copy_mode temp matches 3 run function bw:global/map/init/clone/marker_check_2nd with storage bw:basic temp.map_copy

# 移动实体
tp @s ~1 ~ ~
# tellraw @a ["DATA Pos::@s // ",{"nbt":"Pos","entity": "@s"}]

# Loop
scoreboard players add $map_coping temp 1

# ## bossbar
# execute store result bossbar lobby value run scoreboard players get $map_coping temp

## loop
execute if score $map_coping temp >= $map_coping_max temp run function bw:global/map/init/clone/done
execute if score $map_coping temp < $map_coping_max temp unless score $fast_mode temp matches 1 if score $tps tps matches 20 run schedule function bw:global/map/init/clone/marker_clone_schedule 5t replace
execute if score $map_coping temp < $map_coping_max temp unless score $fast_mode temp matches 1 unless score $tps tps matches 20 run schedule function bw:global/map/init/clone/marker_clone_schedule 10t replace
execute if score $map_coping temp < $map_coping_max temp if score $fast_mode temp matches 1 run schedule function bw:global/map/init/clone/marker_clone_schedule 1t replace