# 2nd

# 记分板计算
scoreboard players remove $maintenance_transfer temp 1
execute store result storage bw:basic temp.maintenance.transfer int 1 run scoreboard players get $maintenance_transfer temp
scoreboard players add $maintenance_serial temp 1
execute store result storage bw:basic temp.maintenance.serial int 1 run scoreboard players get $maintenance_serial temp

# 发送参数传递内容
execute if score $maintenance_transfer temp matches 0.. run function bw:global/event/maintenance_warn/print_content_third with storage bw:basic temp.maintenance

# loop
execute if score $maintenance_transfer temp matches 1.. run function bw:global/event/maintenance_warn/print_content_sec