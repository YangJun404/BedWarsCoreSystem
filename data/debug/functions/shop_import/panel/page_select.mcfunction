# input {ShopId:STRING,Slot:BYTE}

#   ❇  商店导入面板
#       > ShopId > ?-Slot
#   
#   选择操作的格子
#       [00] [01] ... [08]
#
#   [返回]

# 标题
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n ❇  ","color":"aqua"},{"text":"商店导入面板"}]
# 展示当前位置
$tellraw @s ["     ",{"text":"> $(ShopId)","color":"yellow"},{"text":" > ?-$(Slot)","color":"yellow"}]

tellraw @s ""

## Section 1 格子所在的页面
tellraw @s ["     ",{"text": "选择格子所在的页面"}]

$tellraw @s ["     ","     ",{"text": "[00]","color": "green","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/operation_select/init {ShopId:\"$(ShopId)\",Page:0b,Slot:$(Slot)b}"}}," ",{"text": "[01]","color": "green","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/operation_select/init {ShopId:\"$(ShopId)\",Page:1b,Slot:$(Slot)b}"}}," ",{"text": "[02]","color": "green","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/operation_select/init {ShopId:\"$(ShopId)\",Page:2b,Slot:$(Slot)b}"}}," ",{"text": "[03]","color": "green","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/operation_select/init {ShopId:\"$(ShopId)\",Page:3b,Slot:$(Slot)b}"}}," ",{"text": "[04]","color": "green","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/operation_select/init {ShopId:\"$(ShopId)\",Page:4b,Slot:$(Slot)b}"}}," ",{"text": "[05]","color": "green","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/operation_select/init {ShopId:\"$(ShopId)\",Page:5b,Slot:$(Slot)b}"}}," ",{"text": "[06]","color": "green","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/operation_select/init {ShopId:\"$(ShopId)\",Page:6b,Slot:$(Slot)b}"}}," ",{"text": "[07]","color": "green","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/operation_select/init {ShopId:\"$(ShopId)\",Page:7b,Slot:$(Slot)b}"}}," ",{"text": "[08]","color": "green","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/operation_select/init {ShopId:\"$(ShopId)\",Page:8b,Slot:$(Slot)b}"}}]
## 上一步
tellraw @s ""
$tellraw @s ["     ",{"text": "[返回]","color": "red","hoverEvent": {"action": "show_text","value": {"text": "返回上一步","color": "red"}},"clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/slot_select/init {ShopId:\"$(ShopId)\"}"}}]