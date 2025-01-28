# 玩家死亡事件

# 活动玩法
execute if score $working mutation matches -1 run function bw:game/mutation/-1/dead/dead

# 瘸子战争
execute if score $working mutation matches 5 run effect give @s haste infinite 255