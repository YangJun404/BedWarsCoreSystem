# 每 2 Tick 执行一次

# 大厅异物保护
kill @e[x=-200,y=40,z=-200,dx=400,dy=4,dz=400,type=!player]

# 玩家时钟
execute as @a[tag=!player,tag=playing,team=!debug] at @s run function bw:game/tick/2tick_player

# 边境管理
execute as @e[type=marker,tag=border] at @s run function bw:game/border/tick2

# 调用商店
execute if score $shop_type gamerule matches 2 run function bw:game/villager_shop/tick2

# 额外事件
function bw:game/mutation/trigger/tick2

# 旁观者粒子效果
execute at @a[team=red,gamemode=spectator] run particle soul ~ ~1 ~ 0 0.25 0 0.01 1 force @a[team=red,gamemode=!spectator]
execute at @a[team=blue,gamemode=spectator] run particle soul ~ ~1 ~ 0 0.25 0 0.01 1 force @a[team=blue,gamemode=!spectator]
execute at @a[team=green,gamemode=spectator] run particle soul ~ ~1 ~ 0 0.25 0 0.01 1 force @a[team=green,gamemode=!spectator]
execute at @a[team=yellow,gamemode=spectator] run particle soul ~ ~1 ~ 0 0.25 0 0.01 1 force @a[team=yellow,gamemode=!spectator]