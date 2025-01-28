# 指令区加载

# 放置结构方块
setblock 0 48 -25 air
setblock 0 48 -25 minecraft:structure_block[mode=load]{mode:"LOAD",name:"command_area:empty",posX:-11,posY:1,posZ:-11,sizeX:23,sizeY:48,sizeZ:23}
data modify block 0 48 -25 name set from storage bw:map using.command_area_name
# tellraw @a {"nbt":"name","block":"0 48 -25"}

setblock 0 49 -25 redstone_block