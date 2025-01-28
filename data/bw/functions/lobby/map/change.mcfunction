#> bw:lobby/map/change
# 更新为选中的地图

# 微观模型加载
function bw:lobby/map/change_mini_map

# 更新地图名称
kill @e[tag=map_name]
summon text_display 0 44 60 {text:'{"storage":"bw:lang","nbt":"lobby.map.choice.error.no_found_map_name"}',Tags:["map_name"]}
execute unless score $sel map matches 0 run data modify entity @e[type=text_display,limit=1,tag=map_name] text set from storage bw:map using.name
execute if score $sel map matches 0 run data modify entity @e[type=text_display,limit=1,tag=map_name] text set value '{"storage":"bw:lang","nbt":"lobby.map.choice.random_map","interpret":"true"}'
data modify entity @e[limit=1,type=text_display,tag=lobby_display_mini_map] text set value '{"storage":"bw:lang","nbt":"lobby.map.choice.now","interpret": true}'

# 加载指令区域
function bw:lobby/map/command_area/clone
