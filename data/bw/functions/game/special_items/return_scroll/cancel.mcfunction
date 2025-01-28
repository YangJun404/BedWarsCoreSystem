# 取消

# 数据操控
scoreboard players remove @s return_scroll_holding 1
scoreboard players set @s return_scroll_time 8

# 百分比计算
scoreboard players operation @s return_scroll_progress = @s return_scroll_holding
scoreboard players operation @s return_scroll_progress *= $4 const

# 提示
title @s actionbar {"storage":"bw:lang","nbt":"game.special_item.return_scroll.cancel","interpret": true}