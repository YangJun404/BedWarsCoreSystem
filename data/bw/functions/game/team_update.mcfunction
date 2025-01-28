# 队伍信息更新

# 获得每个队伍人数
execute store result score $red_number team if entity @a[team=red]
execute store result score $blue_number team if entity @a[team=blue]
execute store result score $green_number team if entity @a[team=green]
execute store result score $yellow_number team if entity @a[team=yellow]

# 获得队伍数
scoreboard players set $team_number team 0
execute if score $red_number team matches 1.. run scoreboard players add $team_number team 1
execute if score $blue_number team matches 1.. run scoreboard players add $team_number team 1
execute if score $green_number team matches 1.. run scoreboard players add $team_number team 1
execute if score $yellow_number team matches 1.. run scoreboard players add $team_number team 1

# 获取最大人数
scoreboard players set $max_number team -1000
scoreboard players operation $max_number team > $red_number team
scoreboard players operation $max_number team > $blue_number team
scoreboard players operation $max_number team > $green_number team
scoreboard players operation $max_number team > $yellow_number team

# 获取最小人数
scoreboard players set $min_number team 1000
execute if score $red_number team matches 1.. run scoreboard players operation $min_number team < $red_number team
execute if score $blue_number team matches 1.. run scoreboard players operation $min_number team < $blue_number team
execute if score $green_number team matches 1.. run scoreboard players operation $min_number team < $green_number team
execute if score $yellow_number team matches 1.. run scoreboard players operation $min_number team < $yellow_number team
execute if score $team_number team matches 0 run scoreboard players set $min_number team 0

# 获取人数差
scoreboard players operation $team_diff team = $max_number team
scoreboard players operation $team_diff team -= $min_number team

# # 同步到存储
# execute store result storage bw:team number.red int 1 run scoreboard players get $red_number team
# execute store result storage bw:team number.blue int 1 run scoreboard players get $blue_number team
# execute store result storage bw:team number.green int 1 run scoreboard players get $green_number team
# execute store result storage bw:team number.yellow int 1 run scoreboard players get $yellow_number team

# execute store result storage bw:team max int 1 run scoreboard players get $max_number team
# execute store result storage bw:team min int 1 run scoreboard players get $min_number team
# execute store result storage bw:team team_diff int 1 run scoreboard players get $team_diff team