execute as @s[team=red,scores={temp=64..}] run give @s red_wool 64
execute as @s[team=blue,scores={temp=64..}] run give @s blue_wool 64
execute as @s[team=green,scores={temp=64..}] run give @s green_wool 64
execute as @s[team=yellow,scores={temp=64..}] run give @s yellow_wool 64
execute as @s[scores={temp=64..}] run scoreboard players remove @s temp 64

execute as @s[team=red,scores={temp=32..63}] run give @s red_wool 32
execute as @s[team=blue,scores={temp=32..63}] run give @s blue_wool 32
execute as @s[team=green,scores={temp=32..63}] run give @s green_wool 32
execute as @s[team=yellow,scores={temp=32..63}] run give @s yellow_wool 32
execute as @s[scores={temp=32..63}] run scoreboard players remove @s temp 32

execute as @s[team=red,scores={temp=16..31}] run give @s red_wool 16
execute as @s[team=blue,scores={temp=16..31}] run give @s blue_wool 16
execute as @s[team=green,scores={temp=16..31}] run give @s green_wool 16
execute as @s[team=yellow,scores={temp=16..31}] run give @s yellow_wool 16
execute as @s[scores={temp=16..31}] run scoreboard players remove @s temp 16

execute as @s[team=red,scores={temp=8..15}] run give @s red_wool 8
execute as @s[team=blue,scores={temp=8..15}] run give @s blue_wool 8
execute as @s[team=green,scores={temp=8..15}] run give @s green_wool 8
execute as @s[team=yellow,scores={temp=8..15}] run give @s yellow_wool 8
execute as @s[scores={temp=8..15}] run scoreboard players remove @s temp 8

execute as @s[team=red,scores={temp=4..7}] run give @s red_wool 4
execute as @s[team=blue,scores={temp=4..7}] run give @s blue_wool 4
execute as @s[team=green,scores={temp=4..7}] run give @s green_wool 4
execute as @s[team=yellow,scores={temp=4..7}] run give @s yellow_wool 4
execute as @s[scores={temp=4..7}] run scoreboard players remove @s temp 4

execute as @s[team=red,scores={temp=2..3}] run give @s red_wool 2
execute as @s[team=blue,scores={temp=2..3}] run give @s blue_wool 2
execute as @s[team=green,scores={temp=2..3}] run give @s green_wool 2
execute as @s[team=yellow,scores={temp=2..3}] run give @s yellow_wool 2
execute as @s[scores={temp=2..3}] run scoreboard players remove @s temp 2

execute as @s[team=red,scores={temp=1}] run give @s red_wool 1
execute as @s[team=blue,scores={temp=1}] run give @s blue_wool 1
execute as @s[team=green,scores={temp=1}] run give @s green_wool 1
execute as @s[team=yellow,scores={temp=1}] run give @s yellow_wool 1
execute as @s[scores={temp=1}] run scoreboard players remove @s temp 1

execute if score @s temp matches 1.. run function bw:game/special_items/wool/color