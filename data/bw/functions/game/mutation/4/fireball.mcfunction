# 追踪雪球
execute on origin run scoreboard players operation @e[type=minecraft:fireball,sort=nearest,limit=1] compass_select = @s compass_select
execute as @a if score @s player_id = @e[type=minecraft:fireball,sort=nearest,limit=1] compass_select run tp @e[type=minecraft:fireball,sort=nearest,limit=1] ~ ~ ~ facing entity @s
# execute as @e[type=minecraft:fireball] if score @p player_id = @s compass_select run tp @s ~ ~ ~ facing ~ ~1 ~
execute if score @s compass_select = @s compass_select run damage @s 1 minecraft:player_attack by @s

