# 请求恢复地图

# 添加到等待列表
$data modify storage bw:map clone.control.list append value "$(map_id)"

# 请求刷新等待列表
function bw:global/map/control/refresh