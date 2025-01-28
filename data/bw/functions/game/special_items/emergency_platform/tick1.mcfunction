# 每 1 Tick 执行一次

execute as @e[type=experience_bottle,nbt=!{Item:{tag:{}}}] at @s run summon minecraft:marker ~ ~-4 ~ {Tags:["emergency_platform"]}
execute as @e[type=minecraft:marker,tag=emergency_platform,tag=!init] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 minecraft:slime_block replace air
scoreboard players set @e[type=minecraft:marker,tag=emergency_platform,tag=!init] temp 200
tag @e[type=minecraft:marker,tag=emergency_platform,tag=!init] add init

execute as @e[type=minecraft:marker,tag=emergency_platform,tag=init] run function bw:game/special_items/emergency_platform/entity
scoreboard players remove @e[type=minecraft:marker,tag=emergency_platform,tag=init] temp 1
execute as @e[type=minecraft:marker,tag=emergency_platform,tag=init,scores={temp=..0}] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace minecraft:slime_block
kill @e[type=minecraft:marker,tag=emergency_platform,tag=init,scores={temp=..0}]
kill @e[type=experience_bottle,nbt=!{Item:{tag:{}}}]