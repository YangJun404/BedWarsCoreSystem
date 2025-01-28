# CYCLE map copyer

#debug
tp YJ_ ~ ~ ~ ~ ~

# mode execute
# $execute if score $execute_mode map matches 0 run function fill 0
$execute if score $execute_mode map matches 1 run clone ~ -64 $(z1) ~$(long) 64 $(z2) $(x3) -64 $(z1) masked
# $execute if score $execute_mode map matches 2 if blocks

# cal
#note: x,x+1000; z +1/cycle
scoreboard players operation $cal_y map += $1 const



# schedule
function bw:global/map/body/cycle with 