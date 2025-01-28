# 完成地图复制 触发器

# 还原系统
execute as @e[type=marker,tag=map_center] run tag @s remove copying
function bw:global/map/init/clone/reset

# 解除锁定
execute as @e[type=marker,tag=map_center] run data remove entity @s data.lock

# 刷新地图复制列表
schedule function bw:global/map/cron/refresh 2s