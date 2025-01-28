# 维护通知
scoreboard players add $notification maintenance 1
execute if score $notification maintenance matches 2.. run scoreboard players set $notification maintenance 0

function debug:panel
execute if score $notification maintenance matches 1 unless score $total maintenance matches 1 unless score $system_killer maintenance matches 1 run tellraw @s "如果没有任何正在进行的维护项或者阻断操作，玩家可能收到错误的维护通知"