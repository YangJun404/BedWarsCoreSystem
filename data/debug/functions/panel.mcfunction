# 管理员调试面板

# 系统：重置游戏 开始游戏 测试游戏 调试面板 维护模式 结束游戏
# 队伍：自动分配 平均分配 复活床/摧毁床 高亮出生点
# 规则：资源点冷却时间 瞬间复活/等待时间 重复击杀惩罚 虚空伤害 游戏倒计时 边界缩圈 昼夜交替
# 追踪：伤害追踪 死亡信息 射线路径 
# 
# 地图编辑/(SHIFT)锁定：[地图名称]


# 标题
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n ❇  ","color":"aqua"},{"text":"起床战争控制面板"}]

# 副标题
## 地图导入程序载入中
execute if score #init mi_mem matches 1 run summon marker ~ ~ ~ {CustomName:'[{"text":"     [!] 检测到地图导入程序运行中，部分操作可能会导致地图数据损坏...","color":"yellow"}]',Tags:["debug"]}

## 标题显示
execute if entity @e[type=marker,tag=debug] run tellraw @s {"selector":"@e[type=marker,tag=debug]","separator":{"text":"\n"}}
execute unless entity @e[type=marker,tag=debug] run tellraw @s {"text":"     妈耶，难不成这就是传说中神的力量？","color":"gray"}
tellraw @s ""

## 收尾
kill @e[type=marker,tag=debug]

# 第一板块
## 系统
summon marker ~ ~ ~ {CustomName:'{"text":"[重置游戏]","color":"white"}',Tags:["debug1"]}
execute unless score $working gaming matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[开始游戏]","color":"white"}',Tags:["debug2"]}
execute if score $working gaming matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[结束游戏]","color":"white"}',Tags:["debug2"]}
execute if score $system_f3 debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[F3面板]","color":"gray"}',Tags:["debug3"]}
execute if score $system_f3 debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[F3面板]","color":"white"}',Tags:["debug3"]}
tellraw @s ["     系统  >>   ", \
    {"selector":"@e[type=marker,tag=debug1]","clickEvent":{"action":"run_command","value":"/function debug:init"},"hoverEvent": {"action": "show_text","value": "将所有系统及模块进行初始化"}},"  ", \
    {"selector":"@e[type=marker,tag=debug2]","clickEvent":{"action":"run_command","value":"/function debug:panel_trigger/system_game_state"},"hoverEvent": {"action": "show_text","value": "将所有非 debug 玩家强制参与游戏或者强制结束游戏"}},"  ", \
    {"selector":"@e[type=marker,tag=debug3]","clickEvent": {"action": "run_command","value": "/function debug:panel_trigger/system_f3"},"hoverEvent": {"action": "show_text","value": "启用/禁用 原版调试界面"}}]
kill @e[type=marker,tag=debug1]
kill @e[type=marker,tag=debug2]
kill @e[type=marker,tag=debug3]

## 队伍：平均分配 复活床/摧毁床 高亮出生点
execute if score $team_auto_allocation debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[自动分配]","color":"white"}',Tags:["debug1"]}
execute if score $team_auto_allocation debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[自动分配]","color":"gray"}',Tags:["debug1"]}
tellraw @s ["     队伍  >>   ", \
    {"selector":"@e[type=marker,tag=debug1]","clickEvent": {"action": "run_command","value": "/function debug:panel_trigger/team_auto_allocation"},"hoverEvent": {"action": "show_text","value": "允许/禁止 未参与玩家在游戏开始后自动加入游戏"}}]
kill @e[type=marker,tag=debug1]

## 规则：重复击杀惩罚
execute if score $rule_res_cd debug matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[资源点冷却 等待冷却]","color":"gray"}',Tags:["debug1"]}
execute if score $rule_res_cd debug matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[资源点冷却 立即生成]","color":"yellow"}',Tags:["debug1"]}
execute if score $respawn_wait gamerule matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[复活时间 等待时间]","color":"white"}',Tags:["debug2"]}
execute if score $respawn_wait gamerule matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[复活时间 立即复活]","color":"white"}',Tags:["debug2"]}
execute if score $void_damage gamerule matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[虚空伤害 原版伤害]","color":"white"}',Tags:["debug3"]}
execute if score $void_damage gamerule matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[虚空伤害 添加伤害]","color":"white"}',Tags:["debug3"]}
execute if score $void_damage gamerule matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[虚空伤害 立即死亡]","color":"white"}',Tags:["debug3"]}
execute if score $border gamerule matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[边界缩圈 不会缩圈]","color":"white"}',Tags:["debug4"]}
execute if score $border gamerule matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[边界缩圈 自动缩圈]","color":"white"}',Tags:["debug4"]}
execute if score $daylight_cycle gamerule matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[昼夜更替 启用]","color":"white"}',Tags:["debug5"]}
execute if score $daylight_cycle gamerule matches 2 run summon marker ~ ~ ~ {CustomName:'{"text":"[昼夜更替 停用]","color":"white"}',Tags:["debug5"]}

tellraw @s ["     规则  >>   ", \
    {"selector":"@e[type=marker,tag=debug1]","clickEvent": {"action": "run_command","value": "/function debug:panel_trigger/rule_res_cd"},"hoverEvent": {"action": "show_text","value": "资源点是否可以有设定的冷却时间并且同步所有资源点时间（如果设定为“无”则代表资源点将立即生成，没有冷却时间）（注意：使用 config 计分板来恢复资源点冷却时间）"}},"  ", \
    {"selector":"@e[type=marker,tag=debug2]","clickEvent": {"action": "run_command","value": "/function debug:panel_trigger/rule_respawn_wait"},"hoverEvent": {"action": "show_text","value": "开启/停用 复活时等待时间（玩家可调）"}},"  \n                 ", \
    {"selector":"@e[type=marker,tag=debug3]","clickEvent": {"action": "run_command","value": "/function debug:panel_trigger/rule_void_damage"},"hoverEvent": {"action": "show_text","value": "设定虚空伤害（玩家可调）为：原版/额外/致死"}},"  ", \
    {"selector":"@e[type=marker,tag=debug4]","clickEvent": {"action": "run_command","value": "/function debug:panel_trigger/rule_border"},"hoverEvent": {"action": "show_text","value": "允许/停用 边界缩圈（玩家可调）"}},"  \n                 ", \
    {"selector":"@e[type=marker,tag=debug5]","clickEvent": {"action": "run_command","value": "/function debug:panel_trigger/rule_daylight_cycle"},"hoverEvent": {"action": "show_text","value": "启用/停止 昼夜更替（玩家可调）"}}]
kill @e[type=marker,tag=debug1]
kill @e[type=marker,tag=debug2]
kill @e[type=marker,tag=debug3]
kill @e[type=marker,tag=debug4]
kill @e[type=marker,tag=debug5]

## 地图
# execute if score #init mi_mem matches 1 run summon marker ~ ~ ~ {CustomName:'"{"text":"载入程序"}"',Tags:["debug1"]}
# execute unless score #init mi_mem matches 1 run summon marker ~ ~ ~ {CustomName:'"{"text":"卸载程序"}"',Tags:["debug1"]}

# 第二板块
# ## 玩家

# ### 保存玩家名称
# data remove storage debug:panel_trigger player_show
# execute as @a run function debug:panel_trigger/player_show_sec

# scoreboard players set $player_serial temp 0
# execute store result score $player_transfer temp if entity @a
# execute if score $player_transfer temp matches 1.. run tellraw @s ["\n","     玩家  >>  在下方列表中选择你想要操控的玩家 ",{"text": "[刷新列表]","clickEvent": {"action": "run_command","value": "/function debug:panel"}}]
# function debug:panel_trigger/player_show_third
# scoreboard players reset $player_serial temp
# scoreboard players reset $player_transfer temp
# data remove storage bw:basic temp.player

## 服务器维护
tellraw @s ""

execute if score $notification maintenance matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[维护通知]","color":"gray"}',Tags:["debug1"]}
execute if score $notification maintenance matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[维护通知 启用]","color":"white"}',Tags:["debug1"]}
execute if score $disable_player_vote maintenance matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[玩家投票]","color":"gray"}',Tags:["debug2"]}
execute if score $disable_player_vote maintenance matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[玩家投票 禁用]","color":"white"}',Tags:["debug2"]}
execute if score $disable_environment_check maintenance matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[环境检测]","color":"gray"}',Tags:["debug3"]}
execute if score $disable_environment_check maintenance matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[环境检测 禁用]","color":"white"}',Tags:["debug3"]}
execute if score $disable_auto_ending maintenance matches 0 run summon marker ~ ~ ~ {CustomName:'{"text":"[自动结束]","color":"gray"}',Tags:["debug4"]}
execute if score $disable_auto_ending maintenance matches 1 run summon marker ~ ~ ~ {CustomName:'{"text":"[自动结束 禁用]","color":"white"}',Tags:["debug4"]}
summon marker ~ ~ ~ {CustomName:'{"text":"[添加维护项]","color":"white"}',Tags:["debug5"]}

tellraw @s ["     维护  >>   ", \
    {"selector":"@e[type=marker,tag=debug1]","clickEvent": {"action": "run_command","value": "/function debug:panel_trigger/maintenance_notification"},"hoverEvent": {"action": "show_text","value": "玩家在载入服务器时是否通知维护事件"}},"  ", \
    {"selector":"@e[type=marker,tag=debug2]","clickEvent": {"action": "run_command","value": "/function debug:panel_trigger/maintenance_disable_player_vote"},"hoverEvent": {"action": "show_text","value": "是否禁止玩家进行地图投票"}},"  ", \
    {"selector":"@e[type=marker,tag=debug3]","clickEvent": {"action": "run_command","value": "/function debug:panel_trigger/maintenance_disable_environment_check"},"hoverEvent": {"action": "show_text","value": "是否停止游戏开始前的基础环境检测"}},"  \n                 ", \
    {"selector":"@e[type=marker,tag=debug4]","clickEvent": {"action": "run_command","value": "/function debug:panel_trigger/maintenance_disable_auto_ending"},"hoverEvent": {"action": "show_text","value": "是否阻断游戏自动结束逻辑"}},"  ", \
    {"selector":"@e[type=marker,tag=debug5]","clickEvent": {"action": "run_command","value": "/function debug:panel_trigger/maintenance_add_object"},"hoverEvent": {"action": "show_text","value": "通过较为原始的方式告诉系统你需要添加的维护项标题"}}]
scoreboard players set $maintenance_serial temp 0
scoreboard players operation $maintenance_transfer temp = $total maintenance
execute if score $maintenance_transfer temp matches 1.. run tellraw @s "      ✎ 正在进行的维护项 >>"
function debug:panel_trigger/maintenance_warn_sec
scoreboard players reset $maintenance_serial temp
scoreboard players reset $maintenance_transfer temp
data remove storage bw:basic temp.maintenance

kill @e[type=marker,tag=debug1]
kill @e[type=marker,tag=debug2]
kill @e[type=marker,tag=debug3]
kill @e[type=marker,tag=debug4]
kill @e[type=marker,tag=debug5]

## 地图
# summon marker ~ ~ ~ {CustomName:'{"text":"[导入地图]","color":"white"}',Tags:["debug1"]}
# tellraw @s ["     地图  >>   ", \
    # {"selector":"@e[type=marker,tag=debug1]","clickEvent": {"action": "run_command","value": "/function debug:importer/map/start"},"hoverEvent": {"action": "show_text","value": "导入新的地图"}},"  "]

# 末尾
tellraw @s ""

# 发送点击音效
function lib:sounds/hit