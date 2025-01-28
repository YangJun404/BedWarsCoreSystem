# 进入旁观模式

# 数据操控
gamemode spectator @s
team join spec

# 刷新 Bossbar
bossbar set countdown:red players @a[team=red]
bossbar set countdown:blue players @a[team=blue]
bossbar set countdown:green players @a[team=green]
bossbar set countdown:yellow players @a[team=yellow]
bossbar set countdown:spec players @a[team=spec]

# 判定游戏结束
function bw:game/team_update
execute unless score $disable_auto_ending maintenance matches 1 if score $team_number team matches ..1 run function bw:game/game_end