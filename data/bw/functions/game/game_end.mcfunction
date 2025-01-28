#> bw:game/game_end
# 游戏结束文件

# （地图接口）游戏结束
setblock 4 50 -32 minecraft:redstone_block

# HUB 控制
scoreboard objectives setdisplay below_name
scoreboard objectives setdisplay list
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.green
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.yellow
scoreboard objectives setdisplay sidebar.team.gray
bossbar set countdown:blue players
bossbar set countdown:green players
bossbar set countdown:yellow players
bossbar set countdown:red players
bossbar set countdown:spec players

# 获得胜利的玩家
tag @a remove win

function bw:game/team_update
execute if score $blue_number team matches 1 run tag @a[team=blue] add win
execute if score $green_number team matches 1 run tag @a[team=green] add win
execute if score $yellow_number team matches 1 run tag @a[team=yellow] add win
execute if score $red_number team matches 1 run tag @a[team=red] add win

execute unless entity @a[tag=win] run scoreboard players set $no_winner temp 1

# 计算排名
tag @a remove total_rank1
tag @a remove total_rank2
tag @a remove total_rank3
tag @a remove total_rankl

## 1
function bw:game/gane_end_get_max_score
execute as @a if score @s round_score = $score_max temp run tag @s add total_rank1
tag @a[tag=total_rank1] add max_uncounted
## 2
function bw:game/gane_end_get_max_score
execute as @a[tag=!max_uncounted] if score @s round_score = $score_max temp run tag @s add total_rank2
tag @a[tag=total_rank2] add max_uncounted
## 3
function bw:game/gane_end_get_max_score
execute as @a[tag=!max_uncounted] if score @s round_score = $score_max temp run tag @s add total_rank3
tag @a[tag=max_uncounted] remove max_uncounted
## 最低分
scoreboard players set $score_min temp 2147483647
scoreboard players operation $score_min temp < @a[tag=playing] round_score
execute as @a if score @s round_score = $score_min temp run tag @s add total_rankl
## 没有名次
tag @a[tag=playing,tag=!total_rank1,tag=!total_rank2,tag=!total_rank3] add total_rankl

# ## 给予奖励
# scoreboard players add @a[tag=total_rank1] round_score 15
# scoreboard players add @a[tag=total_rank2] round_score 10
# scoreboard players add @a[tag=total_rank3] round_score 5

# 生涯统计 
execute as @a[tag=playing] run scoreboard players operation @s stat_score += @s round_score
execute as @a[tag=playing] run scoreboard players operation @s stat_death += @s round_death
execute as @a[tag=playing] run scoreboard players operation @s stat_kill += @s round_kill
execute as @a[tag=playing] run scoreboard players operation @s stat_bed_break += @s round_bed_break

# 本局 K/D 计算
execute as @a run scoreboard players operation @s temp = @s round_kill
scoreboard players operation @a temp *= $1000 const
execute as @a run scoreboard players operation @s temp /= @s round_death

# 本局平均表现分
execute as @a[tag=playing] run scoreboard players operation $average_score temp += @s round_score
execute store result score $playing_count temp if entity @a[tag=playing]
scoreboard players operation $average_score temp /= $playing_count temp

# 显示排名
tellraw @a {"storage":"bw:lang","nbt":"game.end.settlement.title","interpret": true}
tellraw @a {"storage":"bw:lang","nbt":"game.end.settlement.rank1","interpret": true}
execute if entity @a[tag=total_rank2] run tellraw @a {"storage":"bw:lang","nbt":"game.end.settlement.rank2","interpret": true}
execute if entity @a[tag=total_rank3] run tellraw @a {"storage":"bw:lang","nbt":"game.end.settlement.rank3","interpret": true}
tellraw @a ""

# 个人结算内容
execute as @a[tag=playing,scores={round_kill=0}] run tellraw @s {"storage":"bw:lang","nbt":"game.end.settlement.kill.none","interpret": true}
execute as @a[tag=playing,scores={round_kill=1..}] run tellraw @s {"storage":"bw:lang","nbt":"game.end.settlement.kill.count","interpret": true}
# execute as @a[tag=playing,scores={round_death=0}] run tellraw @s [" ",{"text": "好家伙，你小子§60死§f！"}]
execute as @a[tag=playing] run tellraw @s {"storage":"bw:lang","nbt":"game.end.settlement.death","interpret": true}
execute as @a[tag=playing] run tellraw @s {"storage":"bw:lang","nbt":"game.end.settlement.KD","interpret": true}
execute unless score $no_winner temp matches 1 run tellraw @a[tag=playing,tag=win] {"storage":"bw:lang","nbt":"game.end.settlement.win.own","interpret": true}
execute unless score $no_winner temp matches 1 run tellraw @a[tag=playing,tag=!win] {"storage":"bw:lang","nbt":"game.end.settlement.win.lose","interpret": true}
execute if score $no_winner temp matches 1 run tellraw @a[tag=playing] {"storage":"bw:lang","nbt":"game.end.settlement.win.nope","interpret": true}
tellraw @a[tag=playing] ""
# execute as @a if score @s round_kill < @s round_death run tellraw @s [" 虽然你在本局的[d击杀数]次击杀中表现稍显低迷，\n 但你所展现的不畏困难的精神和永不放弃的信念，是真正的战斗精神的象征！\n\n 回顾战局，也许在策略和团队协作上还有提升的空间。\n 继续与队友合作，保护床，为下一场战斗积蓄力量！"]

# 奖励结束 
tellraw @a[tag=playing] ""

scoreboard players reset @a temp
scoreboard players reset $playing_count
scoreboard players reset $average_score

# 清除游戏区域和残留物品
fill -149 641 -149 149 45 149 air
kill @e[type=item,tag=!bypass_kill]

function bw:global/clear_entity

# 重置玩家 id
scoreboard players reset * player_id
scoreboard players set $ player_id 0

# 随机事件
execute if score $working mutation = $working mutation run function bw:game/mutation/trigger/game_end
execute store result storage bw:basic mutation.last int 1 run scoreboard players get $working mutation

# 清理残留数据
execute as @a run attribute @s generic.attack_speed base set 4

tag @a remove lose_bed
tag @a remove playing

scoreboard players reset @a respawn_time
scoreboard players reset @a temp
scoreboard players reset * respawn_time
scoreboard players reset @a round_score
scoreboard players reset @a round_death
scoreboard players reset @a round_kill
scoreboard players reset @a round_combo

scoreboard players reset $size border 
scoreboard players reset $countdown gaming

scoreboard players reset $working mutation
scoreboard players reset $bed_break_check gamerule
scoreboard players reset $active player_count
scoreboard players reset $game_playing player_count
scoreboard players reset $now timing
scoreboard players reset $shrinking border

scoreboard players reset $red_kill team
scoreboard players reset $blue_kill team
scoreboard players reset $green_kill team
scoreboard players reset $yellow_kill team
scoreboard players reset $red_bed team
scoreboard players reset $blue_bed team
scoreboard players reset $green_bed team
scoreboard players reset $yellow_bed team

# 发送地图恢复请求
execute store result storage bw:map clone.map_id int 1 run scoreboard players get $using map
function bw:global/map/cron/request with storage bw:map clone

# 载入大厅状态
function bw:lobby/setup
execute as @a[tag=!afk,team=!debug] at @s run function lib:sounds/theend
forceload add 0 0
