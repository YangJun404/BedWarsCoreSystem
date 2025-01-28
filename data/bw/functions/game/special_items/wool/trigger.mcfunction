execute store result score @s temp run clear @s white_wool 0
execute as @s[scores={temp=1..}] run clear @s white_wool
execute as @s[scores={temp=1..}] run function bw:game/special_items/wool/color