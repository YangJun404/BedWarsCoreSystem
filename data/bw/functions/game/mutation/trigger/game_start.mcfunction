# 游戏初始化时执行

# 特殊玩法
execute if score $working mutation matches -1 run function bw:game/mutation/-1/init

# 瘤子战争：停用床破坏检测
execute if score $working mutation matches 1 run scoreboard players set $bed_break_check gamerule 2

# 弃床战争：破坏所有的床
execute if score $working mutation matches 2 run function bw:game/mutation/2/game_start

# 无法自疗：无法自然恢复生命
execute if score $working mutation matches 3 run gamerule naturalRegeneration false