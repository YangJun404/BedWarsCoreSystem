scoreboard objectives remove config
scoreboard objectives add config dummy "配置"
scoreboard players set #init config 1

#########################
# 如果没有特殊说明 时间单位均为秒
#########################

# 系统
## 最大随机事件编号（$mutation_max）
scoreboard players set $mutation_max config 7

## 游戏中人数到达设定人数后启用防刷人头检测（$check_same_kill）
scoreboard players set $check_same_kill config 3


# 人数
## 单个队伍最大可接受人数（$team_max）
scoreboard players set $team_max config 4

## 最大可接受人数=单个队伍可接受人数*4
execute store result score $player_max config run scoreboard players get $team_max config
scoreboard players operation $player_max config *= $4 const

# 资源点
## 资源点暂存资源限制：铜（$res_copper_max）
scoreboard players set $res_copper_max config 64

## 资源点暂存资源限制：铁（$res_iron_max）
scoreboard players set $res_iron_max config 32

## 资源点暂存资源限制：钻（$res_diamond_max）
scoreboard players set $res_diamond_max config 8

## 起始等待时间：铜（$res_copper）
scoreboard players set $res_copper config 3

## 起始等待时间：铁（$res_iron）
scoreboard players set $res_iron config 32

## 起始等待时间：钻（$res_diamond）
scoreboard players set $res_diamond config 64

# 时长&寿命设定
## 火球寿命（单位：tick）（$life_max）
scoreboard players set $fireball_life_max config 80

## 复活等待时间（$respawn_time）
scoreboard players set $respawn_time config 6

# 默认可调游戏规则
## 商店类型（0=箱子商店 1=配方 2=村民交易）
scoreboard players set $shop_type config 0

## 虚空伤害（0=原版 1=额外添加伤害 2=立即死亡）
scoreboard players set $void_damage config 0

## 复活选项（1=需要等待设定的时间 2=立即复活）
scoreboard players set $respawn_wait config 1

## 边界设定（1=在设定时间后自动缩圈 2=不会自动缩圈）
scoreboard players set $border config 1

## 昼夜更替（1=启用 2=关闭）
scoreboard players set $daylight_cycle config 1 

## 兑换规则（1=合成 2=交易）
scoreboard players set $exchange config 1

## 团队名称（2=4v4 4=4v4v4v4）
scoreboard players set $team_number config 2

# 时间事件（数字代表开始游戏后多少秒执行）
## 事件提前提醒
scoreboard players set $timing_notice config 15

## 资源点升级 1
scoreboard players set $timing_res_update_1 config 600

## 资源点升级 2
scoreboard players set $timing_res_update_2 config 900

## 资源点升级 3
scoreboard players set $timing_res_update_3 config 1300

## 床自毁
scoreboard players set $timing_bed_break config 1600

## 边界收缩
scoreboard players set $timing_border_shrink config 2300

## 游戏结束
scoreboard players set $timing_game_end config 2700

# 同步到游戏
function debug:config_sync