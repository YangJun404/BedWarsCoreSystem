# 全局初始化

# 世界边界
worldborder center 0 0
worldborder set 29999984

# 强加载
forceload remove all
forceload add 85 85 -85 -85 

# 游戏规则
gamerule disableElytraMovementCheck true
gamerule doWeatherCycle false 

# 计分板
scoreboard objectives remove debug
scoreboard objectives add debug dummy "调试"
execute unless score $system_f3 debug matches 0..1 run scoreboard players set $system_f3 debug 1
execute unless score $team_auto_allocation debug matches 0..1 run scoreboard players set $team_auto_allocation debug 0
execute unless score $rule_res_cd debug matches 0..1 run scoreboard players set $rule_res_cd debug 0

# scoreboard objectives remove maintenance
scoreboard objectives add maintenance dummy "维护"
execute unless score $notification maintenance matches 0..1 run scoreboard players set $notification maintenance 0
execute unless score $disable_player_vote maintenance matches 0..1 run scoreboard players set $disable_player_vote maintenance 0
execute unless score $disable_auto_ending maintenance matches 0..1 run scoreboard players set $disable_auto_ending maintenance 0
execute unless score $disable_environment_check maintenance matches 0..1 run scoreboard players set $disable_environment_check maintenance 0

scoreboard objectives remove const
scoreboard objectives add const dummy "数字常数"
scoreboard players set $-1 const -1
scoreboard players set $0 const 0
scoreboard players set $1 const 1
scoreboard players set $2 const 2
scoreboard players set $4 const 4
scoreboard players set $5 const 5
scoreboard players set $10 const 10
scoreboard players set $20 const 20
scoreboard players set $1000 const 1000

# scoreboard objectives remove command_config
scoreboard objectives add command_config dummy "指令配置"

scoreboard objectives remove temp
scoreboard objectives remove temp2
scoreboard objectives add temp dummy "缓存"
scoreboard objectives add temp2 dummy "缓存2"

scoreboard objectives remove food
scoreboard objectives add food food "饱食"

scoreboard objectives remove leave_game
scoreboard objectives add leave_game custom:leave_game "退出游戏"

scoreboard objectives remove afk_time
scoreboard objectives add afk_time dummy "离开时间"

scoreboard objectives remove death
scoreboard objectives add death deathCount "死亡接口"

scoreboard objectives remove kill_player
scoreboard objectives add kill_player playerKillCount "击杀玩家总数"

scoreboard objectives remove health
scoreboard objectives add health health "❤"

scoreboard objectives remove UUID
scoreboard objectives add UUID dummy "统一标识符"

scoreboard objectives remove damage_type
scoreboard objectives add damage_type dummy "伤害种类"

scoreboard objectives remove damage_source
scoreboard objectives add damage_source dummy "伤害来源"

scoreboard objectives remove hate_time
scoreboard objectives add hate_time dummy "仇恨时间"

scoreboard objectives remove gamerule
scoreboard objectives add gamerule dummy "游戏设定"

scoreboard objectives remove fireball_life
scoreboard objectives add fireball_life dummy "火球时间"

scoreboard objectives remove player_count
scoreboard objectives add player_count dummy "玩家人数"

scoreboard objectives remove map
scoreboard objectives add map dummy "地图"
execute as @e[type=marker,tag=map] store result score @s map run data get entity @s data.map.id

scoreboard objectives add config dummy "配置"
execute unless score #init config matches 1 run function debug:config_reset
function debug:config_sync

scoreboard objectives remove is_input_valid
scoreboard objectives add is_input_valid dummy "输入项是否有效"

scoreboard objectives remove tps
scoreboard objectives add tps dummy "TPS"

scoreboard objectives remove about
scoreboard objectives add about trigger "关于这个数据包"

# 队伍
# team remove debug
team add debug "调试"
team modify debug collisionRule never
team modify debug color light_purple

# 重置地图复制系统
function bw:global/map/init

# 开始 tps 运算
function bw:global/tps/start

# 开始地图复制
schedule function bw:global/map/control/check 2s replace