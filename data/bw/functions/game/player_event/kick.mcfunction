# 踢出本局游戏

# 提示
tellraw @s ["",{"text":"\n ⚠  玩家恶意行为处罚通知","color":"aqua"},"\n",{"text": "     自动化系统检测到明显恶意行为并且采取了措施。","color": "gray"},"\n\n",{"text": "      ☀ BedWars 基本原则 >>\n"},{"text": "         我们旨在打造一个良好的 PVP 环境"},"\n\n",{"text": "      ☁ 行为处罚 >>\n"},{"text": "         移除本局参与资格，对于子服处罚你有上诉的权利。"},"\n"]
tellraw @a[distance=0.1..] ["",{"text": ">> ","color": "yellow","bold": true},{"selector": "@s","color": "yellow"}, {"text": "在游玩过程中违反 BedWars 基本原则，系统自动处以踢出处罚！","color": "yellow"}]

# 加入旁观者
function bw:game/player_event/spec_join