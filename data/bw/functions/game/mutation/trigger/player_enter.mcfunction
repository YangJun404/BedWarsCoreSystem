# 玩家载入事件

execute if score $working mutation matches -1 run function bw:game/mutation/-1/player_enter

execute if score $working mutation matches 4 run give @s[tag=playing,team=!spec] magma_cream{Tags:["track_fireball"],display:{Name:'{"text":"追踪雪球"}'}}

execute if score $working mutation matches 5 run attribute @s minecraft:generic.attack_speed base set 100