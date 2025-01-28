#> bw:lobby/map/lock/tick2
# 地图解锁

# 尝试解锁地图
execute as @e[type=snowball,nbt={Item:{tag:{Tags:["map_unlock"]}}}] run function bw:lobby/map/lock/snowball