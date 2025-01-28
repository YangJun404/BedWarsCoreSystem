# input {ShopId:STRING,Page:BYTE,Slot:BYTE}

# 标题
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n ❇  ","color":"aqua"},{"text":"商店导入面板"}]
# 展示当前位置
$tellraw @s ["     ",{"text":"> $(ShopId)","color":"yellow"},{"text":" > $(Page)-$(Slot)","color":"yellow"}]

tellraw @s ""
