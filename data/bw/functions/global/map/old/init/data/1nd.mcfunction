#> bw:lobby/map/init/data/1nd
# 地图初始化 #1

# # 检测指令区域是否可用
# scoreboard players reset $command_area_working temp
# scoreboard players set $command_area_checking temp 1
# # function bw:lobby/map/choice/clone_command_area

# # 清除游戏区域
# fill -149 -64 -149 149 43 149 air
# kill @e[type=item,tag=!bypass_kill]

# # 强加载区块设定
# forceload remove all
# forceload add 150 150 0 0
# forceload add 1 1 -150 -150

# # 同步地图选择
# scoreboard players operation $using map = $sel map

# # 随机地图
# execute if score $using map matches 0 run function bw:lobby/map/choice/random with storage bw:basic map

# 尝试寻找地图
#！ execute store result storage bw:map id int 1 run scoreboard players get $using map
#！ function bw:global/map/init/data/2nd with storage bw:map


# execute as @e[type=marker,tag=map] if score @s map = $using map run tag @s add map_selected

# data modify storage bw:map border set from entity @e[type=marker,tag=map_selected,limit=1] data.map.border
# data modify storage bw:map spawner set from entity @e[type=marker,tag=map_selected,limit=1] data.map.spawner
# data modify storage bw:map center set from entity @e[type=marker,tag=map_selected,limit=1] data.map.center
# data modify storage bw:map name set from entity @e[type=marker,tag=map_selected,limit=1] data.map.name
# data modify storage bw:map id set from entity @e[type=marker,tag=map_selected,limit=1] data.map.id
# data modify storage bw:map team set from entity @e[type=marker,tag=map_selected,limit=1] data.map.team

# # 设定相对加载区块
# ## 创造折跃门并且设定数据
# setblock 0 319 0 end_gateway{Age:201,ExactTeleport:true} 
# setblock 0 318 0 white_stained_glass
# data modify block 0 319 0 ExitPortal.X set from storage bw:map center[0]
# data modify block 0 319 0 ExitPortal.Y set value 47
# data modify block 0 319 0 ExitPortal.Z set from storage bw:map center[2]
# ## 召唤盔甲架
# summon armor_stand 0 319 0 {Tags:["forceloader"],NoGravity:true}