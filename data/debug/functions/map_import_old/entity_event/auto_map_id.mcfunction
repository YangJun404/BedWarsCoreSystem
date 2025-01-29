# 设定地图id

# 更新 Tags
data modify entity @s Tags set value ["map","map_importer"]

# 更新位置
tp @s 0 0 0

# 设定id
scoreboard players operation @s map = $max map
scoreboard players operation @s map += $1 const

execute store result entity @s data.map.id double 1 run scoreboard players get @s map