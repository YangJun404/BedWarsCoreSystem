# $gaming为 0 时 每 2 Tick执行一次
# 手动改为了tick2 不想再创造 tick1.mcfunction 文件了QAQ --YaJn

# 爆炸鸡蛋-主程序
# execute as @e[type=egg] at @s run summon minecraft:fireball ~ ~ ~
# tag @e[type=fireball,limit=1,tag=!speed_set,tag=!speed_set_f] add speed_set
# execute as @e[type=fireball,limit=1,tag=speed_set,tag=!speed_set_f] at @s run data modify entity @s Motion set from entity @e[type=egg,limit=1,sort=nearest,distance=..1] Motion
# tag @e[type=fireball,tag=speed_set] add speed_set_f
# kill @e[type=egg]

# 召唤火球
execute at @e[type=egg] summon fireball run data modify entity @s Motion set from entity @e[type=egg,limit=1,sort=nearest,distance=..1] Motion
execute as @e[type=fireball] run data modify entity @s ExplosionPower set value 0
kill @e[type=egg]
kill @e[type=chicken]

# 火球寿命
execute as @e[type=fireball] run scoreboard players add @s fireball_life 1
execute as @e[type=fireball] if score @s fireball_life >= $life_max fireball_life run kill @s