# 刷新等待列表

# 环境检测
## 检测地图复制进行中
execute if score #sys_working map = #sys_working map unless score #checking map = #checking map run return run say 检测到正在进行的地图恢复任务，复制请求拒绝。

## 检测tps
execute unless score $fast_mode map matches 1 if score $tps tps matches ..19 run return run say 检测到当前 TPS 过低，主动恢复已取消。

execute unless score $fast_mode map matches 1 if score $tps tps matches 21.. run return run say 检测到当前 TPS 异常，主动恢复已取消。

## 系统主动恢复则打断
execute if score #sys_working map = #sys_working map if score #checking map = #checking map run function bw:global/map/control/reset_all

## 检测是否有空余
execute unless data storage bw:map clone.control.list[0] run return run function bw:global/map/control/check

# 开始复制，优先清除
data modify storage bw:map clone.control.id set from storage bw:map clone.control.list[0]
data remove storage bw:map clone.control.list[0]
function bw:global/map/body/trigger with storage bw:map clone.control