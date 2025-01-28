#> bw:game/start
# 游戏载入和开始

# 以中心点的位置执行游戏开始文件
execute unless entity @s[type=marker,tag=playing_center] as @e[type=marker,tag=playing_center] if score @s map = $using map at @s run return run function bw:game/start

# 游戏规则
## ! 需要重置
## 希望一个管理员可以使用 /gamerule 来动态更改游戏规则
## 当游戏探测到游戏规则更改时，游戏会向全体管理员请求将当前更改的游戏规则设定为永久规则
## 这里涉及两个游戏规则属性：
##  1) 暂时性规则：可能随时被游戏
##  2）
gamerule fallDamage true
gamerule naturalRegeneration true
execute if score $using map matches 3 run gamerule doFireTick false
execute unless score $using map matches 3 run gamerule doFireTick true
execute if score $daylight_cycle gamerule matches 1 run gamerule doDaylightCycle true
execute unless score $daylight_cycle gamerule matches 1 run gamerule doDaylightCycle false

# 时间设定
time set day

# 最大人数限制（预选玩家拥有player标签）
scoreboard players set $playing_count temp 0
execute store result score $playing_count temp if entity @a[tag=player]
execute if score $playing_count temp > $player_max team run tellraw @a[tag=player] {"storage":"bw:lang","nbt":"game.player_count_limit.notice","interpret": true}

tag @a remove select_player
execute unless score $playing_count temp > $player_max team store result score $select_player temp if entity @a[tag=player]
execute if score $playing_count temp > $player_max team store result score $select_player temp run scoreboard players get $player_max team
function bw:game/system_init/select_player
scoreboard players reset $select_player temp

tellraw @a[tag=!select_player,tag=player] {"storage":"bw:lang","nbt":"game.player_count_limit.drop","interpret": true}
execute as @a[tag=!select_player,tag=player] run function bw:game/player_event/spec_join
tag @a[tag=!select_player,tag=player] remove player

tag @a remove select_player

# 将大厅玩家转换为旁观者
execute as @a[team=lobby,tag=!player] run function bw:game/player_event/spec_join

# 清理残留
## 系统数据
scoreboard players reset @a rejoin_trigger
tag @a remove lose_bed
## 末影箱和物品
clear @a[tag=player]

item replace entity @a[tag=player] enderchest.0 with air
item replace entity @a[tag=player] enderchest.1 with air
item replace entity @a[tag=player] enderchest.2 with air
item replace entity @a[tag=player] enderchest.3 with air
item replace entity @a[tag=player] enderchest.4 with air
item replace entity @a[tag=player] enderchest.5 with air
item replace entity @a[tag=player] enderchest.6 with air
item replace entity @a[tag=player] enderchest.7 with air
item replace entity @a[tag=player] enderchest.8 with air
item replace entity @a[tag=player] enderchest.9 with air
item replace entity @a[tag=player] enderchest.10 with air
item replace entity @a[tag=player] enderchest.11 with air
item replace entity @a[tag=player] enderchest.12 with air
item replace entity @a[tag=player] enderchest.13 with air
item replace entity @a[tag=player] enderchest.14 with air
item replace entity @a[tag=player] enderchest.15 with air
item replace entity @a[tag=player] enderchest.16 with air
item replace entity @a[tag=player] enderchest.17 with air
item replace entity @a[tag=player] enderchest.18 with air
item replace entity @a[tag=player] enderchest.19 with air
item replace entity @a[tag=player] enderchest.20 with air
item replace entity @a[tag=player] enderchest.21 with air
item replace entity @a[tag=player] enderchest.22 with air
item replace entity @a[tag=player] enderchest.23 with air
item replace entity @a[tag=player] enderchest.24 with air
item replace entity @a[tag=player] enderchest.25 with air
item replace entity @a[tag=player] enderchest.26 with air

# 重置玩家货币信息
scoreboard players set @a own_copper 0
scoreboard players set @a own_iron 0
scoreboard players set @a own_gold 0
scoreboard players set @a own_diamond 0

# 随机分队
team leave @a[tag=player]
function bw:game/system_init/team_join
team join spec @a[tag=player,team=]

tellraw @a[team=red] {"storage":"bw:lang","nbt":"game.team_join.red","interpret": true}
tellraw @a[team=blue] {"storage":"bw:lang","nbt":"game.team_join.blue","interpret": true}
tellraw @a[team=yellow] {"storage":"bw:lang","nbt":"game.team_join.yellow","interpret": true}
tellraw @a[team=green] {"storage":"bw:lang","nbt":"game.team_join.green","interpret": true}
tellraw @a[team=spec] {"storage":"bw:lang","nbt":"game.team_join.spec","interpret": true}

tag @a[tag=player] remove player

# 玩家数据控制
tag @a[team=red] add playing
tag @a[team=yellow] add playing
tag @a[team=blue] add playing
tag @a[team=green] add playing
tag @a[team=spec] add playing

# 随机事件

###
###     活动玩法
###

scoreboard players set $working mutation 0

###
###     活动玩法
###

## 抽取（大部分时间没有随机事件）（如果有了则跳过）
execute unless score $working mutation = $working mutation run function bw:game/system_init/mutation_get

## 同步
execute if score $working mutation matches -1 run data modify storage bw:basic mutation.name set value '活动玩法'
execute if score $working mutation matches -1 run data modify storage bw:basic mutation.disc set value '"BedWars 特殊节日，特殊玩法"'

execute if score $working mutation matches 1 run data modify storage bw:basic mutation.name set value {"storage":"bw:lang","nbt":"game.mutation.1.name","interpret": true}
execute if score $working mutation matches 1 run data modify storage bw:basic mutation.disc set value {"storage":"bw:lang","nbt":"game.mutation.1.disc","interpret": true}

execute if score $working mutation matches 2 run data modify storage bw:basic mutation.name set value {"storage":"bw:lang","nbt":"game.mutation.2.name","interpret": true}
execute if score $working mutation matches 2 run data modify storage bw:basic mutation.disc set value {"storage":"bw:lang","nbt":"game.mutation.2.disc","interpret": true}

execute if score $working mutation matches 3 run data modify storage bw:basic mutation.name set value {"storage":"bw:lang","nbt":"game.mutation.3.name","interpret": true}
execute if score $working mutation matches 3 run data modify storage bw:basic mutation.disc set value {"storage":"bw:lang","nbt":"game.mutation.3.disc","interpret": true}

execute if score $working mutation matches 4 run data modify storage bw:basic mutation.name set value {"storage":"bw:lang","nbt":"game.mutation.4.name","interpret": true}
execute if score $working mutation matches 4 run data modify storage bw:basic mutation.disc set value {"storage":"bw:lang","nbt":"game.mutation.4.disc","interpret": true}

execute if score $working mutation matches 5 run data modify storage bw:basic mutation.name set value {"storage":"bw:lang","nbt":"game.mutation.5.name","interpret": true}
execute if score $working mutation matches 5 run data modify storage bw:basic mutation.disc set value {"storage":"bw:lang","nbt":"game.mutation.5.disc","interpret": true}

execute if score $working mutation matches 6 run data modify storage bw:basic mutation.name set value {"storage":"bw:lang","nbt":"game.mutation.6.name","interpret": true}
execute if score $working mutation matches 6 run data modify storage bw:basic mutation.disc set value {"storage":"bw:lang","nbt":"game.mutation.6.disc","interpret": true}

execute if score $working mutation matches 7 run data modify storage bw:basic mutation.name set value {"storage":"bw:lang","nbt":"game.mutation.7.name","interpret": true}
execute if score $working mutation matches 7 run data modify storage bw:basic mutation.disc set value {"storage":"bw:lang","nbt":"game.mutation.7.disc","interpret": true}

# 边境管理
summon marker ~ 0 ~ {Tags: ["border"]}

# 加载强加载区块
function bw:game/system_init/forceload with storage bw:map using.border

# 清除微观模型
fill 11 44 49 -11 67 71 air
kill @e[type=item,tag=!bypass_kill]

# 初始化床存在数据（有玩家的前提下）
function bw:game/team_update
execute if score $blue_number team matches 1.. run scoreboard players set $blue_bed team 1
execute unless score $blue_number team matches 1.. run scoreboard players set $blue_bed team 2
execute if score $red_number team matches 1.. run scoreboard players set $red_bed team 1
execute unless score $red_number team matches 1.. run scoreboard players set $red_bed team 2
execute if score $green_number team matches 1.. run scoreboard players set $green_bed team 1
execute unless score $green_number team matches 1.. run scoreboard players set $green_bed team 2
execute if score $yellow_number team matches 1.. run scoreboard players set $yellow_bed team 1
execute unless score $yellow_number team matches 1.. run scoreboard players set $yellow_bed team 2

# 拆家检测初始化（玩家无法破坏自家的床）
scoreboard players set $bed_break_check gamerule 1

# 地图载入
function bw:game/map/init/trigger

# 同步游戏倒计时
scoreboard players operation $countdown_max gaming = $countdown_gaming gamerule
scoreboard players operation $countdown gaming = $countdown_max gaming

# 资源点初始化
## 同步资源点设定
scoreboard players operation $copper res_cd = $res_copper gamerule
scoreboard players operation $iron res_cd = $res_iron gamerule
scoreboard players operation $diamond res_cd = $res_diamond gamerule

## 初始化产出时间
execute as @e[type=armor_stand,tag=res_copper] store result score @s res_cd run scoreboard players get $copper res_cd
execute as @e[type=armor_stand,tag=res_iron] store result score @s res_cd run scoreboard players get $iron res_cd
execute as @e[type=armor_stand,tag=res_diamond] store result score @s res_cd run scoreboard players get $diamond res_cd

## 提前生成产出内容
execute as @e[tag=res] at @s run function bw:game/resource/summon/item

# 选中商店
# execute as @e[type=marker,tag=shop] if score @s shop = $shop_using shop run tag @s add shop_selected

# Bossbar 更新
bossbar set countdown:blue players
bossbar set countdown:green players
bossbar set countdown:yellow players
bossbar set countdown:red players
bossbar set countdown:spec players

# 时间事件初始化（提前提醒数值）
scoreboard players operation $border_shrink_notice timing = $border_shrink timing
scoreboard players operation $border_shrink_notice timing -= $notice timing

scoreboard players operation $bed_break_notice timing = $bed_break timing
scoreboard players operation $bed_break_notice timing -= $notice timing

scoreboard players operation $game_end_notice timing = $game_end timing
scoreboard players operation $game_end_notice timing -= $notice timing

# HUB 控制
scoreboard objectives setdisplay below_name health
scoreboard objectives setdisplay list health
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay sidebar.team.blue round_info
scoreboard objectives setdisplay sidebar.team.green round_info
scoreboard objectives setdisplay sidebar.team.red round_info
scoreboard objectives setdisplay sidebar.team.yellow round_info
scoreboard objectives setdisplay sidebar.team.gray round_info

# 检测环境 
scoreboard players set $env_check temp 1
execute unless score $disable_environment_check maintenance matches 1 store result score $env_check temp run function bw:game/system_init/env_check
execute if score $env_check temp matches 2.. run function bw:game/system_init/env_check_fail
execute if score $env_check temp matches 2.. run return 1
execute if score $env_check temp matches 1.. run scoreboard players reset $env_check temp
    
# （地图接口）游戏开始
setblock 6 50 -32 minecraft:redstone_block

# 测试局设定
# execute if score $testing gaming matches 1 run scoreboard players set $countdown gaming -1

# 初始化随机事件（5秒后）
schedule function bw:game/mutation/trigger/game_start 5s replace

# 初始化完成，系统载入：游戏中！
scoreboard players set $working gaming 1

# 发送提示
tellraw @a {"storage":"bw:lang","nbt":"game.start","interpret": true}

# 玩家载入
execute as @a[tag=playing] run function bw:game/player_event/enter