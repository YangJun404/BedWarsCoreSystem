# 以 1 Tick 为周期，额外挂载时钟
schedule function debug:map_tool/tick/tick1 1t replace

# 玩家背包实现
execute as @a[team=debug,nbt={Inventory:[{id:"minecraft:debug_stick"}]}] at @s run function debug:map_tool/tick/tick1_player