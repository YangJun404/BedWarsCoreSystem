# 要求系统载入状态：大厅
scoreboard players set $working gaming 0

# 游戏规则
gamerule spectatorsGenerateChunks false
gamerule fallDamage false
gamerule naturalRegeneration true
gamerule doDaylightCycle true
gamerule doFireTick true

# 世界出生点
setworldspawn 0 50 0 0

# 记录表现分
## 记录最高分
execute as @a if score @s stat_score >= #rank_1 stat_score run scoreboard players operation #rank_1 stat_score = @s stat_score
execute as @a if score @s stat_score >= #rank_2 stat_score unless score @s stat_score = #rank_1 stat_score run scoreboard players operation #rank_2 stat_score = @s stat_score
execute as @a if score @s stat_score >= #rank_3 stat_score unless score @s stat_score = #rank_1 stat_score unless score @s stat_score = #rank_2 stat_score run scoreboard players operation #rank_3 stat_score = @s stat_score
## 刷新排行榜
data modify block 25 53 0 SkullOwner set value {}
execute as @a if score @s stat_score = #rank_1 stat_score run function lib:playerinfo/name
data modify block 23 50 6 SkullOwner.Name set from storage lib:playerinfo name

data modify block 25 52 1 SkullOwner set value {}
execute as @a if score @s stat_score = #rank_2 stat_score run function lib:playerinfo/name
data modify block 25 52 1 SkullOwner.Name set from storage lib:playerinfo name

data modify block 25 51 -1 SkullOwner set value {}
execute as @a if score @s stat_score = #rank_3 stat_score run function lib:playerinfo/name
data modify block 25 51 -1 SkullOwner.Name set from storage lib:playerinfo name

# 初始化地图统计数据
function bw:lobby/map/data_update

# 初始化地图选择
scoreboard players set $sel map 0

# HUB 控制
scoreboard objectives setdisplay below_name
scoreboard objectives setdisplay list
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.green
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.yellow
scoreboard objectives setdisplay sidebar.team.gray
scoreboard objectives setdisplay sidebar.team.dark_aqua stat_score
scoreboard objectives setdisplay sidebar.team.dark_purple stat_bed_break
scoreboard objectives setdisplay sidebar.team.dark_green stat_kill
scoreboard objectives setdisplay sidebar.team.dark_red stat_death
bossbar set countdown:blue players
bossbar set countdown:green players
bossbar set countdown:yellow players
bossbar set countdown:red players
bossbar set countdown:spec players

# 重置展示实体
function bw:lobby/reset_display

# 重置规则牌
function bw:lobby/gamerule/reset_sign

# 玩家载入
execute as @a[team=!debug] run function bw:lobby/player_enter

# 载入指令区域 & 微观模型
function bw:lobby/map/command_area/unload/trigger