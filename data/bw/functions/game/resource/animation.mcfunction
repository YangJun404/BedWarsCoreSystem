#> bw:game/resource/animation
# 动画实现

# 比较
scoreboard players operation @s[tag=res_diamond] res_anim_calculate = $res_diamond gamerule
scoreboard players operation @s[tag=res_iron] res_anim_calculate = $res_iron gamerule
scoreboard players operation @s res_anim_calculate -= @s res_cd
execute if score @s res_anim_calculate >= @s res_anim_speed run scoreboard players operation @s res_anim_speed = @s res_anim_calculate
execute unless score @s res_anim_calculate >= @s res_anim_speed run scoreboard players remove @s res_anim_speed 1

execute if score @s res_anim_speed matches ..6 run scoreboard players set @s res_anim_speed 6
execute if score @s res_anim_speed matches 30.. run scoreboard players set @s res_anim_speed 30


execute store result storage bw:basic temp.res_anim int 2 run scoreboard players get @s res_anim_speed
function bw:game/resource/animation_2nd with storage bw:basic temp