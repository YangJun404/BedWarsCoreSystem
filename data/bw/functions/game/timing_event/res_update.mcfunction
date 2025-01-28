# 资源点升级

# 等级 1
execute if score $now timing = $res_update_1 timing run scoreboard players remove $iron res_cd 10
execute if score $now timing = $res_update_1 timing run scoreboard players remove $diamond res_cd 10

# 等级 2
execute if score $now timing = $res_update_2 timing run scoreboard players remove $iron res_cd 10
execute if score $now timing = $res_update_2 timing run scoreboard players remove $diamond res_cd 10

# 等级 3
execute if score $now timing = $res_update_3 timing run scoreboard players remove $iron res_cd 10
execute if score $now timing = $res_update_3 timing run scoreboard players remove $diamond res_cd 10

# 刷新 Bossbar 玩家
schedule function bw:game/bossbar_player 25t replace