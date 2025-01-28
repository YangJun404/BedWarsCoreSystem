# input {ShopId:STRING,Page:BYTE,Slot:BYTE}

## Section 1 选择操作
tellraw @s ""
$tellraw @s ["     ",{"text": "选择对格子 $(Page)-$(Slot)  选择需要更改的项目"}]

$tellraw @s ["     ","     ",{"text": "§a[单个物品]","clickEvent": {"action": "run_command","value": "/function debug:shop_import/panel/data_import/item_data {ShopId:\"$(ShopId)\",Page:$(Page)b,Slot:$(Slot)b,Action:\"item_info\",ActionName:\"修改商品内容（单个物品）\"}"}}," ",{"text": "§a[战利品表]","clickEvent": {"action": "run_command","value": "/function debug:shop_import/panel/data_import/loot_path {ShopId:\"$(ShopId)\",Page:$(Page)b,Slot:$(Slot)b,Action:\"loot_table\",ActionName:\"修改商品内容（战利品表）\"}"}}," ",{"text": "[商品价格]","clickEvent": {"action": "run_command","value": "/function debug:shop_import/panel/operation_select/price_modify {ShopId:\"$(ShopId)\",Page:$(Page)b,Slot:$(Slot)b,Action:\"item_add\",ActionName:\"修改商品价格\"}"}}," ",{"text": "§c[删除商品信息]","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/operation_select/remove/item_info {ShopId:\"$(ShopId)\",Page:$(Page)b,Slot:$(Slot)b}"}}]
$tellraw @s ["     ","     ",{"text": "[显示信息]","clickEvent": {"action": "run_command","value": "/function debug:shop_import/panel/data_import/item_data {ShopId:\"$(ShopId)\",Page:$(Page)b,Slot:$(Slot)b,Action:\"display_info\",ActionName:\"修改显示信息\"}"}}," ",{"text": "[显示名称]","clickEvent": {"action": "run_command","value": "/function debug:shop_import/panel/data_import/display_name {ShopId:\"$(ShopId)\",Page:$(Page)b,Slot:$(Slot)b,Action:\"display_name\",ActionName:\"修改显示名称\"}"}}," ",{"text": "[显示价格]","clickEvent": {"action": "run_command","value": "/function debug:shop_import/panel/operation_select/price_modify {ShopId:\"$(ShopId)\",Page:$(Page)b,Slot:$(Slot)b,Action:\"display_add\",ActionName:\"修改显示价格\"}"}}," ",{"text": "§c[删除显示信息]","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/operation_select/remove/display_info {ShopId:\"$(ShopId)\",Page:$(Page)b,Slot:$(Slot)b}"}}]

## 上一步
tellraw @s ""
$tellraw @s ["     ",{"text": "[返回]","color": "red","hoverEvent": {"action": "show_text","value": {"text": "返回上一步","color": "red"}},"clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/page_select/init {ShopId:\"$(ShopId)\",Slot:$(Slot)b}"}}]

#function debug:shop_import/panel/data_import/item_data {ShopId:"111",Page:1b,Slot:1b,Action:"item_info",ActionName:"修改商品信息"}