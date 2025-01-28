# 玩家死亡事件

# 设定为旁观者模式
gamemode spectator @s 

# 检测玩家
function bw:game/bed/player_bed_check

execute if score @s temp matches 1 run function bw:game/respawn/start_resurrect
execute unless score @s temp matches 1 run function bw:game/respawn/out

tag @a remove killer
scoreboard players reset @s temp