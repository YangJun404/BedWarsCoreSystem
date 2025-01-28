# 玩家死亡事件

# 重置计分
scoreboard players reset @s death

# 获取完成击杀的玩家
scoreboard players operation @a temp = @s mino_source_real
execute as @a run scoreboard players operation @s temp -= @s player_id
tag @p[scores={temp=0}] add murder
tag @s add victim

# 判断击杀类型：0 自杀，1 同队误杀，2 敌方击杀
# scoreboard players set #death_type mem 2
# execute unless entity @a[tag=murder] run scoreboard players set #death_type mem 0
# execute if entity @a[tag=murder,team=red] as @s[team=red] run scoreboard players set #death_type mem 1
# execute if entity @a[tag=murder,team=blue] as @s[team=blue] run scoreboard players set #death_type mem 1
# execute if entity @a[tag=murder,team=green] as @s[team=green] run scoreboard players set #death_type mem 1
# execute if entity @a[tag=murder,team=yellow] as @s[team=yellow] run scoreboard players set #death_type mem 1

# 击杀玩家检测
execute as @a[scores={kill_player=1..}] at @s run function bw:global/event/player_kill

# 根据各个状态执行
execute if score $working gaming matches 1 run function bw:game/player_event/death