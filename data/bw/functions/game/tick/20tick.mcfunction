# 每 20 Tick 执行一次

# 玩家时钟
execute as @a[tag=playing,tag=!afk,team=!debug] at @s run function bw:game/tick/20tick_player

# 时间事件
## 正计时
scoreboard players add $now timing 1

## 提醒事件发生
execute if score $now timing = $bed_break_notice timing run tellraw @a[tag=playing] {"storage":"bw:lang","nbt":"game.timing.bed_break","interpret": true}
execute if score $now timing = $border_shrink_notice timing if score $border gamerule matches 1 run tellraw @a[tag=playing] {"storage":"bw:lang","nbt":"game.timing.border_shrink","interpret": true}

## 时间触发
execute if score $now timing = $res_update_1 timing run function bw:game/timing_event/res_update
execute if score $now timing = $res_update_2 timing run function bw:game/timing_event/res_update
execute if score $now timing = $res_update_3 timing run function bw:game/timing_event/res_update

execute if score $now timing = $bed_break timing run function bw:game/timing_event/bed_break
execute if score $now timing = $border_shrink timing if score $border gamerule matches 1 run function bw:game/timing_event/border_shrink
execute if score $now timing = $game_end timing unless score $disable_auto_ending maintenance matches 1 run function bw:game/game_end

## 下一个事件
scoreboard players set $next_event timing 2147483647
execute if score $now timing <= $res_update_1 timing run scoreboard players operation $next_event timing < $res_update_1 timing
execute if score $now timing <= $res_update_2 timing run scoreboard players operation $next_event timing < $res_update_2 timing
execute if score $now timing <= $res_update_3 timing run scoreboard players operation $next_event timing < $res_update_3 timing
execute if score $now timing <= $bed_break timing run scoreboard players operation $next_event timing < $bed_break timing
execute if score $now timing <= $border_shrink timing run scoreboard players operation $next_event timing < $border_shrink timing
scoreboard players operation $next_event timing < $game_end timing

## 上一个事件
scoreboard players set $last_event timing 0
execute if score $now timing >= $res_update_1 timing run scoreboard players operation $last_event timing > $res_update_1 timing
execute if score $now timing >= $res_update_2 timing run scoreboard players operation $last_event timing > $res_update_2 timing
execute if score $now timing >= $res_update_3 timing run scoreboard players operation $last_event timing > $res_update_3 timing
execute if score $now timing >= $bed_break timing run scoreboard players operation $last_event timing > $bed_break timing
execute if score $now timing >= $border_shrink timing run scoreboard players operation $last_event timing > $border_shrink timing
execute if score $now timing >= $game_end timing run scoreboard players operation $last_event timing > $game_end timing

## 存储
execute store result storage bw:basic timing.next_event.number int 1 run scoreboard players get $next_event timing
execute if score $next_event timing = $res_update_1 timing run data modify storage bw:basic timing.next_event.name set value '{"storage":"bw:lang","nbt":"game.event.update_1","interpret": true}'
execute if score $next_event timing = $res_update_2 timing run data modify storage bw:basic timing.next_event.name set value '{"storage":"bw:lang","nbt":"game.event.update_2","interpret": true}'
execute if score $next_event timing = $res_update_3 timing run data modify storage bw:basic timing.next_event.name set value '{"storage":"bw:lang","nbt":"game.event.update_3","interpret": true}'
execute if score $next_event timing = $bed_break timing run data modify storage bw:basic timing.next_event.name set value '{"storage":"bw:lang","nbt":"game.event.bed_break","interpret": true}'
execute if score $next_event timing = $border_shrink timing run data modify storage bw:basic timing.next_event.name set value '{"storage":"bw:lang","nbt":"game.event.border_shrink","interpret": true}'
execute if score $next_event timing = $game_end timing run data modify storage bw:basic timing.next_event.name set value '{"storage":"bw:lang","nbt":"game.event.game_end","interpret": true}'

# BossBar 控制
## 最大值
scoreboard players operation $max bossbar = $next_event timing
scoreboard players operation $max bossbar -= $last_event timing
execute store result bossbar countdown:blue max run scoreboard players get $max bossbar
execute store result bossbar countdown:green max run scoreboard players get $max bossbar
execute store result bossbar countdown:red max run scoreboard players get $max bossbar
execute store result bossbar countdown:yellow max run scoreboard players get $max bossbar
execute store result bossbar countdown:spec max run scoreboard players get $max bossbar

## 当前值
scoreboard players operation $value bossbar = $next_event timing
scoreboard players operation $value bossbar -= $now timing
# scoreboard players operation $value bossbar += $last_event timing
execute store result bossbar countdown:blue value run scoreboard players get $value bossbar
execute store result bossbar countdown:green value run scoreboard players get $value bossbar
execute store result bossbar countdown:red value run scoreboard players get $value bossbar
execute store result bossbar countdown:yellow value run scoreboard players get $value bossbar
execute store result bossbar countdown:spec value run scoreboard players get $value bossbar

## 名称
execute if score $working mutation matches 1.. run bossbar set countdown:blue name {"storage":"bw:lang","nbt":"game.event.bossbar.mutation","interpret": true}
execute if score $working mutation matches 1.. run bossbar set countdown:green name {"storage":"bw:lang","nbt":"game.event.bossbar.mutation","interpret": true}
execute if score $working mutation matches 1.. run bossbar set countdown:red name {"storage":"bw:lang","nbt":"game.event.bossbar.mutation","interpret": true}
execute if score $working mutation matches 1.. run bossbar set countdown:yellow name {"storage":"bw:lang","nbt":"game.event.bossbar.mutation","interpret": true}
execute if score $working mutation matches 1.. run bossbar set countdown:spec name {"storage":"bw:lang","nbt":"game.event.bossbar.mutation","interpret": true}

execute unless score $working mutation matches 1.. run bossbar set countdown:blue name {"storage":"bw:lang","nbt":"game.event.bossbar.normal","interpret": true}
execute unless score $working mutation matches 1.. run bossbar set countdown:green name {"storage":"bw:lang","nbt":"game.event.bossbar.normal","interpret": true}
execute unless score $working mutation matches 1.. run bossbar set countdown:red name {"storage":"bw:lang","nbt":"game.event.bossbar.normal","interpret": true}
execute unless score $working mutation matches 1.. run bossbar set countdown:yellow name {"storage":"bw:lang","nbt":"game.event.bossbar.normal","interpret": true}
execute unless score $working mutation matches 1.. run bossbar set countdown:spec name {"storage":"bw:lang","nbt":"game.event.bossbar.normal","interpret": true}

# 调用资源点模块
execute as @e[type=armor_stand,tag=res] at @s run function bw:game/resource/tick20

# 边界管理
execute as @e[type=marker,tag=border] at @s run function bw:game/border/tick20

# 床受到意外破坏后重恢复
execute at @e[type=marker,tag=blue_bed] unless block ~ ~ ~ blue_bed if score $blue_bed team matches 1 run function bw:game/bed/team/blue_restore
execute at @e[type=marker,tag=green_bed] unless block ~ ~ ~ green_bed if score $green_bed team matches 1 run function bw:game/bed/team/green_restore
execute at @e[type=marker,tag=red_bed] unless block ~ ~ ~ red_bed if score $red_bed team matches 1 run function bw:game/bed/team/red_restore
execute at @e[type=marker,tag=yellow_bed] unless block ~ ~ ~ yellow_bed if score $yellow_bed team matches 1 run function bw:game/bed/team/yellow_restore

# 玩家在家中获得正面buff
# execute as @e[type=marker,tag=bed] at @s as @a[tag=playing,distance=1..12] run effect give @s regeneration 2 0 true

# 如果一个队伍没有人则触发破坏逻辑
function bw:game/team_update
summon marker 0 0 0 {CustomName:'{"text":"系统"}',Tags:["bed","temp"]}
execute if score $red_bed team matches 1 unless score $red_number team matches 1.. as @e[type=marker,tag=bed,tag=temp] run function bw:game/bed/team/red
execute if score $green_bed team matches 1 unless score $green_number team matches 1.. as @e[type=marker,tag=bed,tag=temp] run function bw:game/bed/team/green
execute if score $yellow_bed team matches 1 unless score $yellow_number team matches 1.. as @e[type=marker,tag=bed,tag=temp] run function bw:game/bed/team/yellow
execute if score $blue_bed team matches 1 unless score $blue_number team matches 1.. as @e[type=marker,tag=bed,tag=temp] run function bw:game/bed/team/blue
kill @e[type=marker,tag=temp,tag=bed]

# 调用随机事件（如果有的话）
execute if score $working mutation matches 1.. run function bw:game/mutation/trigger/tick20

# 调用特殊物品
function bw:game/special_items/tick20

# （地图接口）每秒尝试放置红石块
setblock 2 50 -32 minecraft:redstone_block

# 自我矫正
## 资源点缺少 res_cd：更新 cd 为 1
execute as @e[type=armor_stand,tag=res] unless score @s res_cd = @s res_cd run scoreboard players set @s res_cd 1