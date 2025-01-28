# 编号7：鸡尾酒

# 倒计时给予玩家追踪雪球
execute if score $mutation_7 temp matches 1.. run scoreboard players remove $mutation_7 temp 1

execute if score $mutation_7 temp matches 0 as @a[tag=playing,team=!spec] run function bw:game/mutation/7/tick20_player
execute unless score $mutation_7 temp matches 1.. run scoreboard players set $mutation_7 temp 15