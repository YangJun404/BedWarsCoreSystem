# 每 2 Tick 执行一次

# 防止想不开
execute as @a[x=-200,y=22,z=-200,dx=400,dy=26,dz=400,team=lobby,gamemode=adventure] unless entity @s[x=-11,y=44,z=49,dx=22,dy=23,dz=22] run effect give @s minecraft:levitation 1 1
execute as @a[x=-11,y=44,z=49,dx=22,dy=23,dz=22] run function bw:lobby/map/visit/trigger

# 道具调用
function bw:lobby/entertainment/tick2

# 地图切换
function bw:lobby/map/tick2

# 发起地图投票
execute positioned 0 50 36 if block ~ ~ ~ minecraft:polished_blackstone_button[face=floor,facing=north,powered=true] as @p run function bw:lobby/vote/trigger
setblock 0 50 36 minecraft:polished_blackstone_button[face=floor,facing=north,powered=false]

# # 检测盔甲架是否有传送到地图本体
# execute positioned 0 319 0 as @e[type=armor_stand,tag=forceloader,distance=100..] run function bw:lobby/map/init2

# 地图解锁
function bw:lobby/map/lock/tick2

# 统计信息
## 表现分
execute positioned 32 50 -6 as @a[team=lobby,distance=0..2] run team join stat_score @s
execute positioned 32 50 -6 as @a[team=stat_score,distance=2.1..] run team join lobby @s
## 破床
execute positioned 33 50 -2 as @a[team=lobby,distance=0..2] run team join stat_bed_break @s
execute positioned 33 50 -2 as @a[team=stat_bed_break,distance=2.1..] run team join lobby @s
## 击杀
execute positioned 33 50 2 as @a[team=lobby,distance=0..2] run team join stat_kill @s
execute positioned 33 50 2 as @a[team=stat_kill,distance=2.1..] run team join lobby @s
## 死亡
execute positioned 32 50 6 as @a[team=lobby,distance=0..2] run team join stat_death @s
execute positioned 32 50 6 as @a[team=stat_death,distance=2.1..] run team join lobby @s