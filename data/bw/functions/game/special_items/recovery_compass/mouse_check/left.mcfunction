# 左键操作

# 数据操控
tag @s remove compass_allow

scoreboard players add @s compass_select 1
execute as @a[gamemode=!spectator,tag=playing,distance=0.01..] if score @s player_id = @p compass_select run tag @p add compass_allow

execute if score @s compass_select > $ player_id run tag @s add compass_allow
execute if score @s compass_select > $ player_id run scoreboard players operation @s compass_select < @a[distance=0.01..,tag=playing] player_id

# 如果没有选择到在线的玩家则跳过这一玩家（循环）
execute as @s[tag=!compass_allow] run function bw:game/special_items/recovery_compass/mouse_check/left