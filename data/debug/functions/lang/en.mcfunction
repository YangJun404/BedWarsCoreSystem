# 英语（en）语言载入
tellraw @a [{"text": "[Lang] The admin has changed the game's language to "},{"text":"Chinglish (eng)","bold": true}]

# 前缀
data modify storage bw:lang prefix.success set value "[]"
data modify storage bw:lang prefix.warn set value "[]"
data modify storage bw:lang prefix.error set value "[✘]"

# 系统
data modify storage bw:lang sys set value '"System"'

# Lobby
## 欢迎信息
data remove storage bw:lang lobby.welcome
data modify storage bw:lang lobby.welcome append value "Welcome Back To BedWars Server!"
data modify storage bw:lang lobby.welcome append value "Kill, Break and Win!"
data modify storage bw:lang lobby.welcome append value "(You can report bugs to admins)"

## 路标
data modify storage bw:lang lobby.signpost.return set value "Main Island"
data modify storage bw:lang lobby.signpost.play set value "Start Game"
data modify storage bw:lang lobby.signpost.compass set value "Guide"
data modify storage bw:lang lobby.signpost.stats set value "Stats"

## 统计信息
data modify storage bw:lang lobby.stats.death set value "Death"
data modify storage bw:lang lobby.stats.break_bed set value "Bed Broken"
data modify storage bw:lang lobby.stats.kill set value "Kill"
data modify storage bw:lang lobby.stats.score set value "Player Score"

## 规则牌
data modify storage bw:lang lobby.gamerule.sign set value ["Game Settings","R click to change"]

data modify storage bw:lang lobby.gamerule.change set value '{"text": "Game Setting was Changed >> "}'


data modify storage bw:lang lobby.gamerule.shop_type.name set value "Shop Type"
data modify storage bw:lang lobby.gamerule.shop_type.0 set value "Chest"
data modify storage bw:lang lobby.gamerule.shop_type.1 set value "Create"
data modify storage bw:lang lobby.gamerule.shop_type.2 set value "Village"

data modify storage bw:lang lobby.gamerule.border.name set value "Boread"
data modify storage bw:lang lobby.gamerule.border.1 set value "Non-action"
data modify storage bw:lang lobby.gamerule.border.2 set value "Auto"

data modify storage bw:lang lobby.gamerule.daylight_cycle.name set value "Daylight Cycle"
data modify storage bw:lang lobby.gamerule.daylight_cycle.1 set value "On"
data modify storage bw:lang lobby.gamerule.daylight_cycle.2 set value "Off"

data modify storage bw:lang lobby.gamerule.team_number.name set value "Team Number"
data modify storage bw:lang lobby.gamerule.team_number.2 set value "two"
data modify storage bw:lang lobby.gamerule.team_number.3 set value "three"
data modify storage bw:lang lobby.gamerule.team_number.4 set value "four"

data modify storage bw:lang lobby.gamerule.void_damage.name set value "Void Damage"
data modify storage bw:lang lobby.gamerule.void_damage.0 set value "Vanilla"
data modify storage bw:lang lobby.gamerule.void_damage.1 set value "Increased damage"
data modify storage bw:lang lobby.gamerule.void_damage.2 set value "Kill instantly"

## 地图
### 地图投票
data modify storage bw:lang lobby.map.choice.next set value "Press"
data modify storage bw:lang lobby.map.choice.prev set value "Last"
data modify storage bw:lang lobby.map.choice.now set value '[{"text":"Map: ","bold": false},{"entity":"@e[type=text_display,tag=map_name]","nbt":"text","interpret":"true"}]'

data modify storage bw:lang lobby.map.choice.unlock set value '{"text":"Lock Map"}'

data modify storage bw:lang lobby.map.choice.error.no_found_map_name set value "NameERROR"

data modify storage bw:lang lobby.map.choice.random_map set value '"Random"'

data modify storage bw:lang lobby.map.choice.change set value '["",{"text": "Map Changed >> ","color": "aqua"},{"interpret": true,"entity":"@e[limit=1,type=minecraft:text_display,tag=map_name]","nbt":"text","bold": true}]'

### 地图拷贝
data modify storage bw:lang lobby.map.clone.bossbar set value '[{"text": "Copying..."}]'

## 投票
data modify storage bw:lang lobby.vote.trigger.display set value '[{"text": ">>","bold": true},{"text":" Start ","bold": false},{"text":"<<","bold": true}]'
data modify storage bw:lang lobby.vote.trigger.error.player_number set value '["",{"text": "[✘] ","color": "red","bold": true}, {"text": "Can not setup vote beacuse do not have enough players.","color": "red"}]'
data modify storage bw:lang lobby.vote.trigger.error.force_start set value '[{"text": "[✖] ","color": "red","bold": true},{"text": "Admin is starting the game, you can not setup vote.","bold": false}]'
data modify storage bw:lang lobby.vote.trigger.error.maintenance set value '[{"text": "[✖] ","color": "red","bold": true},{"text": "Do not have enough permissions, ask the admin if you have ang questions","bold": false}]'
data modify storage bw:lang lobby.vote.trigger.error.lock set value '[{"text": "[✖] ","color": "red","bold": true},{"text": "The areas is unlocking","bold": false}]'

data modify storage bw:lang lobby.vote.start.bossbar set value "Vote Countdown"
data modify storage bw:lang lobby.vote.start.click_text set value '["",{"text": "[⚠] ","color": "yellow","bold": true}, {"text": "Please vote on whether to use this map! ","color": "yellow"},{"text": "[✔]","color": "green","clickEvent": {"action": "run_command","value": "/trigger vote set 1"},"hoverEvent": {"action": "show_text","contents": {"text": "Agree to use the map","color": "green"}}}," ",{"text": "[✘]","color": "red","clickEvent": {"action": "run_command","value": "/trigger vote set 2"},"hoverEvent": {"action": "show_text","contents": {"text": "Refuse to use the map","color": "red"}}}]'
data modify storage bw:lang lobby.vote.start.platform.agree set value '[{"text":"Stand here and vote AGREE!","bold": false,"color":"green"}]'
data modify storage bw:lang lobby.vote.start.platform.disagree set value '[{"text":"Stand here and vote REFUSE!","bold": false,"color":"red"}]'
data modify storage bw:lang lobby.vote.start.display set value '[{"text":"Voting","color":"aqua"}]'

data modify storage bw:lang lobby.vote.main.platform.agree set value '[{"text": "Agree ✔","bold": true,"color": "green"}]'
data modify storage bw:lang lobby.vote.main.platform.disagree set value '[{"text": "Refuse ✘","bold": true,"color": "red"}]'
data modify storage bw:lang lobby.vote.main.display set value '[{"text":"Voting (","color":"aqua"},{"text":"✔","color":"green"},{"score":{"objective": "vote","name":"#agree"}},{"text":" ✘","color":"red"},{"score":{"objective": "vote","name":"#opposition"}},{"text":") ","color":"aqua"}]'

data modify storage bw:lang lobby.vote.cancel set value '["",{"text": "[✘] ","color": "red","bold": true}, {"text": "The vote has cancelled!","color": "red"}]'

data modify storage bw:lang lobby.vote.end.error.tie_vote set value ''
data modify storage bw:lang lobby.vote.end.error.overrule set value '["",{"text": "[✘] ","color": "red","bold": true}, {"text": "No one wanted to play the map!","color": "red"}]'
data modify storage bw:lang lobby.vote.end.error.player_number set value '["",{"text": "[✘] ","color": "red","bold": true}, {"text": "Can not start the game beacuse do not have enough players!","color": "red"}]'
data modify storage bw:lang lobby.vote.end.success set value '["",{"text": "[✔] ","color": "green","bold": true}, {"text": "Voting passed! The game is about to begin...","color": "green"}]'

data modify storage bw:lang lobby.vote.setup.display set value '[{"text":"Setting Vote","color":"aqua"}]'
data modify storage bw:lang lobby.vote.setup.notice set value '["",{"text": "[✌] ","color": "aqua","bold": true}, {"selector":"@s","color": "aqua"}, {"text": " initiated a vote on ","color": "aqua"},{"interpret": true,"entity":"@e[limit=1,type=minecraft:text_display,tag=map_name]","nbt":"text","bold": true}]'

## 版本检查
data modify storage bw:lang lobby.version.upgrade set value '[{"text": "[⚠] ","color": "yellow","bold": true},{"text": "We found a new version, admins can click ","bold": false},{"text": "\\n  > HERE","underlined": true,"clickEvent": {"action": "run_command","value": "/function debug:init"}},{"text":" to init the datapack"}]'
data modify storage bw:lang lobby.version.downgrade set value '[{"text": "[⚠] ","color": "yellow","bold": true},{"text": "Datapack degradation was detected, which may cause potential problems","bold": false}]'

# 全局
## 初始化
data modify storage bw:lang global.init set value '["",{"text": "[❈] ","color": "aqua","bold": true}, {"text": "The administrator has initialized the datapack globally!","color": "aqua"}]'

## 维护
data modify storage bw:lang global.maintenance.title set value '" ☄  Server-wide maintenance is ongoing"'
data modify storage bw:lang global.maintenance.subtitle set value '"Some gameplay content and game rules may become invalid, and the gaming experience may be lost."'
data modify storage bw:lang global.maintenance.subtitle2.content set value '"      ✎ Ongoing maintenance items >>"'
data modify storage bw:lang global.maintenance.subtitle2.killer set value '"       ⋇ The following content has been blocked:"'
data modify storage bw:lang global.maintenance.content.auto_ending set value '"             Auto Ending -- No longer ends itself under the right conditions."'
data modify storage bw:lang global.maintenance.content.player_vote set value '"             Map Vote -- The right to launch the game is handed over to the server administrator."'
data modify storage bw:lang global.maintenance.content.environment_check set value '"             Env Check -- No longer checks for datapack environment when launching."'


# 游戏
## 环境检测
data modify storage bw:lang game.env_check.fail.-10 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "Environment detection failed. Administrator intervention (ERROR CODE -10) 。Game launch interrupted! Loading lobby module later...","bold": false}]'
data modify storage bw:lang game.env_check.fail.10 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "Environment detection failed. No resource points were detected (ERROR CODE 10) 。Game launch interrupted! Loading lobby module later...","bold": false}]'
data modify storage bw:lang game.env_check.fail.20 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "Environment detection failed. Boundary entities are missing (ERROR CODE 20) 。Game launch interrupted! Loading lobby module later...","bold": false}]'
data modify storage bw:lang game.env_check.fail.30 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "Environment detection failed. No team bed entities detected (ERROR CODE 30) 。Game launch interrupted! Loading lobby module later...","bold": false}]'
data modify storage bw:lang game.env_check.fail.31 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "Environment detection failed. Too many bed entities (ERROR CODE 30) 。Game launch interrupted! Loading lobby module later...","bold": false}]'
data modify storage bw:lang game.env_check.fail.40 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "Environment detection failed. No pre-selected or active players (ERROR CODE 40) 。Game launch interrupted! Loading lobby module later...","bold": false}]'
data modify storage bw:lang game.env_check.fail.51 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "Environment detection failed. Yellow team is missing spawn entity (ERROR CODE 51) 。Game launch interrupted! Loading lobby module later...","bold": false}]'
data modify storage bw:lang game.env_check.fail.52 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "Environment detection failed. Red team is missing spawn entity (ERROR CODE 52) 。Game launch interrupted! Loading lobby module later...","bold": false}]'
data modify storage bw:lang game.env_check.fail.53 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "Environment detection failed. Green team is missing spawn entity (ERROR CODE 53) 。Game launch interrupted! Loading lobby module later...","bold": false}]'
data modify storage bw:lang game.env_check.fail.54 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "Environment detection failed. Blue team is missing spawn entity (ERROR CODE 54) 。Game launch interrupted! Loading lobby module later...","bold": false}]'
data modify storage bw:lang game.env_check.fail.55 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "Environment detection failed. Too many spawn entities (ERROR CODE 55) 。Game launch interrupted! Loading lobby module later...","bold": false}]'
data modify storage bw:lang game.env_check.fail.60 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "Environment detection failed. Failed to load command area (ERROR CODE 60) 。Game launch interrupted! Loading lobby module later...","bold": false}]'

## 床与队伍
### 破坏提示
data modify storage bw:lang game.bed.break.red set value '[{"text": "[⛏] destroyed the Red bed!","bold": true,"color": "aqua"},{"selector":"@s","bold": false},{"text": " ","bold": false}]'
data modify storage bw:lang game.bed.break.yellow set value '[{"text": "[⛏] ","bold": true,"color": "aqua"},{"selector":"@s","bold": false},{"text": " destroyed the Yellow bed!","bold": false}]'
data modify storage bw:lang game.bed.break.blue set value '[{"text": "[⛏] ","bold": true,"color": "aqua"},{"selector":"@s","bold": false},{"text": " destroyed the Blue bed!","bold": false}]'
data modify storage bw:lang game.bed.break.green set value '[{"text": "[⛏] ","bold": true,"color": "aqua"},{"selector":"@s","bold": false},{"text": " destroyed the Green bed!","bold": false}]'

data modify storage bw:lang game.bed.break.self set value '[{"text": "[⛏] destroy your bed and you will never be able to respawn!","bold": true,"color": "yellow"},{"selector":"@s","bold": false},{"text": " ","bold": false}]'
data modify storage bw:lang game.bed.break.fail set value '[{"text": "[⚠] ","bold": true,"color": "red"},{"text": "You can not destroy your own bed!","bold": false}]'

### 破坏特效
data modify storage bw:lang game.bed.effect.1 set value '{text:"{"text":"Good job!"}",billboard:"vertical",Tags:["bed"]}'

## 时间事件
data modify storage bw:lang game.timing.bed_break set value '[{"text": "[⌚] ",{"score":{"objective": "timing","name": "$notice"},"bold": false},{"text": " seconds left before the Bed Self-destructs","bold": false}]'
data modify storage bw:lang game.timing.border_shrink set value '[{"text": "[⌚] ",{"score":{"objective": "timing","name": "$notice"},"bold": false},{"text": " seconds left before the Boundary Shrinks","bold": false}]'

data modify storage bw:lang game.event.update_1 set value '"Resource Point Upgrade Ⅰ"'
data modify storage bw:lang game.event.update_2 set value '"Resource Point Upgrade Ⅱ"'
data modify storage bw:lang game.event.update_3 set value '"Resource Point Upgrade Ⅲ"'
data modify storage bw:lang game.event.bed_break set value '"Bed Self-destructs"'
data modify storage bw:lang game.event.border_shrink set value '"Boundary Shrinks"'
data modify storage bw:lang game.event.game_end set value '"Game Ending"'

data modify storage bw:lang game.event.bossbar.normal set value '["Countdown | Next Event: ",{"nbt":"timing.next_event.name","storage": "bw:basic","interpret":"true"}]'
data modify storage bw:lang game.event.bossbar.mutation set value '["Magic WeatherL ",{"nbt":"mutation.name","storage": "bw:basic"}," | Next Event: ",{"nbt":"timing.next_event.name","storage": "bw:basic","interpret":"true"}]'

## 重生
### 死亡
data modify storage bw:lang game.respawn.out.title set value '""'
data modify storage bw:lang game.respawn.out.subtitle set value '"Have a good sleep..."'

### 重生
data modify storage bw:lang game.respawn.start.title set value '[{"score":{"objective": "respawn_time","name": "@s"}}]'
data modify storage bw:lang game.respawn.start.subtitle set value '[{"text": "Killer: "},{"selector":"@a[tag=killer]"}]'

data modify storage bw:lang game.respawn.respawning.title set value '[{"score":{"objective": "respawn_time","name": "@s"}}]'
data modify storage bw:lang game.respawn.respawning.subtitle set value '["Respawning..."]'

## 资源点
data modify storage bw:lang game.resource.max set value '[{"text":"Resource point is FULL!","colour":"yellow","blod":"true"}]'
data modify storage bw:lang game.resource.countdown set value '[{"score":{"name": "@e[tag=res,limit=1,sort=nearest,type=minecraft:armor_stand]","objective": "res_cd"}},{"text":" s left to produce"}]'

## afk
data modify storage bw:lang game.afk_leave.other set value '[{"text": "[⏳] ","bold": true,"color": "yellow"},{"selector":"@s","bold": false},{"text": " was kicked because of afking for too long!","color": "yellow","bold": false}]'
data modify storage bw:lang game.afk_leave.own set value '[{"text": "[⏳] ","bold": true,"color": "yellow"},{"text": "It was detected that you have been afked for a long time and have automatically left the game!","color": "yellow","bold": false}]'

## 边界
data modify storage bw:lang game.border.warn set value '{"text": "⚠ Cautious Border Threats","color": "gold","bold": true}'
data modify storage bw:lang game.border.shrink set value '[{"text": "[⌚] ","bold": true,"color": "aqua"},{"text": "Borders are shrinking!","bold": false}]'

## 玩家事件
data modify storage bw:lang game.welcome set value '["\\n",{"text": ">> BedWars >>","color": "aqua","bold": true},"\\n ","Collect items and ",{"text": "Craft","color": "aqua"},"\\n ",{"text": "Break","color": "red"}," Beds",{"text": "\\n Protect","color": "green"}," Yourself","\\n"]'

data modify storage bw:lang game.team_join.red set value '[{"text": "[★] ","color": "aqua","bold": true},{"text": "Joined the ","bold": false},{"text": "Red Team","color": "white"}]'
data modify storage bw:lang game.team_join.blue set value '[{"text": "[★] ","color": "aqua","bold": true},{"text": "Joined the ","bold": false},{"text": "Blue Team","color": "white"}]'
data modify storage bw:lang game.team_join.yellow set value '[{"text": "[★] ","color": "aqua","bold": true},{"text": "Joined the ","bold": false},{"text": "Yellow Team","color": "white"}]'
data modify storage bw:lang game.team_join.green set value '[{"text": "[★] ","color": "aqua","bold": true},{"text": "Joined the ","bold": false},{"text": "Green Team","color": "white"}]'
data modify storage bw:lang game.team_join.spec set value '[{"text": "[✖] ","color": "yellow","bold": true},{"text": "No available team found, entering spectator mode! ","bold": false}]'

## 特殊物品
### 回城卷轴
data modify storage bw:lang game.special_item.return_scroll.cancel set value '["Return Cancelled"]'
data modify storage bw:lang game.special_item.return_scroll.progress set value '["Return Progress: ",{"score":{"name": "@s","objective": "return_scroll_progress"}},"%"]]'
data modify storage bw:lang game.special_item.return_scroll.return.title set value '"Returned"'
data modify storage bw:lang game.special_item.return_scroll.return.subtitle set value '""'

## 人数限制
data modify storage bw:lang game.player_count_limit.notice set value '["",{"text": "[⚠] ","color": "yellow","bold": true}, {"text": "The number of players has exceeded the maximum number of players! A few lucky players will be randomly selected and kicked out of the game...","color": "yellow"}]'
data modify storage bw:lang game.player_count_limit.drop set value '["",{"text": ">> ","color": "red","bold": true}, {"text": "Sorry...you have been abandoned!","color": "red"}]'

## 游戏结束
### 排名
data modify storage bw:lang game.end.settlement.title set value '["",{"text":"\\n------  Good Game!  ------\\n","color":"light_purple","bold":true}]'
data modify storage bw:lang game.end.settlement.rank1 set value '["  ",{"text": "1st >  ","color":"red"},{"selector": "@a[tag=total_rank1]","color":"red"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank1]","objective": "round_score"},"color":"gray"},{"text":")","color":"gray"}]'
data modify storage bw:lang game.end.settlement.rank2 set value '["  ",{"text": "2nd >  ","color":"gold"},{"selector": "@a[tag=total_rank2]","color":"gold"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank2]","objective": "round_score"},"color":"gray"},{"text":")","color":"gray"}]'
data modify storage bw:lang game.end.settlement.rank3 set value '["  ",{"text": "3nd >  ","color":"yellow"},{"selector": "@a[tag=total_rank3]","color":"yellow"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank3]","objective": "round_score"},"color":"gray"},{"text":")","color":"gray"}]'
data modify storage bw:lang game.end.settlement.kill.nope set value '[" ",{"text": "§fYou did not kll anyone! (How KIND you are"}]'
data modify storage bw:lang game.end.settlement.kill.count set value '[" ",{"text": "Killed §6"},{"score":{"objective": "round_kill","name": "@s"}}," players§f!"]'
data modify storage bw:lang game.end.settlement.death set value '[" ",{"text": "Died §6"},{"score":{"objective": "round_death","name": "@s"}}," times this round§f！"]'
data modify storage bw:lang game.end.settlement.KD set value '[" ",{"text": "K/D*1k: "},{"score":{"objective": "temp","name": "@s"}},{"text": " | Player Score "},{"score":{"objective": "round_score","name": "@s"}},{"text": " (Average score of this game:","color": "gray"},{"score":{"name": "$average_score","objective": "temp"},"color": "gray"},{"text": " )","color": "gray"}]'
data modify storage bw:lang game.end.settlement.win.own set value '[" ",{"text": "You have won §6the victory§f in this game. Keep up the good work!"}]'
data modify storage bw:lang game.end.settlement.win.lose set value '[" ",{"text": "Although we lost this game, §6do not be discouraged, the result will be better next time§f!"}]'
data modify storage bw:lang game.end.settlement.win.nope set value '[" ",{"text": "§6There is no winner in this game§f!"}]'

## 随机事件
data modify storage bw:lang game.mutation.1.name set value '"Internal and external troubles"'
data modify storage bw:lang game.mutation.1.disc set value '"Betrayal or solidarity, you can destroy your own bed..."'

data modify storage bw:lang game.mutation.2.name set value '"Sky Wars"'
data modify storage bw:lang game.mutation.2.disc set value '"Is it the injustice of the earth or bad luck that you will no longer have a bed..."'

data modify storage bw:lang game.mutation.3.name set value '"Unable to self-heal"'
data modify storage bw:lang game.mutation.3.disc set value '"The wound can not stop bleeding... Be careful, man!"'

data modify storage bw:lang game.mutation.4.name set value '"Tracking Fireball"'
data modify storage bw:lang game.mutation.4.disc set value '"Be careful, there is a fireball coming from behind!"'

data modify storage bw:lang game.mutation.5.name set value '"1.8 PVP"'
data modify storage bw:lang game.mutation.5.disc set value '"Kill cooldowns are disappearing, are you ready to go back to the 1.8 PVP methods?"'

data modify storage bw:lang game.mutation.6.name set value '"Explosive Arrow"'
data modify storage bw:lang game.mutation.6.disc set value '"Cries, shouts, explosions! Arrows that land will explode..."'

data modify storage bw:lang game.mutation.7.name set value '"Cocktail"'
data modify storage bw:lang game.mutation.7.disc set value '"Come enjoy wild cocktails! (Gain a random potion effect every 10 seconds)"'

## 大厅保护
data modify storage bw:lang game.lobby_protect.title set value '[{"text": "Lobby Protection Warning","bold": true,"color": "yellow"}]'
data modify storage bw:lang game.lobby_protect.subtitle set value '{"text": "⚠ Continuing upward will result in death ⚠","color": "yellow"}'

## 其余
data modify storage bw:lang game.start set value '["",{"text": "[⏻] ","color": "aqua","bold": true}, {"text": "The game begins!","color": "aqua"}]'

# 调试
###########################
###                     ###
###     COMING SOON     ###
###                     ###
###########################

# 重置
function bw:lobby/lang