# 追溯指针-使用

# 更新实体位置并且朝向被绑定玩家
execute if score @s player_id = @e[type=minecraft:armor_stand,distance=..1,tag=recovery_compass,sort=nearest,limit=1] player_id run tp @e[type=minecraft:armor_stand,distance=..1,tag=recovery_compass,sort=nearest,limit=1] @s
execute as @a if score @s player_id = @p compass_select run tp @e[type=minecraft:armor_stand,distance=..1,tag=recovery_compass,sort=nearest,limit=1] ~ ~ ~ facing entity @s

# 如果没有盔甲架则召唤
execute unless entity @e[type=armor_stand,distance=..1,tag=recovery_compass] run function bw:game/special_items/recovery_compass/summon

# 显示被绑定玩家
execute unless score @s compass_select = @s player_id as @a if score @s player_id = @p compass_select run title @p actionbar ["< ",{"selector":"@s"}," >"]

# 发送粒子效果
execute at @e[type=minecraft:armor_stand,distance=..1,tag=recovery_compass,sort=nearest,limit=1] anchored eyes run particle minecraft:end_rod ^ ^ ^2.5 0 0 0 0 1 normal @s