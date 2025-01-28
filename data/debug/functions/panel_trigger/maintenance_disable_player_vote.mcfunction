# 玩家投票
scoreboard players add $disable_player_vote maintenance 1
execute if score $disable_player_vote maintenance matches 1 run scoreboard players set $system_killer maintenance 1
execute if score $disable_player_vote maintenance matches 2.. run scoreboard players set $disable_player_vote maintenance 0

function debug:panel

execute unless score $disable_player_vote maintenance matches 1 unless score $disable_auto_ending maintenance matches 1 unless score $disable_environment_check maintenance matches 1 run scoreboard players reset $system_killer maintenance