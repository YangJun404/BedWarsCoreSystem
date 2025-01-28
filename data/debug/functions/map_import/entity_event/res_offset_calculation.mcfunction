# 保存资源点数据

# 保存临时实体位置
execute store result score $entity_x mi_mem run data get entity @s Pos[0]
# execute store result score $entity_y mi_mem run data get entity @s Pos[1]
execute store result score $entity_z mi_mem run data get entity @s Pos[2]

# 通过偏移量计算游玩区域位置
scoreboard players operation $entity_x mi_mem -= $center_x mi_mem
# scoreboard players operation $entity_y mi_mem -= $center_y mi_mem
scoreboard players operation $entity_z mi_mem -= $center_z mi_mem

# 矫正 xz 轴
scoreboard players operation $entity_x mi_mem *= $10 const
scoreboard players operation $entity_z mi_mem *= $10 const

scoreboard players operation $entity_x mi_mem += $5 const
scoreboard players operation $entity_z mi_mem += $5 const

# 保存资源点数据
execute store result entity @s Pos[0] double 0.1 run scoreboard players get $entity_x mi_mem
# execute store result entity @s Pos[1] double 1 run scoreboard players get $entity_y mi_mem
execute store result entity @s Pos[2] double 0.1 run scoreboard players get $entity_z mi_mem

# 清除暂时数据
scoreboard players reset $entity_x mi_mem
# scoreboard players reset $entity_y mi_mem
scoreboard players reset $entity_z mi_mem