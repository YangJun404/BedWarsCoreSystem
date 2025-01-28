#> bw:game/system_init/mutation_get_2nd
# 获得随机事件编号
# @input $last_mutation 上次出现的随机事件
# @output $working mutation 随机到的随机事件

scoreboard players set $working mutation 0
execute unless data storage bw:basic mutation.last run data modify storage bw:basic mutation.last set value 0
execute if score $working mutation matches 0 run function bw:game/system_init/mutation_get_2nd_loop with storage bw:basic mutation
execute if score $working mutation matches 0 run scoreboard players reset $working mutation