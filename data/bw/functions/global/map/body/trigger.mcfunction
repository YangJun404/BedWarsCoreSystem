# 初始化
# scoreboard used: map

# reset first
function bw:global/map/body/reset

# 宣称复制模式
scoreboard players set #sys_working map 1

# 数据拷贝
$data modify storage bw:map clone.last_map set value $(id)
$data modify storage bw:map clone.map set from storage bw:map maps[{id:$(id)d}]

# forceloader # main body (disable when clear mode is on)
data modify storage bw:map clone.forceload.center_x set from storage bw:map clone.map.center[0]
data modify storage bw:map clone.forceload.center_y set from storage bw:map clone.map.center[1]
data modify storage bw:map clone.forceload.center_z set from storage bw:map clone.map.center[2]
data modify storage bw:map clone.forceload.distance set from storage bw:map clone.map.border.max

function bw:global/map/body/forceload with storage bw:map clone.forceload

# change the center point to the playing area
execute store result score $cal_z map run data get storage bw:map clone.map.center[2]
scoreboard players add $cal_z map 1000
execute store result storage bw:map clone.map.center[2] double 1 run scoreboard players get $cal_z map

# forceloader # playing area
data modify storage bw:map clone.forceload.center_x set from storage bw:map clone.map.center[0]
data modify storage bw:map clone.forceload.center_y set from storage bw:map clone.map.center[1]
data modify storage bw:map clone.forceload.center_z set from storage bw:map clone.map.center[2]
data modify storage bw:map clone.forceload.distance set from storage bw:map clone.map.border.max

function bw:global/map/body/forceload with storage bw:map clone.forceload

# cal
# note: the first pos was changed to the playing area instead of main map

## necessary data
execute store result score $r map run data get storage bw:map clone.forceload_distance

scoreboard players set $long map 0
scoreboard players operation $long map += $r map
scoreboard players operation $long map += $r map
scoreboard players add $long map 1

## for z

#note: cal_z3 decide the execute location
execute store result score $cal_z3 map run data get storage bw:map clone.map.center[2]
scoreboard players operation $cal_z3 map -= $r map
# scoreboard players add $cal_z3 map 1000

# scoreboard players operation $cal_x1 map = $cal_x3 map
scoreboard players set $cal_z1 map 0
scoreboard players remove $cal_z1 map 1000

scoreboard players operation $cal_z2 map = $cal_z1 map
scoreboard players operation $cal_z2 map += $long map

scoreboard players set $cal_z4 map 0
scoreboard players operation $cal_z4 map += $long map


## for x
execute store result score $cal_x map run data get storage bw:map clone.map.center[0]

scoreboard players operation $cal_x map -= $r map

# now, start!
execute store result storage bw:map clone.cycle.z1 double 1 run scoreboard players get $cal_z1 map
execute store result storage bw:map clone.cycle.z2 double 1 run scoreboard players get $cal_z2 map
execute store result storage bw:map clone.cycle.z3 double 1 run scoreboard players get $cal_z3 map
execute store result storage bw:map clone.cycle.z4 double 1 run scoreboard players get $cal_z4 map

function bw:global/map/body/commander