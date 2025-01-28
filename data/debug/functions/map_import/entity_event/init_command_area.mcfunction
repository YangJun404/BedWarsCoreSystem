# 初始化指令区域

# 放置空指令区域
fill ~ ~ ~ ~ ~-1 ~ air
setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"command_area:empty",posX:-11,posY:1,posZ:-11,sizeX:23,sizeY:48,sizeZ:23}
setblock ~ ~-1 ~ redstone_block
# fill ~ ~ ~ ~ ~-1 ~ air
setblock ~ ~-1 ~ air

# 设定方块nbt
data modify block ~ ~ ~ name set value "command_area:"
data modify block ~ ~ ~ mode set value "SAVE"