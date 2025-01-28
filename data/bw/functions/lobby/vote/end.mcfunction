# 投票结束

# 统计
scoreboard players set #agree vote 0
scoreboard players set #opposition vote 0
execute as @a[scores={vote=1}] run scoreboard players add #agree vote 1
execute as @a[scores={vote=2}] run scoreboard players add #opposition vote 1

# 公开 DEBUG 信息
tellraw @a ""
tellraw @a [{"text": "---- 公开 DEBUG 信息 ----"}]
tellraw @a " - 检测到投票已结束，下面是详细内容："
tellraw @a [{"text": " - #agree(vote) :: "},{"score":{"objective": "vote","name": "#agree"}}]
tellraw @a [{"text": " - #opposition(vote) :: "},{"score":{"objective": "vote","name": "#opposition"}}]
tellraw @a [{"text": " - $player_count(vote) :: "},{"score":{"objective": "vote","name": "$player_count"}}]
tellraw @a [{"text": " - $voted_player(vote) :: "},{"score":{"objective": "vote","name": "$voted_player"}}]
tellraw @a [" - 所有可能的预选玩家：",{"selector":"@a[scores={vote=1}]"}]
tellraw @a [" - 拒绝地图使用的玩家：",{"selector":"@a[scores={vote=2}]"}]
tellraw @a ""
tellraw @a " !! 出现投票异常结束或者其他问题，请截图全段信息并且发送给开发者。"
tellraw @a "--------------------"
tellraw @a ""

# 投票否决
execute if score #agree vote matches 2.. if score #agree vote < #opposition vote run tellraw @a {"storage":"bw:lang","nbt":"lobby.vote.end.overrule","interpret": true}
execute if score #agree vote matches 2.. if score #agree vote = #opposition vote run tellraw @a {"storage":"bw:lang","nbt":"lobby.vote.end.tie_vote","interpret": true}
execute if score #agree vote matches 2.. if score #agree vote <= #opposition vote as @a at @s run function lib:sounds/error

# 人数不足
execute unless score #agree vote matches 2.. run tellraw @a {"storage":"bw:lang","nbt":"lobby.vote.trigger.error.player_number","interpret": true}
execute unless score #agree vote matches 2.. as @a at @s run function lib:sounds/error

# 传送玩家到平台
tp @a[scores={vote=1..2}] 0.5 50 31.5 0 0

# 投票通过
## 添加预选玩家
execute if score #agree vote matches 2.. if score #agree vote > #opposition vote run tag @a[scores={vote=1}] add player
## 游戏开始
execute if score #agree vote matches 2.. if score #agree vote > #opposition vote run tellraw @a {"storage":"bw:lang","nbt":"lobby.vote.end.success","interpret": true}
execute if score #agree vote matches 2.. if score #agree vote > #opposition vote run schedule function bw:game/start 2s

# 重置投票
function bw:lobby/vote/reset