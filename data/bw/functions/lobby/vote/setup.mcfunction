# 投票来确认地图

# 重置残留历史
scoreboard players reset * vote

# 同步地图选择
scoreboard players operation $using map = $sel map

# 随机地图
execute if score $using map matches 0 run function bw:lobby/map/choice/random with storage bw:basic map

# 加载地图中心点
function bw:global/map/playing_area/generate_entity

# 快速模式
execute if score #sys_working map = $using map run scoreboard players set $fast_mode temp 1
execute if score #sys_working map = $using map run say [地图复制系统] 当前投票中的地图正在复制中，系统正在加速复制，造成卡顿属于正常现象。

# 载入投票状态
scoreboard players set $voting vote 1
scoreboard players set $countdown_max vote 60

# 更新字体展示实体
data modify entity @e[limit=1,type=text_display,tag=lobby_display_start_vote] text set value '{"storage":"bw:lang","nbt":"lobby.vote.setup.display","interpret": true}'

# 同步倒计时
scoreboard players operation $countdown vote = $countdown_max vote 

# 投票计分板
scoreboard players enable @a[team=!debug,scores={afk_time=..179}] vote 
bossbar set lobby name {"storage":"bw:lang","nbt":"lobby.vote.start.bossbar"}
execute store result bossbar lobby max run scoreboard players get $countdown_max vote
execute store result bossbar lobby value run scoreboard players get $countdown_max vote
bossbar set lobby players @a

# 发送提示
tellraw @a[team=!debug,scores={afk_time=..179}] {"storage":"bw:lang","nbt":"lobby.vote.start.click_text","interpret": true}

# 放置决定平台
fill 3 49 38 1 49 40 minecraft:lime_stained_glass
summon text_display 2.5 53 39.5 {Tags:["lobby_item","lobby_display_start_vote_agree"],text:'{"storage":"bw:lang","nbt":"lobby.vote.start.platform.agree","interpret": true}',billboard:"vertical"}

fill -1 49 38 -3 49 40 minecraft:red_stained_glass
summon text_display -1.5 53 39.5 {Tags:["lobby_item","lobby_display_start_vote_disagree"],text:'{"storage":"bw:lang","nbt":"lobby.vote.start.platform.disagree","interpret": true}',billboard:"vertical"}

# 修改字体展示实体
data modify entity @e[limit=1,type=text_display,tag=lobby_display_start_vote] text set value {"storage":"bw:lang","nbt":"lobby.vote.start.display","interpret": true}

# # 发送通知
# tellraw @a {"storage":"bw:lang","nbt":"lobby.vote.setup.notice","interpret": true}