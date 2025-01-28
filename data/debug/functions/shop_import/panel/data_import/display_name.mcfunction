# input {ShopId:STRING,Page:BYTE,Slot:BYTE} + {Action:STRING,ActionName:STRING}

tellraw @s ""
$tellraw @s ["     ","> 您正在 §b$(ActionName)"]
$tellraw @s ["     ","> 请将想要设定的物品放在主手，完成后",{"text":"§b点击此处","clickEvent":{"action":"run_command","value":"/function debug:shop_import/step/operation_select/$(Action)/input_read {ShopId:\"$(ShopId)\",Slot:$(Slot)b,Page:$(Page)b}"}}]

give @s writable_book{pages:["请在署名界面中将书名输入想要设置的商品显示名称并完成署名。"],Tag:"display_name"}
$tellraw @s ["     ","     ",{"text":"1. 请根据给予的书与笔的指示输入内容并署名\n"},"     ","     ",{"text":"2. 将署了名的书放在主手后，请点击这条内容","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/operation_select/display_name/input_read {ShopId:$(ShopId),Page:$(Page),Slot:$(Slot)}"}}]

# 返回
$tellraw @s ["     ",{"text": "[返回]","color": "red","hoverEvent": {"action": "show_text","value": {"text": "返回上一步","color": "red"}},"clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/operation_select/init {ShopId:\"$(ShopId)\",Slot:$(Slot)b,Page:$(Page)b}"}}]