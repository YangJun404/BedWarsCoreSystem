# 队伍必要点位设定

give @s husk_spawn_egg{display:{Name:'{"text":"床设定点","color":"yellow","italic":false}',Lore:['{"text":"放下后将对应点位设定为对应队伍的床出生点。使用/trigger mi_kill来击杀附近3格内的资源点，如果觉得放置*所有*标记点已完成可执行 /trigger mi_input ...","italic":false,"color":"yellow"}']},EntityTag:{id:"marker",Tags:["bed_marker"]},Enchantments:[{id:"unbreaking",lvl:10}],Tags:["map_importer","disable_throw","bed_marker"]}
give @s husk_spawn_egg{display:{Name:'{"text":"玩家出生点标记","color":"yellow","italic":false}',Lore:['{"text":"放下后将对应点位设定为玩家出生点。使用/trigger mi_kill来击杀附近3格内的出生点标记，如果觉得放置*所有*资源点已完成可执行 /trigger mi_input ...","italic":false,"color":"yellow"}']},EntityTag:{id:"marker",Tags:["player_spawnpoint"]},Enchantments:[{id:"unbreaking",lvl:10}],Tags:["map_importer","disable_throw","spawnpoint"]}

give @s red_wool{display:{Lore:['{"text":"羊毛放在副手，道具放在主手。","italic":false,"color":"yellow"}']},Tags:["disable_throw"]}
give @s blue_wool{display:{Lore:['{"text":"羊毛放在副手，道具放在主手。","italic":false,"color":"yellow"}']},Tags:["disable_throw"]}
give @s green_wool{display:{Lore:['{"text":"羊毛放在副手，道具放在主手。","italic":false,"color":"yellow"}']},Tags:["disable_throw"]}
give @s yellow_wool{display:{Lore:['{"text":"羊毛放在副手，道具放在主手。","italic":false,"color":"yellow"}']},Tags:["disable_throw"]}

tellraw @s ""
tellraw @s {"text": ">> 步骤3_2：队伍必要位置设定","bold": true,"color": "aqua"}
tellraw @s "每个队伍应该有床和出生点的位置"
tellraw @s "为了做区分，请将代表队伍颜色的羊毛放在副手"
tellraw @s "诺想放置对应标记，在合适的位置放置刷怪蛋"
tellraw @s "放下的标记将持续发出粒子效果..."
tellraw @s "如果放错了位置再放一个覆盖到原先的就可以啦"
tellraw @s ["如果搞砸了则",{"text": "点击我","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger mi_kill"}},"就可以清除副手对应颜色的队伍设定..."]
tellraw @s ""
tellraw @s [{"text": "☞ 执行 ","bold": false,"color": "aqua"},{"text": "/function debug:map_import/step_switch/410","bold": false,"underlined": true,"clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/410"}},{"text": " 来继续...","bold": false}]
tellraw @s ""