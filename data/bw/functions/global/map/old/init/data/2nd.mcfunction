#> bw:lobby/map/init/data/2nd
# 地图初始化 #2

# 克隆数据
data remove storage bw:map clone.data
$data modify storage bw:map clone.data set from storage bw:map maps[{id:$(id)d}]

$tellraw @a ["参数 (id)::global/map/init/data/2nd // $(id)"]
tellraw @a ["clone bw:map // ",{"nbt":"clone","storage": "bw:map"}]

# 获取中心点强加载数据并且传入下一层
execute store result storage bw:map temp.center_x long 1 run data get storage bw:map clone.data.center[0]
execute store result storage bw:map temp.center_z long 1 run data get storage bw:map clone.data.center[2]

data modify storage bw:map temp.id set from storage bw:map clone.data.id
function bw:global/map/init/data/3nd with storage bw:map temp


# # 放置强加强区块
# forceload add ~150 ~150 ~ ~ 
# forceload add ~1 1 ~-150 ~-150

# # 召唤中心点
# kill @e[type=marker,tag=map_center]
# execute summon marker run function bw:lobby/map/init/map_center_nbt

# # 删除forceloader（检测到有中心点的情况下）
# execute if entity @e[type=marker,tag=map_center] run kill @s
# execute if entity @e[type=marker,tag=map_center] run fill 0 319 0 0 318 0 air

# # 由中心点执行后续操作
# execute as @e[type=marker,tag=map_center] at @s run function bw:lobby/map/init/clone/setup