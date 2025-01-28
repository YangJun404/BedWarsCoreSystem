execute as @s[tag=res_diamond] run summon item ~ ~-1.3 ~ {Item:{id:"minecraft:diamond",Count:1}}
execute as @s[tag=res_copper] run summon item ~ ~-1.3 ~ {Item:{id:"minecraft:copper_ingot",Count:1}}
execute as @s[tag=res_iron] run summon item ~ ~-1.3 ~ {Item:{id:"minecraft:iron_ingot",Count:1}}

# 活动玩法
execute if score $working mutation matches -1 run function bw:game/mutation/-1/summon_trigger