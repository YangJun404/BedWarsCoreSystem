# 展示步骤

# 优先检测环境
execute store result score $module_check temp run scoreboard players get #init mi_mem

execute unless score $module_check temp matches 1 run tellraw @s [{"text": ">> ","color": "red","bold": true},{"text": "程序并没有加载！","bold": false}]
execute unless score $module_check temp matches 1 run function lib:sounds/error
execute unless score $module_check temp matches 1 run return 1

scoreboard players reset $module_check temp

# 移除遗留物品
clear @s anvil{Tags:["map_importer"]}
clear @s iron_nugget{Tags:["map_importer"]}
clear @s husk_spawn_egg{Tags:["map_importer"]}
clear @s zoglin_spawn_egg{Tags:["map_importer"]}
clear @s sheep_spawn_egg{Tags:["map_importer"]}
clear @s glow_squid_spawn_egg{Tags:["map_importer"]}
clear @s #wool

# 标题
tellraw @s "\n\n\n"
tellraw @s [{"text": ">> 地图自动导入程序 >>","color": "aqua","bold": true}]

# 目录
# 1_1：工具的使用
# 1_2：地图需求
# 1_3：选择实体
# 2：地图根本设定
# 2_1：特殊地图设定
# 2_2：地图编号设定
# 2_3：地图中文名称设定
# 2_4：地图中心点设定
# 2_5：地图边界设定
# 3：地图基本设定
# 3_1：资源点设定
# 3_2：队伍设定
# 4：微观模型设定
# 4_1：初始化微观模型
# 4_2：创造微观模型
# 4_3：微观模型确认
# 5_1：指令区域初始化
# 5_2：指令区域信息确认
# 6：信息确认
# tellraw @s ["   ",{"text": "0 - 取消","clickEvent": {"action": "run_command","value": "/function debug:importer/map/cancel"},"color": "aqua"}]
# tellraw @s ["   ",{"text": "1.1 - 工具使用方法","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/110"},"color": "aqua"}]
# tellraw @s ["   ",{"text": "1.2 - 地图导入需求","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/120"},"color": "aqua"}]
# tellraw @s ["   ",{"text": "1.3 - 实体选择操作","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/130"},"color": "aqua"}]
# tellraw @s ["   ",{"text": "2.1 - 特殊地图设定","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/210"},"color": "aqua"}]
# tellraw @s ["   ",{"text": "2.2 - 编号设定","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/220"},"color": "aqua"}]
# tellraw @s ["   ",{"text": "2.3 - 中文名称设定","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/230"},"color": "aqua"}]
# tellraw @s ["   ",{"text": "2.4 - 中心点设定","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/240"},"color": "aqua"}]
# tellraw @s ["   ",{"text": "2.5 - 边界系统设定","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/250"},"color": "aqua"}]
# tellraw @s ["   ",{"text": "3.1 - 资源点设定","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/310"},"color": "aqua"}]
# tellraw @s ["   ",{"text": "3.2 - 队伍设定","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/320"},"color": "aqua"}]
# tellraw @s ["   ",{"text": "4.1 - 微观模型初始化","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/410"},"color": "aqua"}]
# tellraw @s ["   ",{"text": "4.2 - 微观模型创造","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/420"},"color": "aqua"}]
# tellraw @s ["   ",{"text": "5.1 - 指令区域初始化","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/510"},"color": "aqua"}]
# tellraw @s ["   ",{"text": "5.2 - 指令区域信息确认","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/520"},"color": "aqua"}]
# tellraw @s ["   ",{"text": "6 - 信息确认","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/600"},"color": "aqua"}]

# tellraw @s "\n\n\n"

# tellraw @s ["   ",{"text": "0 - 取消","clickEvent": {"action": "run_command","value": "/function debug:importer/map/cancel"},"color": "aqua"},"   ","微观模型设定"]
tellraw @s ["   ",{"text": "一、工具使用须知","color": "aqua"},"            ",{"text": "四、微观模型设定","color": "aqua"}]
tellraw @s ["   ",{"text": "  1 - 工具使用方法","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/110"}},"        ",{"text": "   1 - 微观模型介绍","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/410"}}]
tellraw @s ["   ",{"text": "  2 - 地图导入需求","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/120"}},"        ",{"text": "   2 - 微观模型创造","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/420"}}]
tellraw @s ["   ",{"text": "  3 - 实体选择操作","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/130"}}]
tellraw @s ["   ",{"text": "二、根本信息设定","color": "aqua"},"            ",{"text": "五、指令区域设定","color": "aqua"}]
tellraw @s ["   ",{"text": "  1 - 特殊地图设定","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/210"}},"        ",{"text": "   1 - 指令区域介绍","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/510"}}]
tellraw @s ["   ",{"text": "  2 - 地图编号设定","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/220"}},"        ",{"text": "   2 - 区域信息确认","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/520"}}]
tellraw @s ["   ",{"text": "  3 - 中文名称设定","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/230"}}]
tellraw @s ["   ",{"text": "  4 - 中心点位设定","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/240"}}]
tellraw @s ["   ",{"text": "  5 - 边界系统设定","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/250"}}]
tellraw @s ["   ",{"text": "三、团队信息设定","color": "aqua"},"            ",{"text": "六、最终信息确认","color": "aqua"}]
tellraw @s ["   ",{"text": "  1 - 资源点位设定","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/310"}},"        ",{"text": "   1 - 最后信息确认","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/600"}}]
tellraw @s ["   ",{"text": "  2 - 队伍信息设定","clickEvent": {"action": "run_command","value": "/function debug:map_import/step_switch/320"}}]


# 当前内容指南
scoreboard players operation $step_show mi_mem = @s mi_mem

execute if score $step_show mi_mem matches 110 run function debug:map_import/step/1_1_how_to_use
execute if score $step_show mi_mem matches 120 run function debug:map_import/step/1_2_info
execute if score $step_show mi_mem matches 130 run function debug:map_import/step/1_3_select
execute if score $step_show mi_mem matches 210 run function debug:map_import/step/2_1_special_setting
execute if score $step_show mi_mem matches 220 run function debug:map_import/step/2_2_set_map_id
execute if score $step_show mi_mem matches 230 run function debug:map_import/step/2_3_set_name
execute if score $step_show mi_mem matches 240 run function debug:map_import/step/2_4_map_center
execute if score $step_show mi_mem matches 250 run function debug:map_import/step/2_5_border_settings
execute if score $step_show mi_mem matches 310 run function debug:map_import/step/3_1_spawner_place
execute if score $step_show mi_mem matches 320 run function debug:map_import/step/3_2_team_settings
execute if score $step_show mi_mem matches 410 run function debug:map_import/step/4_1_minimap_init
execute if score $step_show mi_mem matches 420 run function debug:map_import/step/4_2_minimap_creativing
execute if score $step_show mi_mem matches 510 run function debug:map_import/step/5_1_command_area_init
execute if score $step_show mi_mem matches 520 run function debug:map_import/step/5_2_command_area_confirm
execute if score $step_show mi_mem matches 600 run function debug:map_import/step/6_0_info_confirm

# 音效
execute at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 0.15 1