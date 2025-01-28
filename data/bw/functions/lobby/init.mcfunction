# 大厅初始化

# 更新常驻实体位置
tp @e[tag=map,type=marker] 0 0 0
tp @e[tag=shop,type=marker] 0 0 0

# 游戏规则
gamerule commandModificationBlockLimit 9834110

# 计分板
# scoreboard objectives remove stat_kill
scoreboard objectives add stat_kill dummy "击杀统计"

# scoreboard objectives remove stat_death
scoreboard objectives add stat_death dummy "死亡统计"

# scoreboard objectives remove stat_score
scoreboard objectives add stat_score dummy "表现分统计"

# scoreboard objectives remove stat_bed_break
scoreboard objectives add stat_bed_break dummy "破床统计"

scoreboard objectives remove vote
scoreboard objectives add vote trigger "投票" 

scoreboard objectives remove command_area
scoreboard objectives add command_area trigger "指令区域" 

# 队伍
team remove lobby
team add lobby "大厅"
team modify lobby collisionRule never
team modify lobby color aqua 
team modify lobby friendlyFire false
team modify lobby seeFriendlyInvisibles false

team remove stat_score
team add stat_score "表现分统计"
team modify stat_score friendlyFire false
team modify stat_score color dark_aqua

team remove stat_bed_break
team add stat_bed_break
team modify stat_bed_break friendlyFire false
team modify stat_bed_break color dark_purple

team remove stat_kill
team add stat_kill
team modify stat_kill friendlyFire false
team modify stat_kill color dark_green

team remove stat_death
team add stat_death
team modify stat_death friendlyFire false
team modify stat_death color dark_red

# Boss 栏
bossbar remove lobby
bossbar add lobby "大厅"

# 大厅区域重置
# setblock 12 48 12 minecraft:structure_block[mode=load]{mode:"LOAD",name:"lobby:1",posX:-48,posY:1,posZ:-48,sizeX:48,sizeY:10,sizeZ:48}
# setblock 13 48 12 minecraft:structure_block[mode=load]{mode:"LOAD",name:"lobby:2",posX:-1,posY:1,posZ:-48,sizeX:25,sizeY:10,sizeZ:48}
# setblock 13 48 13 minecraft:structure_block[mode=load]{mode:"LOAD",name:"lobby:3",posX:-1,posY:1,posZ:-1,sizeX:25,sizeY:10,sizeZ:26}
# setblock 12 48 13 minecraft:structure_block[mode=load]{mode:"LOAD",name:"lobby:4",posX:-48,posY:1,posZ:-1,sizeX:48,sizeY:10,sizeZ:26}
# fill 12 49 12 13 49 13 redstone_block
# fill 12 48 12 13 48 13 air