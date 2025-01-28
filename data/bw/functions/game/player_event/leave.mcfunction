# 玩家退出游戏事件

# 刷新本局信息
function bw:game/update_round_info

# 检测是否可以结束游戏
function bw:game/team_update
execute unless score $disable_auto_ending maintenance matches 1 unless score $team_number team matches 2.. run function bw:game/game_end

# 检测每个队伍是否有空位 如果有则向旁观玩家发送游玩邀请
# execute if score $min_number team < $team_max team run tellraw @a[team=spec,tag=!lose_bed] [{"text": ">> ","bold": true,"color": "aqua"},{"text": "检测到可以加入的队伍！","bold": false},{"text": "[加入游戏]","bold": false,"clickEvent": {"action": "run_command","value": "/trigger rejoin_trigger set 1"},"hoverEvent": {"action": "show_text","value": "点击此处重新分配队伍"}}] 
# scoreboard players enable @a[team=spec,tag=!lose_bed] rejoin_trigger

# （地图接口）玩家离开
setblock -2 50 -32 minecraft:redstone_block