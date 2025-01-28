# 控制传入的玩家数据
#>input player

# 检查是否在线
$execute unless entity $(player) run tellraw @s "当前玩家不在线！"
$execute unless entity $(player) run return 0

# 发送标题
tellraw @s ""
$tellraw @s [{"text":" ❇  ","color":"aqua"},{"text":"玩家追踪面板 "},{"selector": "@a[name=$(player)]"}]
tellraw @s {"text":"     对一个玩家实行数据操作，队伍转移，账号惩罚...","color":"gray"}
tellraw @s ""

# 队伍转移
summon marker ~ ~ ~ {CustomName:'{"text": "[调试]","color": "light_purple"}',Tags:["debug1"]}
summon marker ~ ~ ~ {CustomName:'{"text": "[旁观]","color": "gray"}',Tags:["debug2"]}
summon marker ~ ~ ~ {CustomName:'{"text": "[红队]","color": "red"}',Tags:["debug3"]}
summon marker ~ ~ ~ {CustomName:'{"text": "[蓝队]","color": "blue"}',Tags:["debug4"]}
summon marker ~ ~ ~ {CustomName:'{"text": "[绿队]","color": "green"}',Tags:["debug5"]}
summon marker ~ ~ ~ {CustomName:'{"text": "[黄队]","color": "yellow"}',Tags:["debug6"]}

$tellraw @s ["     队伍  >>   ", \
    {"selector":"@e[type=marker,tag=debug1]","clickEvent":{"action":"run_command","value":"/function debug:panel_trigger/player_team_debug {'player':'$(player)'}"},"insertion": "/function debug:panel_trigger/player_team_spec_event {'player':'$(player)'}","hoverEvent": {"action": "show_text","value": "转移至 DEBUG 队伍。"}},"  ", \
    {"selector":"@e[type=marker,tag=debug2]","clickEvent": {"action": "run_command","value": "/function debug:panel_trigger/player_team_spec {'player':'$(player)'}"},"hoverEvent": {"action": "show_text","value": "转移至 SPEC 队伍（左SHIFT + 左键调用游戏内旁观事件）"}},"  ", \
    {"selector":"@e[type=marker,tag=debug3]","clickEvent":{"action":"run_command","value":"/function debug:panel_trigger/player_team_red {'player':'$(player)'}"},"hoverEvent": {"action": "show_text","value": "转移至 RED 队伍。"}},"  ", \
    {"selector":"@e[type=marker,tag=debug4]","clickEvent":{"action":"run_command","value":"/function debug:panel_trigger/player_team_blue {'player':'$(player)'}"},"hoverEvent": {"action": "show_text","value": "转移至 BLUE 队伍。"}},"  ", \
    {"selector":"@e[type=marker,tag=debug5]","clickEvent":{"action":"run_command","value":"/function debug:panel_trigger/player_team_green {'player':'$(player)'}"},"hoverEvent": {"action": "show_text","value": "转移至 GREEN 队伍。"}},"  ", \
    {"selector":"@e[type=marker,tag=debug6]","clickEvent":{"action":"run_command","value":"/function debug:panel_trigger/player_team_yellow {'player':'$(player)'}"},"hoverEvent": {"action": "show_text","value": "转移至 YELLOW 队伍。"}}]
kill @e[type=marker,tag=debug1]
kill @e[type=marker,tag=debug2]
kill @e[type=marker,tag=debug3]
kill @e[type=marker,tag=debug4]
kill @e[type=marker,tag=debug5]
kill @e[type=marker,tag=debug6]


# 服务器账号：禁言 踢出 封禁
summon marker ~ ~ ~ {CustomName:'{"text":"[禁言]","color":"white"}',Tags:["debug1"]}
summon marker ~ ~ ~ {CustomName:'{"text":"[踢出]","color":"white"}',Tags:["debug2"]}
summon marker ~ ~ ~ {CustomName:'{"text":"[封禁]","color":"white"}',Tags:["debug3"]}

$tellraw @s ["     惩罚  >>   ",{"selector":"@e[type=marker,tag=debug1]","clickEvent":{"action":"suggest_command","value":"/mute $(player) "},"hoverEvent": {"action": "show_text","value": "禁言这个玩家"}},"  ",{"selector":"@e[type=marker,tag=debug2]","clickEvent":{"action":"suggest_command","value":"/kick $(player) "},"hoverEvent": {"action": "show_text","value": "踢出这个玩家"}},"  ",{"selector":"@e[type=marker,tag=debug3]","clickEvent":{"action":"suggest_command","value":"/ban $(player) "},"hoverEvent": {"action": "show_text","value": "封禁这个玩家"}}]

kill @e[type=marker,tag=debug1]
kill @e[type=marker,tag=debug2]
kill @e[type=marker,tag=debug3]

tellraw @s ""