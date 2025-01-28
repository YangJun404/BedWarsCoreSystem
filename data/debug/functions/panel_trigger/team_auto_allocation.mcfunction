# 自动分配
scoreboard players add $team_auto_allocation debug 1
execute if score $team_auto_allocation debug matches 2.. run scoreboard players set $team_auto_allocation debug 0

function debug:panel