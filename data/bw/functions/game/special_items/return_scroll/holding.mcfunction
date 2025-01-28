# 当玩家一直右键时执行

# 音效
function lib:sounds/hit

# 百分比计算
scoreboard players operation @s return_scroll_progress = @s return_scroll_holding
scoreboard players operation @s return_scroll_progress *= $4 const

# 数据操控
scoreboard players add @s return_scroll_holding 1
scoreboard players reset @s return_scroll_time

# 提示
title @s actionbar {"storage":"bw:lang","nbt":"game.special_item.return_scroll.progress","interpret": true}