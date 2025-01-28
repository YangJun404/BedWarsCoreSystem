# 玩家死亡事件

# 数据控制
tag @s add death

# 重置出生点和位置
# function bw:game/map/enter

# 刷人头检测
execute store result score $game_playing player_count if entity @a[tag=playing,team=!spec]
execute as @a[tag=killer] run function bw:game/player_event/anti_brush_heads

# # 最终击杀！
# execute as @s[team=blue] if score $blue_bed team matches 2 run summon lightning_bolt
# execute as @s[team=red] if score $red_bed team matches 2 run summon lightning_bolt
# execute as @s[team=yellow] if score $yellow_bed team matches 2 run summon lightning_bolt
# execute as @s[team=green] if score $green_bed team matches 2 run summon lightning_bolt

# 在玩家死亡位置召唤标识实体
summon marker ~ ~ ~ {Tags:["death"]}

execute store result score #death_location_x temp run data get entity @s LastDeathLocation.pos[0]
execute store result score #death_location_y temp run data get entity @s LastDeathLocation.pos[1]
execute store result score #death_location_z temp run data get entity @s LastDeathLocation.pos[2]
 
execute store result entity @e[tag=death,limit=1,type=marker] Pos[0] double 1 run scoreboard players get #death_location_x temp
execute store result entity @e[tag=death,limit=1,type=marker] Pos[1] double 1 run scoreboard players get #death_location_y temp
execute store result entity @e[tag=death,limit=1,type=marker] Pos[2] double 1 run scoreboard players get #death_location_z temp

scoreboard players reset #death_location_x temp
scoreboard players reset #death_location_y temp
scoreboard players reset #death_location_z temp

# 载入地图
function bw:game/map/enter

# 调用复活模块
function bw:game/respawn/dead

# 清除非基础物品和非特殊物品
execute at @e[type=marker,tag=death,limit=1] as @e[type=item,distance=0..5,nbt=!{Item:{id:"minecraft:iron_ingot"}},nbt=!{Item:{id:"minecraft:gold_ingot"}},nbt=!{Item:{id:"minecraft:copper_ingot"}},nbt=!{Item:{id:"minecraft:diamond"}},nbt=!{Item:{tag:{Tags:["bypass_kill"]}}}] run kill @s
execute at @e[type=marker,tag=death,limit=1] as @e[type=item,distance=0..5] run data modify entity @s Motion set value [0,1,0,]

# 虚空死亡：传送基础物品至击杀玩家处
execute if score @s death_type matches 1 on attacker run tp @e[distance=0..5,type=item] @s 

# 更新统计信息
scoreboard players reset @s kill_combo
scoreboard players add @s round_death 1
scoreboard players remove @s round_score 2

# 清除背包
clear @s

# 刷新本局信息
function bw:game/update_round_info

# 判定游戏结束
function bw:game/team_update
execute unless score $disable_auto_ending maintenance matches 1 if score $team_number team matches ..1 run function bw:game/game_end

# 随机事件
function bw:game/mutation/trigger/player_death
execute if score $working mutation matches -1 run function bw:game/mutation/-1/dead/dead

# 收尾
tag @s remove death
kill @e[type=marker,tag=death]
scoreboard players reset @s death