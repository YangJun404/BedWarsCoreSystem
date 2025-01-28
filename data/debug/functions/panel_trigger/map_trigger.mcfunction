# 地图：启用/卸载 地图导入系统

# 获得地图导入系统运行状态
scoreboard players operation $mi_init temp = #init mi_mem

# 根据获得到的状态执行对应指令
execute if score $mi_init temp matches 1 run function debug:importer/map/cancel
execute unless score $mi_init temp matches 1 run function debug:importer/map/start

# 收尾
scoreboard players reset $mi_init temp
