# 要求玩家加入队伍（平衡分队）（不分到无床的队伍）

# 更新信息
function bw:game/team_update

# 获取人数差
scoreboard players operation $team_diff team = $max_number team
scoreboard players operation $team_diff team -= $min_number team

# 获取各队人数与最少人数的差
scoreboard players operation $red_diff team = $red_number team
scoreboard players operation $red_diff team -= $min_number team

scoreboard players operation $blue_diff team = $blue_number team
scoreboard players operation $blue_diff team -= $min_number team

scoreboard players operation $green_diff team = $green_number team
scoreboard players operation $green_diff team -= $min_number team

scoreboard players operation $yellow_diff team = $yellow_number team
scoreboard players operation $yellow_diff team -= $min_number team

# 判断可以加入的队伍
# 如果队伍人数不一致：进入人数最少且人数不为 0 的队伍（减少队伍之间人数差）
execute if score $red_bed team matches 1 if score $team_diff team matches 1.. if score $red_number team matches 1.. if score $red_diff team matches 0 if score $red_number team < $team_max team run tag @s add red
execute if score $blue_bed team matches 1 if score $team_diff team matches 1.. if score $blue_number team matches 1.. if score $blue_diff team matches 0 if score $blue_number team < $team_max team run tag @s add blue
execute if score $green_bed team matches 1 if score $team_diff team matches 1.. if score $green_number team matches 1.. if score $green_diff team matches 0 if score $green_number team < $team_max team run tag @s add green
execute if score $yellow_bed team matches 1 if score $team_diff team matches 1.. if score $yellow_number team matches 1.. if score $yellow_diff team matches 0 if score $yellow_number team < $team_max team run tag @s add yellow
# 如果队伍人数一致并且没有人数差：加入任意队伍（无法平衡玩家数量，开摆！）
execute if score $red_bed team matches 1 if score $team_diff team matches 0 if score $red_number team < $team_max team run tag @s add red
execute if score $blue_bed team matches 1 if score $team_diff team matches 0 if score $blue_number team < $team_max team run tag @s add blue
execute if score $green_bed team matches 1 if score $team_diff team matches 0 if score $green_number team < $team_max team run tag @s add green
execute if score $yellow_bed team matches 1 if score $team_diff team matches 0 if score #yellow yellow < $team_max team run tag @s add yellow

# 加入队伍
#  - 其中表现最差的队伍
# 获得最小击杀
scoreboard players set $min_number team 1000
execute if entity @s[tag=red] run scoreboard players operation $min_number team < $red_kill team
execute if entity @s[tag=blue] run scoreboard players operation $min_number team < $blue_kill team
execute if entity @s[tag=green] run scoreboard players operation $min_number team < $green_kill team
execute if entity @s[tag=yellow] run scoreboard players operation $min_number team < $yellow_kill team
# 加入目前最差的队伍
execute if score $red_kill team = $min_number team if entity @s[tag=red] run team join red @s
execute if score $blue_kill team = $min_number team if entity @s[tag=blue] run team join blue @s
execute if score $green_kill team = $min_number team if entity @s[tag=green] run team join green @s
execute if score $yellow_kill team = $min_number team if entity @s[tag=yellow] run team join yellow @s
#  - 无队伍可用
team join spec @s[team=]

# 清理遗留
tag @s remove blue
tag @s remove red
tag @s remove yellow
tag @s remove green
tag @s remove spec

# 发送提示
tellraw @s[team=red] {"storage":"bw:lang","nbt":"game.team_join.red","interpret": true}
tellraw @s[team=blue] {"storage":"bw:lang","nbt":"game.team_join.blue","interpret": true}
tellraw @s[team=yellow] {"storage":"bw:lang","nbt":"game.team_join.yellow","interpret": true}
tellraw @s[team=green] {"storage":"bw:lang","nbt":"game.team_join.green","interpret": true}
tellraw @s[team=spec] {"storage":"bw:lang","nbt":"game.team_join.spec","interpret": true}