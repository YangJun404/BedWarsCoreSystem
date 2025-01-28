# 游戏初始化

# 游戏规则
gamerule fallDamage true
gamerule keepInventory false
gamerule doLimitedCrafting true
gamerule doImmediateRespawn true
gamerule naturalRegeneration true
gamerule doDaylightCycle true
gamerule doFireTick true

# 计分板
# scoreboard objectives remove map_data
scoreboard objectives add map_data dummy "地图数据"

scoreboard objectives remove res_cd
scoreboard objectives add res_cd dummy "资源点冷却"

scoreboard objectives remove res_anim_speed
scoreboard objectives add res_anim_speed dummy "资源点动画速度"

scoreboard objectives remove res_anim_calculate
scoreboard objectives add res_anim_calculate dummy "资源点动画计算"

scoreboard objectives remove break_red
scoreboard objectives add break_red mined:red_bed "破坏红床"

scoreboard objectives remove break_green
scoreboard objectives add break_green mined:green_bed "破坏绿床"

scoreboard objectives remove respawn_time
scoreboard objectives add respawn_time dummy "复活等待时间"

scoreboard objectives remove break_yellow
scoreboard objectives add break_yellow mined:yellow_bed "破坏黄床"

scoreboard objectives remove break_blue
scoreboard objectives add break_blue mined:blue_bed "破坏蓝床"

scoreboard objectives remove round_info
scoreboard objectives add round_info dummy "本局信息"

scoreboard objectives remove rejoin_trigger
scoreboard objectives add rejoin_trigger trigger "重新加入游戏"

scoreboard objectives remove return_scroll_holding
scoreboard objectives add return_scroll_holding dummy "回城卷轴使用"

scoreboard objectives remove return_scroll_time
scoreboard objectives add return_scroll_time dummy "回城卷轴超时时间"

scoreboard objectives remove return_scroll_progress
scoreboard objectives add return_scroll_progress dummy "回城卷轴进度"

scoreboard objectives remove compass_select
scoreboard objectives add compass_select dummy "追溯指针选择目标"

scoreboard objectives remove bossbar
scoreboard objectives add bossbar dummy "Boss 栏"

scoreboard objectives remove levitation_energy
scoreboard objectives add levitation_energy dummy "悬浮能量"

scoreboard objectives remove player_id
scoreboard objectives add player_id dummy "玩家 ID"
scoreboard players set $ player_id 0

scoreboard objectives remove kill_combo
scoreboard objectives add kill_combo dummy "连杀记录"

scoreboard objectives remove craft_wool 
scoreboard objectives add craft_wool crafted:white_wool "羊毛合成触发"

scoreboard objectives remove craft_stick
scoreboard objectives add craft_stick crafted:debug_stick "击退棒合成触发"

scoreboard objectives remove kill_same_check
scoreboard objectives add kill_same_check dummy "击杀同一玩家检测"

scoreboard objectives remove kill_same
scoreboard objectives add kill_same dummy "击杀同一玩家数"

scoreboard objectives remove round_score
scoreboard objectives add round_score dummy "局表现分"

scoreboard objectives remove round_kill
scoreboard objectives add round_kill killed:player "局击杀"

scoreboard objectives remove round_death
scoreboard objectives add round_death dummy "局死亡数"

scoreboard objectives remove round_combo
scoreboard objectives add round_combo dummy "局连杀数"

scoreboard objectives remove team
scoreboard objectives add team dummy "队伍"

scoreboard objectives remove gaming
scoreboard objectives add gaming dummy "游戏"

scoreboard objectives remove border
scoreboard objectives add border dummy "边界"

scoreboard objectives remove mutation
scoreboard objectives add mutation dummy "随机事件"

scoreboard objectives remove timing 
scoreboard objectives add timing dummy "时间事件"

scoreboard objectives remove shop_view_page
scoreboard objectives add shop_view_page dummy "商店当前查看页数"

scoreboard objectives remove purchase_success
scoreboard objectives add purchase_success dummy "购买成功"

scoreboard objectives remove own_copper
scoreboard objectives remove own_iron
scoreboard objectives remove own_gold
scoreboard objectives remove own_diamond
scoreboard objectives add own_copper dummy "拥有铜锭数"
scoreboard objectives add own_iron dummy "拥有铁锭数"
scoreboard objectives add own_gold dummy "拥有金锭数"
scoreboard objectives add own_diamond dummy "拥有钻石数"

# 队伍
team remove spec 
team add spec "旁观"
team modify spec collisionRule never
team modify spec color gray
team modify spec friendlyFire false

team remove red
team add red "红队"
team modify red color red
team modify red friendlyFire false
team modify red collisionRule never

team remove red_info
team add red_info
team join red_info §c红队 

team remove blue
team add blue "蓝队"
team modify blue color blue
team modify blue friendlyFire false
team modify blue collisionRule never

team remove blue_info
team add blue_info
team join blue_info §9蓝队

team remove yellow
team add yellow "黄队"
team modify yellow color yellow
team modify yellow friendlyFire false
team modify yellow collisionRule never

team remove yellow_info
team add yellow_info
team join yellow_info §e黄队

team remove green
team add green "绿队"
team modify green color green
team modify green friendlyFire false
team modify green collisionRule never

team remove green_info
team add green_info
team join green_info §a绿队

# Boss 栏
bossbar remove countdown:green
bossbar add countdown:green "倒计时"
bossbar set countdown:green color green

bossbar remove countdown:red
bossbar add countdown:red "倒计时"
bossbar set countdown:red color red

bossbar remove countdown:yellow
bossbar add countdown:yellow "倒计时"
bossbar set countdown:yellow color yellow

bossbar remove countdown:blue
bossbar add countdown:blue "倒计时"
bossbar set countdown:blue color blue

bossbar remove countdown:spec
bossbar add countdown:spec "倒计时"
bossbar set countdown:spec color white
