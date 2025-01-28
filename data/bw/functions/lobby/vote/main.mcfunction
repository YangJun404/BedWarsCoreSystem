# 投票检测主模块

# 倒计时
scoreboard players remove $countdown vote 1

# 投票平台
execute positioned 2.5 50 39.5 as @a[team=lobby,distance=0..2.2] unless score @s vote matches 1 run title @s actionbar {"storage":"bw:lang","nbt":"lobby.vote.main.platform.agree","interpret": true}
execute positioned 2.5 50 39.5 as @a[team=lobby,distance=0..2.2] unless score @s vote matches 1 run scoreboard players set @s vote 1

execute positioned -1.5 50 39.5 as @a[team=lobby,distance=0..2.2] unless score @s vote matches 2 run title @s actionbar {"storage":"bw:lang","nbt":"lobby.vote.main.platform.disagree","interpret": true}
execute positioned -1.5 50 39.5 as @a[team=lobby,distance=0..2.2] unless score @s vote matches 2 run scoreboard players set @s vote 2

# 同步
execute store result bossbar lobby value run scoreboard players get $countdown vote 

# 显示投票状态
## 统计
scoreboard players set #agree vote 0
scoreboard players set #opposition vote 0
execute as @a[scores={vote=1}] run scoreboard players add #agree vote 1
execute as @a[scores={vote=2}] run scoreboard players add #opposition vote 1
## 更新文本展示实体
data modify entity @e[limit=1,type=text_display,tag=lobby_display_start_vote] text set value {"storage":"bw:lang","nbt":"lobby.vote.main.display","interpret": true}

# 投票结束
## 倒计时
execute if score $countdown vote matches 0 run function bw:lobby/vote/end
## 全部活跃玩家都投了票
execute store result score $player_count vote if entity @a[team=!debug,scores={afk_time=..179}]
execute store result score $voted_player vote if entity @a[team=!debug,scores={vote=1..2}]
execute unless score $voted_player vote matches 0 if score $voted_player vote >= $player_count vote run function bw:lobby/vote/end
