# 重置大厅展示实体

kill @e[tag=lobby_item]

# 公开测试中！
summon item 0.50 52.8 3.50 {Tags:["lobby_item","bypass_kill"],Age:-32768,PickupDelay:32767,NoGravity:1,Invulnerable:1,Motion:[0,0,0],Item:{id:"red_bed",Count:1}}
summon text_display 0.50 53.0 3.50 {Tags:["lobby_item","lobby_display_welcome_1"],Motion:[0,0,0],text:'{"storage":"bw:lang","nbt":"lobby.welcome[0]"}',alignment:"center",billboard:"vertical"}
tp @e[tag=lobby_display_welcome_1] 0.50 52.3 3.50 -180 0
summon text_display 0.50 52.0 3.50 {Tags:["lobby_item","lobby_display_welcome_2"],Motion:[0,0,0],text:'{"storage":"bw:lang","nbt":"lobby.welcome[1]"}',alignment:"center",billboard:"vertical"}
tp @e[tag=lobby_display_welcome_2] 0.50 52.0 3.50 -180 0
summon text_display 0.50 51.0 3.50 {Tags:["lobby_item","lobby_display_welcome_3"],Motion:[0,0,0],text:'{"storage":"bw:lang","nbt":"lobby.welcome[2]"}',alignment:"center",billboard:"vertical"}
tp @e[tag=lobby_display_welcome_3] 0.50 51.7 3.50 -180 0

# 开始游戏
summon item 0.50 51.4 14.50 {Tags:["lobby_item","bypass_kill"],Age:-32768,PickupDelay:32767,NoGravity:1,Invulnerable:1,Motion:[0,0,0],Item:{id:"iron_sword",Count:1}}
summon text_display 0.50 51.0 14.50 {Tags:["lobby_item","lobby_display_start"],Motion:[0,0,0],text:'{"storage":"bw:lang","nbt":"lobby.signpost.play"}',alignment:"center",background:1073742079}
tp @e[tag=lobby_display_start] 0.50 51.0 14.50 -180 0
summon text_display 0.50 51.0 14.50 {Tags:["lobby_item","lobby_display_start_back"],Motion:[0,0,0],text:'{"storage":"bw:lang","nbt":"lobby.signpost.return"}',alignment:"center",background:1073742079}
tp @e[tag=lobby_display_start_back] 0.50 51.0 14.50 0 0 

## 地图选择和投票面板
summon text_display 2.50 50.30 36.99 {Tags:["lobby_item","lobby_display_start_map_prev"],Motion:[0,0,0],text:'{"storage":"bw:lang","nbt":"lobby.map.choice.prev"}',alignment:"center",background:1073742079}
tp @e[tag=lobby_display_start_map_prev] 2.50 50.30 36.99 -180 0

summon text_display 0.5 50.5 36.99 {Tags:["lobby_item","lobby_display_start_vote"],Motion:[0,0,0],text:'{"storage":"bw:lang","nbt":"lobby.vote.trigger.display","interpret": true}',alignment:"center",background:1073742079}
tp @e[tag=lobby_display_start_vote] 0.5 50.5 36.99 -180 0

summon text_display 0.5 50.2 36.99 {Tags:["lobby_item","lobby_display_mini_map"],Motion:[0,0,0],text:'{"storage":"bw:lang","nbt":"lobby.map.choice.now","interpret": true}',alignment:"center",background:1073742079}
tp @e[type=text_display,tag=lobby_display_mini_map] 0.5 50.2 36.99 -180 0

summon text_display -1.50 50.30 36.99 {Tags:["lobby_item","lobby_display_start_map_next"],Motion:[0,0,0],text:'{"storage":"bw:lang","nbt":"lobby.map.choice.next"}',alignment:"center",background:1073742079}
tp @e[tag=lobby_display_start_map_next] -1.50 50.30 36.99 -180 0

# 统计信息
summon item 014.5 51.4 0.5 {Tags:["lobby_item","bypass_kill"],Age:-32768,PickupDelay:32767,NoGravity:1,Invulnerable:1,Motion:[0,0,0],Item:{id:"hopper_minecart",Count:1}}
summon text_display 14.5 51.0 0.5 {Tags:["lobby_item","lobby_display_stat"],Motion:[0,0,0],text:'{"storage":"bw:lang","nbt":"lobby.signpost.stats"}',alignment:"center",background:1090518784}
tp @e[tag=lobby_display_stat] 14.5 51.0 0.5 90 0
summon text_display 14.5 51.0 0.5 {Tags:["lobby_item","lobby_display_stat_back"],Motion:[0,0,0],text:'{"storage":"bw:lang","nbt":"lobby.signpost.return"}',alignment:"center",background:1090518784}
tp @e[tag=lobby_display_stat_back] 14.5 51.0 0.5 -90 0

## 表现分
summon item 32.5 52.4 -5.5 {Tags:["lobby_item","bypass_kill"],Age:-32768,PickupDelay:32767,NoGravity:1,Invulnerable:1,Motion:[0,0,0],Item:{id:"minecraft:iron_pickaxe",Count:1}}
summon text_display 32.5 52.0 -5.5 {Tags:["lobby_item","lobby_stat_score"],Motion:[0,0,0],text:'{"storage":"bw:lang","nbt":"lobby.stats.score"}',alignment:"center",background:1090518784,billboard:"vertical"}

## 破床
summon item 33.5 52.4 -1.5 {Tags:["lobby_item","bypass_kill"],Age:-32768,PickupDelay:32767,NoGravity:1,Invulnerable:1,Motion:[0,0,0],Item:{id:"minecraft:red_bed",Count:1}}
summon text_display 33.5 52.0 -1.5 {Tags:["lobby_item","lobby_stat_break_bed"],Motion:[0,0,0],text:'{"storage":"bw:lang","nbt":"lobby.stats.break_bed"}',alignment:"center",background:1090518784,billboard:"vertical"}

## 击杀
summon item 33.5 52.4 2.5 {Tags:["lobby_item","bypass_kill"],Age:-32768,PickupDelay:32767,NoGravity:1,Invulnerable:1,Motion:[0,0,0],Item:{id:"minecraft:iron_axe",Count:1}}
summon text_display 33.5 52.0 2.5 {Tags:["lobby_item","lobby_stat_kill"],Motion:[0,0,0],text:'{"storage":"bw:lang","nbt":"lobby.stats.kill"}',alignment:"center",background:1090518784,billboard:"vertical"}

## 死亡
summon item 32.5 52.4 6.5 {Tags:["lobby_item","bypass_kill"],Age:-32768,PickupDelay:32767,NoGravity:1,Invulnerable:1,Motion:[0,0,0],Item:{id:"minecraft:bedrock",Count:1}}
summon text_display 32.5 52.0 6.5 {Tags:["lobby_item","lobby_stat_death"],Motion:[0,0,0],text:'{"storage":"bw:lang","nbt":"lobby.stats.death"}',alignment:"center",background:1090518784,billboard:"vertical"}

# 图鉴与指南
summon item -13.5 51.4 0.5 {Tags:["lobby_item","bypass_kill"],Age:-32768,PickupDelay:32767,NoGravity:1,Invulnerable:1,Motion:[0,0,0],Item:{id:"book",Count:1}}
summon text_display -13.5 51.0 0.5 {Tags:["lobby_item","lobby_display_lib"],Motion:[0,0,0],text:'{"storage":"bw:lang","nbt":"lobby.signpost.compass"}',alignment:"center",background:1073807104}
tp @e[tag=lobby_display_lib] -13.5 51.0 0.5 -90 0
summon text_display -13.5 51.0 0.5 {Tags:["lobby_item","lobby_display_lib_back"],Motion:[0,0,0],text:'{"storage":"bw:lang","nbt":"lobby.signpost.return"}',alignment:"center",background:1073807104}
tp @e[tag=lobby_display_lib_back] -13.5 51.0 0.5 90 0