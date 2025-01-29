# 选择一个数据实体并且修改

# 初始化主程序
execute unless score #init mi_mem matches 1 run function debug:map_import/init

# 玩家数据设定
team join debug @s
tag @s add map_importer

# 设定玩家步数
scoreboard players set @s mi_mem 130

# 发送主菜单
function debug:map_import/step/show