# 每 20 Tick 执行一次
# as @a[tag=playing,tag=!afk,team=!debug] at @s 

# 复活
execute if score @s respawn_time matches 0.. run function bw:game/respawn/respawning

# 防止旁观者想不开
execute as @s[gamemode=spectator,tag=playing,x=-200,y=-200,z=-200,dx=400,dy=80,dz=400] run function bw:game/map/enter

# 检测购买项目
function bw:game/craft/check