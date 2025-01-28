#> bw:game/craft/check
# 合成检测

# 羊毛
execute if score @s craft_wool matches 1.. run function bw:game/craft/event/wool
scoreboard players reset @s craft_wool

# 击退棒
execute if score @s craft_stick matches 1.. run function bw:game/craft/event/stick
scoreboard players reset @s craft_stick