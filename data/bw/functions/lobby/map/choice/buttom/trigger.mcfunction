# 地图锁
execute if score $locking command_area matches 1 run function bw:lobby/map/command_area/unload/out_time_message
execute if score $locking command_area matches 1 run return 1

# 卸载指令区域
function bw:lobby/map/command_area/unload/trigger