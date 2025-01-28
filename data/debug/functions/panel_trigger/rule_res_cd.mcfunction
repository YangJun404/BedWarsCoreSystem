# 资源点冷却时间
scoreboard players add $rule_res_cd debug 1
execute if score $rule_res_cd debug matches 2.. run scoreboard players set $rule_res_cd debug 0

execute if score $rule_res_cd debug matches 0 run scoreboard players operation $res_copper gamerule = $res_copper config
execute if score $rule_res_cd debug matches 0 run scoreboard players operation $res_iron gamerule = $res_iron config
execute if score $rule_res_cd debug matches 0 run scoreboard players operation $res_diamond gamerule = $res_diamond config

execute if score $rule_res_cd debug matches 1 run scoreboard players set $res_copper gamerule 1
execute if score $rule_res_cd debug matches 1 run scoreboard players set $res_iron gamerule 1
execute if score $rule_res_cd debug matches 1 run scoreboard players set $res_diamond gamerule 1

function debug:panel

scoreboard players operation @e[type=armor_stand,tag=res,tag=res_copper] res_cd = $res_copper gamerule 
scoreboard players operation @e[type=armor_stand,tag=res,tag=res_iron] res_cd = $res_iron gamerule 
scoreboard players operation @e[type=armor_stand,tag=res,tag=res_diamond] res_cd = $res_diamond gamerule 