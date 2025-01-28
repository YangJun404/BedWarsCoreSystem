# 防止玩家刷人头（brush_head...??）
# as 击杀者 at 受害者

# 同步上一次受害者 id 到击杀者的缓存计分板
scoreboard players operation @s temp = @s kill_same_check

# 同步受害者 id 到击杀者的计分板
scoreboard players operation @s kill_same_check = @p[tag=death] player_id

# 如果两计分板相等 则击杀者击杀了同一个玩家
execute if score @s temp = @s kill_same_check run scoreboard players add @s kill_same 1

# 如果不相等 则不是击杀同一玩家
execute unless score @s temp = @s kill_same_check run scoreboard players set @s kill_same 0

# 重置
scoreboard players reset @s temp