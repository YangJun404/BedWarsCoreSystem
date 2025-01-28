# 重置投票
bossbar set lobby players
schedule clear bw:lobby/vote/start
scoreboard players reset $voting vote
scoreboard players reset $countdown vote
scoreboard players reset $countdown_max vote
scoreboard players reset $player_count vote
scoreboard players reset $voted_player vote
scoreboard players reset @a vote
function bw:lobby/reset_display

# 清除投票平台
fill 3 49 38 1 49 40 air
fill -1 49 38 -3 49 40 air

kill @e[tag=lobby_display_start_vote_agree]
kill @e[tag=lobby_display_start_vote_disagree]