# CYCLE map copyer

# execute
# $execute if score $execute_mode map matches 0 run fill ~ -64 ~ ~ 64 ~$(z4) air replace
# $execute if score $execute_mode map matches 1 run clone ~ -64 ~$(z1) ~ 64 ~$(z2) ~ -64 ~ masked
# $execute if score $execute_mode map matches 2 unless blocks ~ -64 ~$(z1) ~ 64 ~$(z2) ~ -64 ~ masked run 
$execute unless blocks ~ -64 ~$(z1) ~ 64 ~$(z2) ~ -64 ~ all run function bw:global/map/body/execute with storage bw:map clone.cycle
$kill @e[y=-64,dz=$(z4),dy=128,type=!player]

# schedule
execute if score $fast_mode map matches 1 run schedule function bw:global/map/body/commander 1t
execute unless score $fast_mode map matches 1 run schedule function bw:global/map/body/commander 10t