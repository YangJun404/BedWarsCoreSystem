# pre-execute

# for the first time
execute unless score $copy_process map = $copy_process map run scoreboard players set $copy_process map 0

# data process 1: for x
scoreboard players operation $cycle_x map = $cal_x map
scoreboard players operation $cycle_x map += $copy_process map

execute store result storage bw:map clone.cycle.x double 1 run scoreboard players get $cycle_x map

# execute
execute if score $copy_process map < $long map run function bw:global/map/body/commander_2nd with storage bw:map clone.cycle
execute if score $copy_process map >= $long map run return run function bw:global/map/body/done

# data process 2
scoreboard players add $copy_process map 1