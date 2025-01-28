# 编号4：追踪雪球

# 倒计时给予玩家追踪雪球
execute if score $mutation_4 temp matches 1.. run scoreboard players remove $mutation_4 temp 1

execute if score $mutation_4 temp matches 0 run give @a[tag=playing,team=!spec] magma_cream{Tags:["track_fireball"],display:{Name:'{"text":"真 - 追踪火球"}'}}
execute unless score $mutation_4 temp matches 1.. run scoreboard players set $mutation_4 temp 60