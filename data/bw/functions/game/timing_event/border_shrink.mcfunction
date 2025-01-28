function bw:game/border/shrink

# （地图事件）缩圈
setblock -6 50 -32 minecraft:redstone_block

# 刷新 Bossbar 玩家
schedule function bw:game/bossbar_player 25t replace