# 玩家击杀事件

# 添加标识性标签（用于玩家死亡的显示凶手）
tag @s add killer

# 连杀
scoreboard players add @s kill_combo 1
scoreboard players operation @s round_combo > @s kill_combo
execute as @s[team=red] run scoreboard players add $red_kill team 1
execute as @s[team=yellow] run scoreboard players add $yellow_kill team 1
execute as @s[team=blue] run scoreboard players add $blue_kill team 1
execute as @s[team=green] run scoreboard players add $green_kill team 1

## 获得连杀奖励
execute unless score @s kill_combo matches 15.. run summon item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b}}
execute store result entity @e[limit=1,sort=nearest,type=item,nbt={Item:{id:"minecraft:iron_ingot"}}] Item.Count double 1 run scoreboard players get @s kill_combo

execute if score @s kill_combo matches 2.. run give @s gold_ingot 1
execute if score @s kill_combo matches 3.. run give @s gold_ingot 1
execute if score @s kill_combo matches 15.. run give @s gold_ingot 2


# 更新表现分数
scoreboard players add @s round_score 4

# 刷人头
tellraw @s[scores={kill_same=10..}] ["",{"text":"\n ⚠  玩家恶意行为警告","color":"aqua"},"\n",{"text": "     系统检测到有明显的恶意行为。","color": "gray"},"\n\n",{"text": "      ☀ BedWars 基本原则 >>\n"},{"text": "         我们旨在打造一个良好的 PVP 环境"},"\n\n",{"text": "      ☁ 行为处罚 >>\n"},{"text": "         根据情节恶劣程度，自动处以表现分处罚。"},"\n"]

scoreboard players remove @s[scores={kill_same=12..}] round_score 4
scoreboard players remove @s[scores={kill_same=15..}] round_score 8
scoreboard players remove @s[scores={kill_same=18..}] round_score 10
scoreboard players remove @s[scores={kill_same=20..}] round_score 12
scoreboard players remove @s[scores={kill_same=22..}] round_score 36

execute if score @s kill_same matches 24.. run function bw:game/player_event/kick

# 随机事件
execute if score $working mutation matches -1 run function bw:game/mutation/-1/dead/kill

# （地图接口）玩家击杀
setblock -4 50 -32 minecraft:redstone_block