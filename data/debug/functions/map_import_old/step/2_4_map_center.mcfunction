# 设定地图中文名称

kill @e[type=marker,tag=map_importer,tag=map_center]
give @s husk_spawn_egg{display:{Name:'{"text":"地图中心点","color":"blue","italic":false}',Lore:['{"text":"放下后将对应点位设定为地图中心点...","italic":false,"color":"yellow"}']},EntityTag:{id:"marker",Tags:["map_importer","map_center"]},Enchantments:[{id:"unbreaking",lvl:10}],Tags:["map_importer","disable_throw"]}

tellraw @s ""
tellraw @s {"text": ">> 步骤2_4：中心点设定","bold": true,"color": "aqua"}
tellraw @s "中心点是导入系统用于计算偏移量的重要点位"
tellraw @s "已经给予了一个刷怪蛋在你手中，请在合适的位置使用他。"
tellraw @s "放置后，系统会持续高亮点位..."
tellraw @s " ⚠ 系统将保留距离你最近的中心点"
tellraw @s ""
tellraw @s [{"text": "☞ 执行 ","bold": false,"color": "aqua"},{"text": "/function debug:map_import/trigger/set_center","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/function debug:map_import/trigger/set_center"}},{"text": " 来确认","bold": false}]
tellraw @s ""