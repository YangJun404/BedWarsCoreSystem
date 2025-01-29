# 完成地图复制 触发器

# 重置系统
function bw:global/map/control/reset_all

# 解除锁定
execute as @e[type=marker,tag=map_center] run data remove entity @s data.lock

# 刷新地图复制列表
schedule function bw:global/map/control/refresh 2s