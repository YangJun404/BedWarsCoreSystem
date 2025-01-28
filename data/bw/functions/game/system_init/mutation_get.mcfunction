#> bw:game/system_init/mutation_get
# 决定本局是否会有随机事件

execute store result score $mutation temp run random value 0..50
execute if score $mutation temp matches 1 run function bw:game/system_init/mutation_get_2nd
scoreboard players reset $mutation temp