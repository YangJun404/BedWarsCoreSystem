# 地图拷贝完成 触发器

# 粘贴完成后反馈
execute if score $copy_mode temp matches 2 run function bw:global/map/init/data/6nd

# 清除后再粘贴
execute if score $copy_mode temp matches 1 run function bw:global/map/init/clone/change_mode