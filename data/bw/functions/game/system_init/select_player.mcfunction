# 随机选择玩家
tag @a[tag=!select_player,tag=player,limit=1,sort=random] add select_player
scoreboard players remove $select_player temp 1

# loop
execute if score $select_player temp matches 1.. run function bw:game/system_init/select_player