# 地图导入程序 初始化

# 优先清除数据
function debug:map_import/reset

# 设定强加载区域
forceload add 85 85 -85 -85 

# 创造计分板
scoreboard objectives add mi_mem dummy "载入程序变量"
scoreboard players set #init mi_mem 1 

scoreboard objectives add mi_map dummy "编辑地图"

scoreboard objectives add mi_menu trigger "地图导入菜单触发器"
scoreboard objectives add mi_input trigger "程序交互接口触发器"
scoreboard objectives add mi_border trigger "最大边界设定触发器"
scoreboard objectives add mi_border_min trigger "最小边界设定触发器"
scoreboard objectives add mi_kill trigger "清除标记触发器"

# 挂载时钟
schedule function debug:map_import/tick2 2t replace

# 向全体玩家发送维护通知
tellraw @a [{"text": "[⚠] ","color": "yellow","bold": true},{"selector":"@s","bold": false},{"text": " 已载入地图导入程序，游玩体验可能会下降！","bold": false}]