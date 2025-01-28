# 检测玩家是否仍然存在床

# 有床：输出为1
execute as @s[team=blue] if score $blue_bed team matches 1 run scoreboard players set @s temp 1
execute as @s[team=green] if score $green_bed team matches 1 run scoreboard players set @s temp 1
execute as @s[team=yellow] if score $yellow_bed team matches 1 run scoreboard players set @s temp 1
execute as @s[team=red] if score $red_bed team matches 1 run scoreboard players set @s temp 1

# 无床：输出为2
execute as @s[team=blue] if score $blue_bed team matches 2 run scoreboard players set @s temp 2
execute as @s[team=green] if score $green_bed team matches 2 run scoreboard players set @s temp 2
execute as @s[team=yellow] if score $yellow_bed team matches 2 run scoreboard players set @s temp 2
execute as @s[team=red] if score $red_bed team matches 2 run scoreboard players set @s temp 2