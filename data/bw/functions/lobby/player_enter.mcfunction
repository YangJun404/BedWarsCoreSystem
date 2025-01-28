# 要求玩家载入状态0：大厅

# 游戏数据
gamemode adventure @s
spawnpoint @s 0 50 0 0
attribute @s minecraft:generic.max_health base set 20
attribute @s generic.attack_speed base set 4

# 清理残留数据
scoreboard players reset @s rejoin_trigger
tag @s remove playing
tag @s remove lose_bed

# 清除背包
clear @s

# 队伍
team join lobby @s

# 药水效果
effect clear @s
effect give @s[scores={health=..19}] regeneration 3 255 true

# 传送
tp @s 0.50 50.00 0.50 0 0

# 如果正在投票则发送投票请求
execute if score $voting vote matches 2 unless score @s vote matches 1..2 run tellraw @a {"storage":"bw:lang","nbt":"lobby.vote.setup.notice","interpret": true}

# 如果正在拷贝地图则展示 Bossbar
execute if score $map_copying temp matches 1.. run bossbar set lobby players @a