#> bw:event/get_max_score
# @input score @a[tag=!max_uncounted,tag=playing] round_score 进行统计的分数
# @output score $score_max temp 最高分

scoreboard players set $score_max temp -2147483648
scoreboard players operation $score_max temp > @a[tag=!max_uncounted,tag=playing] round_score