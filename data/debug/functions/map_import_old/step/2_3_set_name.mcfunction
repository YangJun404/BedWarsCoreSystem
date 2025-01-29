# 设定地图中文名称

give @s anvil{Tags:["map_importer","disable_throw"]}
give @s iron_nugget{Tags:["map_importer","disable_throw"]}

tellraw @s ""
tellraw @s {"text": ">> 步骤2_3：中文名称设定","bold": true,"color": "aqua"}
tellraw @s "好的地图总不能没有名称吧..."
tellraw @s "已经给予铁粒和铁砧放置到你的背包！请命名铁粒为地图的名称..."
tellraw @s ""
tellraw @s [{"text": "☞ 执行 ","bold": false,"color": "aqua"},{"text": "/function debug:map_import/trigger/set_name","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/function debug:map_import/trigger/set_name"}},{"text": " 来确定名称...","bold": false}]
tellraw @s ""