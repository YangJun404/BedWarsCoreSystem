# 初始化微观模型

# 放置空微观模型
fill ~ ~ ~ ~ ~-1 ~ air
setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",name:"map_mini:empty",posX:-11,posY:1,posZ:-11,sizeX:23,sizeY:24,sizeZ:23}
setblock ~ ~-1 ~ redstone_block
# fill ~ ~ ~ ~ ~-1 ~ air
setblock ~ ~-1 ~ air

# 设定方块nbt
data modify block ~ ~ ~ name set value "map_mini:"
data modify block ~ ~ ~ mode set value "SAVE"