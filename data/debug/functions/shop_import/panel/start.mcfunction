#   ❇  商店导入面板
#       > start
#   
#   选择操作的商店
#       [general] ...

# 标题
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n ❇  ","color":"aqua"},{"text":"商店导入面板"}]
# 展示当前位置
tellraw @s ["     ",{"text":"> start","color":"yellow"}]

tellraw @s ""

## Section 1 选择操作的商店
tellraw @s ["     ",{"text": "选择你要操作的商店"}]
#tellraw @s ["     ","     ",{"text": "[general]","hoverEvent": {"action": "show_text","value": {"text": "队伍商店"}},"clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/slot_select/init {ShopId:\"general\"}"}}]
give @s writable_book{pages:["请在署名界面中将书名输入想要的修改的商店名称（例如general（队伍商店））并完成署名。"],Tag:"shop_id"}
tellraw @s ["     ","     ",{"text":"1. 请根据给予的书与笔的指示输入内容并署名\n"},"     ","     ",{"text":"2. 将署了名的书放在主手后，请点击这条内容","clickEvent": {"action": "run_command","value": "/function debug:shop_import/step/shop_select/input_read"}}]

tellraw @s ""