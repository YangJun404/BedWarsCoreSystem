# 每 1 Tick 执行一次

# 调用资源点模块
function bw:game/resource/tick1

# 调用随机事件（如果有的话）
execute if score $working mutation = $working mutation run function bw:game/mutation/trigger/tick1

# 调用特殊物品
function bw:game/special_items/tick1