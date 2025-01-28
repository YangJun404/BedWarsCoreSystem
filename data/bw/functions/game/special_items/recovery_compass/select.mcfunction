# 玩家在使用追溯指针 尝试切换玩家时触发

# 数据操控
execute if score @s compass_select >= $ player_id run scoreboard players set @s compass_select 0

# 如果没有选择到在线的玩家则跳过这一玩家（循环）
tag @a remove compass_allow
execute as @a[gamemode=!spectator,tag=playing] if score @s player_id = @p compass_select run tag @p add compass_allow
execute as @s[tag=!compass_allow] run function bw:game/special_items/recovery_compass/select_loop