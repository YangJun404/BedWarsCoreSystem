# 开始 / 结束游戏
scoreboard players operation $gaming temp = $working gaming

execute unless score $gaming temp matches 1 run function debug:start_game
execute if score $gaming temp matches 1 run function debug:stop_game

function debug:panel
scoreboard players reset $gaming temp