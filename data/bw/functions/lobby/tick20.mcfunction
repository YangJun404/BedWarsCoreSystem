# 每 20 Tick 执行一次

# 投票功能
execute if score $voting vote matches 1 run function bw:lobby/vote/main

# 饱和
effect give @a[scores={food=..19}] saturation 1 255 true