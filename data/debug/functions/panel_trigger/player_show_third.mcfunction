# 2nd

# 获取玩家 ID 并且记录
data modify storage debug:panel_trigger player_show.name set from storage debug:panel_trigger player_show.list[-1] 

# 传入下一层
function debug:panel_trigger/player_show_fourth with storage debug:panel_trigger player_show

# 删除用完的玩家 ID
data remove storage debug:panel_trigger player_show.list[-1]

# 循环
scoreboard players remove $player_transfer temp 1
execute if score $player_transfer temp matches 1.. run function debug:panel_trigger/player_show_third