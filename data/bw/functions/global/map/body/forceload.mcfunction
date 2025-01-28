# 强加载区块

# 在中心点执行函数
$execute unless entity @s[x=$(center_x),y=$(center_y),z=$(center_z),dx=1,dy=1,dz=1] positioned $(center_x) $(center_y) $(center_z) run return run function bw:global/map/init/clone/forceload with storage bw:map clone

# 分别添加强加载
$forceload add ~ ~ ~$(forceload_distance) ~$(forceload_distance)
$forceload add ~ ~ ~-$(forceload_distance) ~$(forceload_distance)
$forceload add ~ ~ ~$(forceload_distance) ~-$(forceload_distance)
$forceload add ~ ~ ~-$(forceload_distance) ~-$(forceload_distance)

#debug
tellraw @a ["DEBUG map clone forceload done;"]