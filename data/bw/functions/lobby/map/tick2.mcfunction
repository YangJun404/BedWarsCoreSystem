# 每 2 Tick 执行一次

# 选择上一张地图
execute if block 2 50 36 minecraft:stone_button[face=floor,facing=north,powered=true] run function bw:lobby/map/choice/buttom/prev
setblock 2 50 36 minecraft:stone_button[face=floor,facing=north,powered=false]

# 选择下一张地图
execute if block -2 50 36 minecraft:stone_button[face=floor,facing=north,powered=true] run function bw:lobby/map/choice/buttom/next
setblock -2 50 36 minecraft:stone_button[face=floor,facing=north,powered=false]