$execute store result score $working mutation run random value 1..$(max)

# 如果重复则重抽
$execute if score $working mutation matches $(last) run function bw:game/system_init/mutation_get_2nd_loop with storage bw:basic mutation