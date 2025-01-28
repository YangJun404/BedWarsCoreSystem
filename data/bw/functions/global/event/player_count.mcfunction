# 玩家总数
execute store result score $total_count player_count if entity @a[team=!debug]

# 正在挂机的玩家
execute store result score $afking player_count if entity @a[scores={afk_time=180..}]

# 活跃的玩家
scoreboard players operation $active player_count = $total_count player_count
scoreboard players operation $active player_count -= $afking player_count

# 游戏中的玩家
execute store result score $game_playing player_count if entity @a[tag=playing,team=!spec]