# input {ShopId:STRING}

#   ❇  商店导入面板
#       > shop_id
#   
#   选择操作的格子
#       [00] [01] ... [08]
#       [09] [10] ... [17]
#       [18] [19] ... [26]
#
#   [返回]

# 标题
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n ❇  ","color":"aqua"},{"text":"商店导入面板"}]
# 展示当前位置
$tellraw @s ["     ",{"text":"> $(ShopId)","color":"yellow"}]

tellraw @s ""

## Section 1 选择操作的格子
tellraw @s ["     ",{"text": "选择你要操作的格子"}]

tellraw @s ["     ","     ",{"text": "[00]","color": "green","clickEvent": {"action": "run_command","value": "/tellraw @s \"unfinished\""}}," ",{"text": "[01]","color": "green","clickEvent": {"action": "run_command","value": "/tellraw @s \"unfinished\""}}," ",{"text": "[02]","color": "green","clickEvent": {"action": "run_command","value": "/tellraw @s \"unfinished\""}}," ",{"text": "[03]","color": "green","clickEvent": {"action": "run_command","value": "/tellraw @s \"unfinished\""}}," ",{"text": "[04]","color": "green","clickEvent": {"action": "run_command","value": "/tellraw @s \"unfinished\""}}," ",{"text": "[05]","color": "green","clickEvent": {"action": "run_command","value": "/tellraw @s \"unfinished\""}}," ",{"text": "[06]","color": "green","clickEvent": {"action": "run_command","value": "/tellraw @s \"unfinished\""}}," ",{"text": "[07]","color": "green","clickEvent": {"action": "run_command","value": "/tellraw @s \"unfinished\""}}," ",{"text": "[08]","color": "green","clickEvent": {"action": "run_command","value": "/tellraw @s \"unfinished\""}}]
$tellraw @s ["     ","     ",{"text": "[09]","color": "white","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/page_select/init {ShopId:\"$(ShopId)\",Slot:9b}"}}," ",{"text": "[10]","color": "white","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/page_select/init {ShopId:\"$(ShopId)\",Slot:10b}"}}," ",{"text": "[11]","color": "white","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/page_select/init {ShopId:\"$(ShopId)\",Slot:11b}"}}," ",{"text": "[12]","color": "white","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/page_select/init {ShopId:\"$(ShopId)\",Slot:12b}"}}," ",{"text": "[13]","color": "white","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/page_select/init {ShopId:\"$(ShopId)\",Slot:13b}"}}," ",{"text": "[14]","color": "white","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/page_select/init {ShopId:\"$(ShopId)\",Slot:14b}"}}," ",{"text": "[15]","color": "white","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/page_select/init {ShopId:\"$(ShopId)\",Slot:15b}"}}," ",{"text": "[16]","color": "white","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/page_select/init {ShopId:\"$(ShopId)\",Slot:16b}"}}," ",{"text": "[17]","color": "white","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/page_select/init {ShopId:\"$(ShopId)\",Slot:17b}"}}]
$tellraw @s ["     ","     ",{"text": "[18]","color": "white","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/page_select/init {ShopId:\"$(ShopId)\",Slot:18b}"}}," ",{"text": "[19]","color": "white","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/page_select/init {ShopId:\"$(ShopId)\",Slot:19b}"}}," ",{"text": "[20]","color": "white","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/page_select/init {ShopId:\"$(ShopId)\",Slot:20b}"}}," ",{"text": "[21]","color": "white","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/page_select/init {ShopId:\"$(ShopId)\",Slot:21b}"}}," ",{"text": "[22]","color": "white","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/page_select/init {ShopId:\"$(ShopId)\",Slot:22b}"}}," ",{"text": "[23]","color": "white","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/page_select/init {ShopId:\"$(ShopId)\",Slot:23b}"}}," ",{"text": "[24]","color": "white","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/page_select/init {ShopId:\"$(ShopId)\",Slot:24b}"}}," ",{"text": "[25]","color": "white","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/page_select/init {ShopId:\"$(ShopId)\",Slot:25b}"}}," ",{"text": "[26]","color": "white","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/page_select/init {ShopId:\"$(ShopId)\",Slot:26b}"}}]
## 上一步
tellraw @s ""
tellraw @s ["     ",{"text": "[返回]","color": "red","hoverEvent": {"action": "show_text","value": {"text": "返回上一步","color": "red"}},"clickEvent": {"action": "run_command","value": "/function debug:shop_import/init"}}]