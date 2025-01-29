# 开始检查地图

# 宣称正在自动化检测
scoreboard players set #checking map 1

# 恢复上次检查的进度
execute unless data storage bw:map clone.restore.wait store result storage bw:map clone.restore.wait int 1 run scoreboard players get $min map
data modify storage bw:map clone.restore.id set from storage bw:map clone.restore.wait

# 预制下一次检测内容
execute store result score $restore_wait map run data get storage bw:map clone.restore.wait
scoreboard players add $restore_wait map 1
execute if score $restore_wait map matches 0 run scoreboard players set $restore_wait map 1
execute if score $restore_wait map = $using map run scoreboard players add $restore_wait map 1
execute if score $restore_wait map > $max map run scoreboard players operation $restore_wait map = $min map

execute store result storage bw:map clone.restore.wait int 1 run scoreboard players get $restore_wait map
scoreboard players reset $restore_wait map

# 开始检查
function bw:global/map/body/trigger with storage bw:map clone.restore