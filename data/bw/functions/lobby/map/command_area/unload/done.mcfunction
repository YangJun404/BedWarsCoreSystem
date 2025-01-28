# 指令区卸载

# 解除超时等待
schedule clear bw:lobby/map/command_area/unload/out_time

# 进入状态
execute if score $map_change temp matches 1 run function bw:lobby/map/choice/change/prev
execute if score $map_change temp matches 2 run function bw:lobby/map/choice/change/next
execute unless score $map_change temp = $map_change temp run function bw:lobby/map/change
