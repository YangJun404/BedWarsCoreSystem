# 资源产出点

give @s zoglin_spawn_egg{display:{Name:'{"text":"资源产出点 - 铜","color":"yellow","italic":false}',Lore:['{"text":"放下后将对应点位设定为资源产出点。使用/trigger mi_kill_spawner来击杀附近3格内的资源点，如果觉得放置*所有*资源点已完成可执行 /trigger mi_input ...","italic":false,"color":"yellow"}']},EntityTag:{id:"marker",Tags:["res","res_copper","map_importer"]},Enchantments:[{id:"unbreaking",lvl:10}],Tags:["map_importer","disable_throw"]}
give @s sheep_spawn_egg{display:{Name:'{"text":"资源产出点 - 铁","color":"yellow","italic":false}',Lore:['{"text":"放下后将对应点位设定为资源产出点。使用/trigger mi_kill_spawner来击杀附近3格内的资源点，如果觉得放置*所有*资源点已完成可执行 /trigger mi_input ...","italic":false,"color":"yellow"}']},EntityTag:{id:"marker",Tags:["res","res_iron","map_importer"]},Enchantments:[{id:"unbreaking",lvl:10}],Tags:["map_importer","disable_throw"]}
give @s glow_squid_spawn_egg{display:{Name:'{"text":"资源产出点 - 钻","color":"yellow","italic":false}',Lore:['{"text":"放下后将对应点位设定为资源产出点。使用/trigger mi_kill_spawner来击杀附近3格内的资源点，如果觉得放置*所有*资源点已完成可执行 /trigger mi_input ...","italic":false,"color":"yellow"}']},EntityTag:{id:"marker",Tags:["res","res_diamond","map_importer"]},Enchantments:[{id:"unbreaking",lvl:10}],Tags:["map_importer","disable_throw"]}

tellraw @s ""
tellraw @s {"text": ">> 步骤3_1：资源产放置","bold": true,"color": "aqua"}
tellraw @s "已经给予3种资源点到你手中..."
tellraw @s "诺想放置资源点，在合适的位置放置刷怪蛋"
tellraw @s "放下的资源点将持续发出粒子效果..."
tellraw @s ["如果放错位置了则",{"text": "点击我","underlined": true,"clickEvent": {"action": "suggest_command","value": "/trigger mi_kill"}},"就可以清除附近3格所有的资源点"]
tellraw @s ""
tellraw @s [{"text": "☞ 执行 ","bold": false,"color": "aqua"},{"text": "/function debug:map_import/trigger/spawner_complete","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/function debug:map_import/trigger/spawner_complete"}},{"text": " 来确认所有操作","bold": false}]
tellraw @s ""