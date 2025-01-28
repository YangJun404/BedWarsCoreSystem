# 刷新等待列表

# 环境检测
## 检测地图复制进行中
execute if score $map_coping temp = $map_coping temp run return run say 检测到正在进行的地图复制任务，复制请求拒绝。

## 检测是否有空余
execute unless data storage bw:map clone.list[0] run return run function bw:global/map/control/check

## 检测tps
execute if score $tps tps matches ..19 run say 检测到当前 TPS 过低，主动复制已取消。
execute if score $tps tps matches ..19 run return fail

execute if score $tps tps matches 21.. run say 检测到当前 TPS 异常，主动复制已取消。
execute if score $tps tps matches 21.. run return fail

# 提示
say [系统调试信息] 静默恢复地图中，如果遇到卡顿属于正常现象！

# 开始复制
data modify storage bw:map clone.id set from storage bw:map clone.list[0]
data remove storage bw:map clone.list[0]
function bw:global/map/init/data/2nd with storage bw:map clone