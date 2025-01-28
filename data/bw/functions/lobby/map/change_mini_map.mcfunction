fill 11 45 49 -11 67 71 air
kill @e[type=item,tag=!bypass_kill]

fill 0 43 60 0 44 60 air
setblock 0 43 60 minecraft:structure_block[mode=load]{mode:"LOAD",posX:-11,posY:1,posZ:-11,sizeX:23,sizeY:24,sizeZ:23,name:"map_mini:empty"}
execute if score $sel map matches 0 run data modify block 0 43 60 name set value "map_mini:random"
execute unless score $sel map matches 0 if data storage bw:map using.mini_name run data modify block 0 43 60 name set from storage bw:map using.mini_name

setblock 0 44 60 redstone_block
setblock 0 43 60 air