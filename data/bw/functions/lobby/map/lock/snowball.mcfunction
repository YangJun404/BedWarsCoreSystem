#> bw:lobby/map/lock/snowball
# 尝试解锁地图

execute on origin run tag @s add map_unlocker
setblock 8 50 -32 minecraft:redstone_block

# 更新解锁状态
execute unless score $sel map matches 0 as @e[type=marker,tag=map] if score @s map = $sel map if data entity @s data.map.Lock run data modify entity @e[type=text_display,limit=1,tag=lobby_display_start_vote] text set value '[{"text":"✘ 仍未解锁 ✘","colour":"red"}]'
execute unless score $sel map matches 0 as @e[type=marker,tag=map] if score @s map = $sel map unless data entity @s data.map.Lock run data modify entity @e[type=text_display,limit=1,tag=lobby_display_start_vote] text set value '[{"text": ">>","bold": true},{"text":" 开始投票 ","bold": false},{"text":"<<","bold": true}]'
execute if score $sel map matches 0 run data modify entity @e[type=text_display,limit=1,tag=lobby_display_start_vote] text set value '[{"text": ">>","bold": true},{"text":" 开始投票 ","bold": false},{"text":"<<","bold": true}]'