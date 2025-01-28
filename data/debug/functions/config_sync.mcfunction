# 同步配置

# 系统变量
execute store result storage bw:basic mutation.max int 1 run scoreboard players get $mutation_max config
scoreboard players operation $check_same_kill gamerule = $check_same_kill config

# 人数
scoreboard players operation $team_max team = $team_max config
scoreboard players operation $player_max team = $player_max config

# 资源点
scoreboard players operation $res_copper gamerule = $res_copper config
scoreboard players operation $res_iron gamerule = $res_iron config
scoreboard players operation $res_diamond gamerule = $res_diamond config

scoreboard players operation $res_copper_max gamerule = $res_copper_max config
scoreboard players operation $res_iron_max gamerule = $res_iron_max config
scoreboard players operation $res_diamond_max gamerule = $res_diamond_max config

# 时长&寿命设定
scoreboard players operation $countdown_gaming gamerule = $countdown_gaming config
scoreboard players operation $life_max fireball_life = $fireball_life_max config
scoreboard players operation $ respawn_time = $respawn_time config

# 默认可调游戏规则
scoreboard players operation $shop_type gamerule = $shop_type config
scoreboard players operation $void_damage gamerule = $void_damage config
scoreboard players operation $respawn_wait gamerule = $respawn_wait config
scoreboard players operation $border gamerule = $border config
scoreboard players operation $daylight_cycle gamerule = $daylight_cycle config
scoreboard players operation $exchange gamerule = $exchange config
scoreboard players operation $team_number gamerule = $team_number config

# 时间事件
scoreboard players operation $notice timing = $timing_notice config
scoreboard players operation $res_update_1 timing = $timing_res_update_1 config
scoreboard players operation $res_update_2 timing = $timing_res_update_2 config
scoreboard players operation $res_update_3 timing = $timing_res_update_3 config
scoreboard players operation $bed_break timing = $timing_bed_break config
scoreboard players operation $border_shrink timing = $timing_border_shrink config
scoreboard players operation $game_end timing = $timing_game_end config