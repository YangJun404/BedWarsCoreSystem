# 编号4：追踪雪球

execute as @e[type=minecraft:fireball,nbt={Item:{tag:{Tags:["track_fireball"]}}}] at @s run function bw:game/mutation/4/fireball

# execute as @e[type=minecraft:fireball,nbt=!{Item:{tag:{}}}] at @s on origin run damage @e[type=minecraft:fireball,sort=nearest,limit=1] 1 minecraft:player_attack by @s