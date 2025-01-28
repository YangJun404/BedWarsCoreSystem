# input {ShopId:STRING,Page:BYTE,Slot:BYTE} + {Action:STRING,ActionName:STRING}

tellraw @s ""
$tellraw @s ["     ","> 您正在 §b$(ActionName)"]
$tellraw @s ["     ","> 输入下面提供的指令，在双引号内填入目标战利品表，完成后",{"text":"§b点击此处","clickEvent":{"action":"run_command","value":"/function debug:shop_import/step/operation_select/$(Action)/input_read {ShopId:\"$(ShopId)\",Slot:$(Slot)b,Page:$(Page)b}"}}]

# 直接输入指令
$tellraw @s [{"text":"> §b[点我复制命令]","clickEvent":{"action":"suggest_command","value":"/data modify storage bw:shop/general/pg$(Page) data[{Slot:$(Slot)b}].Loot set value \"\""}}]

# 返回
$tellraw @s ["     ",{"text": "[返回]","color": "red","hoverEvent": {"action": "show_text","value": {"text": "返回上一步","color": "red"}},"clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/operation_select/init {ShopId:\"$(ShopId)\",Slot:$(Slot)b,Page:$(Page)b}"}}]