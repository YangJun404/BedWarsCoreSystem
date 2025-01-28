# 升级数据包操作

# 同步配置
function debug:config_reset

# 向玩家发送全局初始化提示
tellraw @a {"storage":"bw:lang","nbt":"lobby.version.upgrade","interpret": true}