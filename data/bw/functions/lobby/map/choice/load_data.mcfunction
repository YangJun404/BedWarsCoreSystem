#> bw:lobby/map/choice/load_data
# 加载部分数据
#@input map_select

data remove storage bw:map using
$data modify storage bw:map using set from storage bw:map maps[{id:$(map_select)d}]
# data remove storage bw:map selector
# $data modify storage bw:map selector.id set from storage bw:map maps[{id:$(map_select)d}].id
# $data modify storage bw:map selector.name set from storage bw:map maps[{id:$(map_select)d}].name
# $data modify storage bw:map selector.mini_name set from storage bw:map maps[{id:$(map_select)d}].mini_name
# $data modify storage bw:map selector.command_area_name set from storage bw:map maps[{id:$(map_select)d}].command_area_name