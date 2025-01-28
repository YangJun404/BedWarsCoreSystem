# 初始化
# scoreboard used: map

# 数据拷贝
data remove storage bw:map clone
$data modify storage bw:map clone.map set from storage bw:map maps[$(id)]

# forceloader # main body
# disable when clear mode is on
execute unless score $execute_mode map matches 0 run data modify storage bw:map clone.center_x set from storage bw:map clone.map.center[0]
execute unless score $execute_mode map matches 0 run data modify storage bw:map clone.center_y set from storage bw:map clone.map.center[1]
execute unless score $execute_mode map matches 0 run data modify storage bw:map clone.center_z set from storage bw:map clone.map.center[2]
execute unless score $execute_mode map matches 0 run data modify storage bw:map clone.forceload_distance set from storage bw:map clone.map.border.max

execute unless score $execute_mode map matches 0 run function bw:global/map/body/forceload with storage bw:map clone

# change the center point to the playing area
execute store result score $cal_x map run data get storage bw:map clone.map.center[0]
execute store result storage bw:map clone.map.center[0] double 1 run scoreboard players get $cal_x map

# forceloader # playing area
data modify storage bw:map clone.center_x set from storage bw:map clone.map.center[0]
data modify storage bw:map clone.center_y set from storage bw:map clone.map.center[1]
data modify storage bw:map clone.center_z set from storage bw:map clone.map.center[2]
data modify storage bw:map clone.forceload_distance set from storage bw:map clone.map.border.max

function bw:global/map/body/forceload with storage bw:map clone

# cal
# note: the first pos was changed to the playing area instead of main map

## necessary data
execute store result score $long map run data get storage bw:map clone.forceload_distance

## center point pos
execute store result score $cal_x1 map run data get storage bw:map clone.map[0]
execute store result score $cal_x2 map run data get storage bw:map clone.map[0]

execute store result score $cal_y map run data get storage bw:map clone.map[1]
execute store result score $cal_z map run data get storage bw:map clone.map[2]

## cal x
scoreboard players operation $cal_x1 map -= $long map
scoreboard players operation $cal_x2 map += $long map

scoreboard players operation $cal_x3 map = $cal_x1 const
scoreboard players operation $cal_x3 map += $1000 const

## cal y for the first point
scoreboard players operation $cal_y map -= $long map

# now, start!
say (body) start copy;
execute store result storage bw:map clone.cycle.x1 double 1 run scoreboard players get $cal_x1 map
execute store result storage bw:map clone.cycle.x2 double 1 run scoreboard players get $cal_x2 map
execute store result storage bw:map clone.cycle.x3 double 1 run scoreboard players get $cal_x3 map

function bw:global/map/body/cycle with storage bw:map clone.cycle
