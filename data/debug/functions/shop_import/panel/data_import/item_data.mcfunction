# input {ShopId:STRING,Page:BYTE,Slot:BYTE} + {Action:STRING,ActionName:STRING}

tellraw @s ""
$tellraw @s ["     ","> 您正在 §b$(ActionName)"]
$tellraw @s ["     ","> 请将想要设定的物品放在主手，完成后",{"text":"§b点击此处","clickEvent":{"action":"run_command","value":"/function debug:shop_import/step/operation_select/$(Action)/input_read {ShopId:\"$(ShopId)\",Slot:$(Slot)b,Page:$(Page)b}"}}]

# 返回
$tellraw @s ["     ",{"text": "[返回]","color": "red","hoverEvent": {"action": "show_text","value": {"text": "返回上一步","color": "red"}},"clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/operation_select/init {ShopId:\"$(ShopId)\",Slot:$(Slot)b,Page:$(Page)b}"}}]