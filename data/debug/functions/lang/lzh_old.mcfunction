# 文言文（lzh）语言载入
tellraw @a [{"text": "[语言] 吏调戏之言至："},{"text":"文言（lzh）","bold": true}]

# 前缀
data modify storage bw:lang prefix.success set value "[]"
data modify storage bw:lang prefix.warn set value "[]"
data modify storage bw:lang prefix.error set value "[✘]"

# 系統
data modify storage bw:lang sys set value '"系统"'

# Lobby
## 欢迎信息
data remove storage bw:lang lobby.welcome
data modify storage bw:lang lobby.welcome append value "迎至塌之伐伺服器！"
data modify storage bw:lang lobby.welcome append value "毀塌、斬敵、鼓號...."
data modify storage bw:lang lobby.welcome append value "（運維，洞之隙以報之）"

## 路标
data modify storage bw:lang lobby.signpost.return set value "歸巢"
data modify storage bw:lang lobby.signpost.play set value "共戲"
data modify storage bw:lang lobby.signpost.stats set value "核載"
data modify storage bw:lang lobby.signpost.compass set value "冊導"

## 统计信息
data modify storage bw:lang lobby.stats.death set value "亡故"
data modify storage bw:lang lobby.stats.break_bed set value "極營"
data modify storage bw:lang lobby.stats.kill set value "斬首"
data modify storage bw:lang lobby.stats.score set value "周論"

## 规则牌
data modify storage bw:lang lobby.gamerule.sign set value ["戯之章","右鍵以更改"]

data modify storage bw:lang lobby.gamerule.change set value '{"text": "戯章 更哉 >> "}'


data modify storage bw:lang lobby.gamerule.shop_type.name set value "店品"
data modify storage bw:lang lobby.gamerule.shop_type.0 set value "匣貿"
data modify storage bw:lang lobby.gamerule.shop_type.1 set value "簽製"
data modify storage bw:lang lobby.gamerule.shop_type.2 set value "市易"

data modify storage bw:lang lobby.gamerule.border.name set value "域制"
data modify storage bw:lang lobby.gamerule.border.1 set value "弗狹"
data modify storage bw:lang lobby.gamerule.border.2 set value "行狹"

data modify storage bw:lang lobby.gamerule.daylight_cycle.name set value "晨夕之易"
data modify storage bw:lang lobby.gamerule.daylight_cycle.1 set value "行"
data modify storage bw:lang lobby.gamerule.daylight_cycle.2 set value "弗"

data modify storage bw:lang lobby.gamerule.team_number.name set value "矩陣"
data modify storage bw:lang lobby.gamerule.team_number.2 set value "誰與爭鋒"
data modify storage bw:lang lobby.gamerule.team_number.3 set value "三足鼎立"
data modify storage bw:lang lobby.gamerule.team_number.4 set value "逐鹿中原"

data modify storage bw:lang lobby.gamerule.void_damage.name set value "墮源之傷"
data modify storage bw:lang lobby.gamerule.void_damage.0 set value "弗易"
data modify storage bw:lang lobby.gamerule.void_damage.1 set value "增损"
data modify storage bw:lang lobby.gamerule.void_damage.2 set value "立絕"

## 地图
### 地图选择器
data modify storage bw:lang lobby.map.choice.next set value "繼跡"
data modify storage bw:lang lobby.map.choice.prev set value "前跡"
data modify storage bw:lang lobby.map.choice.now set value '[{"text":"現跡：","bold": false},{"entity":"@e[type=marker,tag=map_name]","nbt":"text"}]'

data modify storage bw:lang lobby.map.choice.unlock set value '{"text":"開竅"}'

data modify storage bw:lang lobby.map.choice.error.no_found_map_name set value "名爲"

data modify storage bw:lang lobby.map.choice.random_map set value '"天跡"'

data modify storage bw:lang lobby.map.choice.change set value '["",{"text": "戯之跡 迭之 >> ","color": "aqua"},{"selector":"@e[tag=map_name,type=marker]","nbt":"text","bold": true}]'

### 地图拷贝
data modify storage bw:lang lobby.map.clone.bossbar set value '[{"text": "謄寫戲跡..."}]'

## 投票
data modify storage bw:lang lobby.vote.trigger.display set value '[{"text": ">>","bold": true},{"text":" 行擇 ","bold": false},{"text":"<<","bold": true}]'
data modify storage bw:lang lobby.vote.trigger.error.player_number set value '["",{"text": "[✘] ","color": "red","bold": true}, {"text": "數不足，故罷之！","color": "red"}]'
data modify storage bw:lang lobby.vote.trigger.error.force_start set value '[{"text": "[✖] ","color": "red","bold": true},{"text": "吏身臨，故弗得擇！","bold": false}]'
data modify storage bw:lang lobby.vote.trigger.error.maintenance set value '[{"text": "[✖] ","color": "red","bold": true},{"text": "現行糾，故弗得擇！","bold": false}]'
data modify storage bw:lang lobby.vote.trigger.error.lock set value '[{"text": "[✖] ","color": "red","bold": true},{"text": "未知域，複再探。","bold": false}]'

data modify storage bw:lang lobby.vote.start.bossbar set value "擇迫"
data modify storage bw:lang lobby.vote.start.click_text set value '["",{"text": "[⚠] ","color": "yellow","bold": true}, {"text": "余行擇以決 （若屢次核之誤以示，則可以身赴台）","color": "yellow"},{"text": "[✔]","color": "green","clickEvent": {"action": "run_command","value": "/trigger vote set 1"},"hoverEvent": {"action": "show_text","contents": {"text": "絕之","color": "green"}}}," ",{"text": "[✘]","color": "red","clickEvent": {"action": "run_command","value": "/trigger vote set 2"},"hoverEvent": {"action": "show_text","contents": {"text": "逆之","color": "red"}}}]'
data modify storage bw:lang lobby.vote.start.platform.agree set value '[{"text":"赴于此以決之","bold": false,"color":"green"}]'
data modify storage bw:lang lobby.vote.start.platform.disagree set value '[{"text":"赴于次以逆之","bold": false,"color":"red"}]'
data modify storage bw:lang lobby.vote.start.display set value '[{"text":"擇以進","color":"aqua"}]'

data modify storage bw:lang lobby.vote.main.platform.agree set value '[{"text": "擇已決之 ✔","bold": true,"color": "green"}]'
data modify storage bw:lang lobby.vote.main.platform.disagree set value '[{"text": "擇以逆之 ✘","bold": true,"color": "red"}]'
data modify storage bw:lang lobby.vote.main.display set value '[{"text":"澤以進（","color":"aqua"},{"text":"✔","color":"green"},{"score":{"objective": "vote","name":"#agree"}},{"text":" ✘","color":"red"},{"score":{"objective": "vote","name":"#opposition"}},{"text":"）","color":"aqua"}]'

data modify storage bw:lang lobby.vote.cancel set value '["",{"text": "[✘] ","color": "red","bold": true}, {"text": "衆擇熄！","color": "red"}]'

data modify storage bw:lang lobby.vote.end.error.tie_vote set value '["",{"text": "[✘] ","color": "red","bold": true}, {"text": "衆擇平之！","color": "red"}]'
data modify storage bw:lang lobby.vote.end.error.overrule set value '["",{"text": "[✘] ","color": "red","bold": true}, {"text": "衆擇逆之！","color": "red"}]'
data modify storage bw:lang lobby.vote.end.error.player_number set value '["",{"text": "[✘] ","color": "red","bold": true}, {"text": "因衆散而擇熄！","color": "red"}]'
data modify storage bw:lang lobby.vote.end.success set value '["",{"text": "[✔] ","color": "green","bold": true}, {"text": "衆擇順也！衆戯將啓...","color": "green"}]'

data modify storage bw:lang lobby.vote.setup.display set value '[{"text":"衆擇以載之","color":"aqua"}]'
data modify storage bw:lang lobby.vote.setup.notice set value '["",{"text": "[✌] ","color": "aqua","bold": true}, {"selector":"@s","color": "aqua"}, {"text": " 啓 ","color": "aqua"},{"selector":"@e[tag=map_name,type=marker]","bold": true},{"text": " 戲跡衆擇！","color": "aqua"}]'

## 版本检查
data modify storage bw:lang lobby.version.upgrade set value '[{"text": "[⚠] ","color": "yellow","bold": true},{"text": "因生界迭之，吏需皆重载...","bold": false},{"text": "\\n  > 吏可覆此以重载。","underlined": true,"clickEvent": {"action": "run_command","value": "/function debug:init"}}]'
data modify storage bw:lang lobby.version.downgrade set value '[{"text": "[⚠] ","color": "yellow","bold": true},{"text": "生界退也，或至误呼...","bold": false}]'

# 全局
## 初始化
data modify storage bw:lang global.init set value '["",{"text": "[❈] ","color": "aqua","bold": true}, {"text": "吏復啓戯之！","color": "aqua"}]'

## 维护
data modify storage bw:lang global.maintenance.title set value '" ☄  现于服内之行纠"'
data modify storage bw:lang global.maintenance.subtitle set value '"戏之章易误，乞诸戏者加意于此。"'
data modify storage bw:lang global.maintenance.subtitle2.content set value '"      ✎ 正行公 >>"'
data modify storage bw:lang global.maintenance.subtitle2.killer set value '"       ⋇ 已为系统所断："'
data modify storage bw:lang global.maintenance.content.auto_ending set value '"             自讫 -- 戏于宜境不自终。"'
data modify storage bw:lang global.maintenance.content.player_vote set value '"             际擇 -- 启戏权移于吏。"'
data modify storage bw:lang global.maintenance.content.environment_check set value '"             自省 -- 启戏不省其身。"'


# 游戏
## 环境检测
data modify storage bw:lang game.env_check.fail.-10 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "环境检测失败，管理员介入（ERROR CODE -10）。游戏启动已中断！稍后载入大厅模块...","bold": false}]'
data modify storage bw:lang game.env_check.fail.10 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "环境检测失败，没有检测到任何资源点（ERROR CODE 10）。游戏启动已中断！稍后载入大厅模块...","bold": false}]'
data modify storage bw:lang game.env_check.fail.20 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "环境检测失败，边界实体丢失（ERROR CODE 20）。游戏启动已中断！稍后载入大厅模块...","bold": false}]'
data modify storage bw:lang game.env_check.fail.30 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "环境检测失败，没有检测到任何队伍床实体（ERROR CODE 30）。游戏启动已中断！稍后载入大厅模块...","bold": false}]'
data modify storage bw:lang game.env_check.fail.31 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "环境检测失败，床实体过多（ERROR CODE 30）。游戏启动已中断！稍后载入大厅模块...","bold": false}]'
data modify storage bw:lang game.env_check.fail.40 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "环境检测失败，没有任何预选或者游玩中玩家（ERROR CODE 40）。游戏启动已中断！稍后载入大厅模块...","bold": false}]'
data modify storage bw:lang game.env_check.fail.51 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "环境检测失败，黄队缺少出生点实体（ERROR CODE 51）。游戏启动已中断！稍后载入大厅模块...","bold": false}]'
data modify storage bw:lang game.env_check.fail.52 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "环境检测失败，红队缺少出生点实体（ERROR CODE 52）。游戏启动已中断！稍后载入大厅模块...","bold": false}]'
data modify storage bw:lang game.env_check.fail.53 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "环境检测失败，绿队缺少出生点实体（ERROR CODE 53）。游戏启动已中断！稍后载入大厅模块...","bold": false}]'
data modify storage bw:lang game.env_check.fail.54 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "环境检测失败，蓝队缺少出生点实体（ERROR CODE 54）。游戏启动已中断！稍后载入大厅模块...","bold": false}]'
data modify storage bw:lang game.env_check.fail.55 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "环境检测失败，出生点实体过多（ERROR CODE 55）。游戏启动已中断！稍后载入大厅模块...","bold": false}]'
data modify storage bw:lang game.env_check.fail.60 set value '[{"text": "[✖] ","bold": true,"color": "red"},{"text": "环境检测失败，指令区域加载失败（ERROR CODE 60）。游戏启动已中断！稍后载入大厅模块...","bold": false}]'

## 床与队伍
### 破坏提示
data modify storage bw:lang game.bed.break.red set value '[{"text": "[⛏] ","bold": true,"color": "aqua"},{"selector":"@s","bold": false},{"text": " 坏红床！","bold": false}]'
data modify storage bw:lang game.bed.break.yellow set value '[{"text": "[⛏] ","bold": true,"color": "aqua"},{"selector":"@s","bold": false},{"text": " 坏黄床！","bold": false}]'
data modify storage bw:lang game.bed.break.blue set value '[{"text": "[⛏] ","bold": true,"color": "aqua"},{"selector":"@s","bold": false},{"text": " 坏蓝床！","bold": false}]'
data modify storage bw:lang game.bed.break.green set value '[{"text": "[⛏] ","bold": true,"color": "aqua"},{"selector":"@s","bold": false},{"text": " 坏绿床！","bold": false}]'

data modify storage bw:lang game.bed.break.self set value '[{"text": "[⛏] ","bold": true,"color": "yellow"},{"selector":"@s","bold": false},{"text": " 坏汝床也，不能重生。","bold": false}]'
data modify storage bw:lang game.bed.break.fail set value '[{"text": "[⚠] ","bold": true,"color": "red"},{"text": "汝不能损其床！","bold": false}]'

### 破坏特效
data modify storage bw:lang game.bed.effect.1 set value '{text:"{"text":""汝以何年能眠得？!}",billboard:"vertical",Tags:["bed"]}'

## 时间事件
data modify storage bw:lang game.timing.bed_break set value '[{"text": "[⌚] ","color": "aqua","bold": true},{"text": "距床毁 ","bold": false},{"score":{"objective": "timing","name": "$notice"},"bold": false},{"text": " 秒","bold": false}]'
data modify storage bw:lang game.timing.border_shrink set value '[{"text": "[⌚] ","color": "aqua","bold": true},{"text": "距域制行狹 ","bold": false},{"score":{"objective": "timing","name": "$notice"},"bold": false},{"text": " 秒","bold": false}]'

data modify storage bw:lang game.event.update_1 set value '"资源点升级Ⅰ"'
data modify storage bw:lang game.event.update_2 set value '"资源点升级Ⅱ"'
data modify storage bw:lang game.event.update_3 set value '"资源点升级Ⅲ"'
data modify storage bw:lang game.event.bed_break set value '"众床自毁"'
data modify storage bw:lang game.event.border_shrink set value '"域制行狹"'
data modify storage bw:lang game.event.game_end set value '"戏自"'

data modify storage bw:lang game.event.bossbar.normal set value '["游戏倒计时 | 下一个事件：",{"nbt":"timing.next_event.name","storage": "bw:basic","interpret":"true"}]'
data modify storage bw:lang game.event.bossbar.mutation set value '["随机天气：",{"nbt":"mutation.name","storage": "bw:basic"}," | 下一个事件：",{"nbt":"timing.next_event.name","storage": "bw:basic","interpret":"true"}]'

## 重生
data modify storage bw:lang game.respawn.start.title set value '[{"score":{"objective": "respawn_time","name": "@s"}}]'
data modify storage bw:lang game.respawn.start.subtitle set value '[{"text": "凶手："},{"selector":"@a[tag=killer]"}]'

data modify storage bw:lang game.respawn.respawning.title set value '[{"score":{"objective": "respawn_time","name": "@s"}}]'
data modify storage bw:lang game.respawn.respawning.subtitle set value '["复活中..."]'

## 资源点
data modify storage bw:lang game.resource.max set value '[{"text":"资源点已满！","colour":"yellow","blod":"true"}]'
data modify storage bw:lang game.resource.countdown set value '[{"text":"还有 "},{"score":{"name": "@e[tag=res,limit=1,sort=nearest,type=minecraft:armor_stand]","objective": "res_cd"}},{"text":" 秒产出"}]'

## afk
data modify storage bw:lang game.afk_leave.other set value '[{"text": "[⏳] ","bold": true,"color": "yellow"},{"selector":"@s","bold": false},{"text": " 因为长时间挂机而离开了！","color": "yellow","bold": false}]'
data modify storage bw:lang game.afk_leave.own set value '[{"text": "[⏳] ","bold": true,"color": "yellow"},{"text": "检测到你长时间处于挂机状态，已经自动离开游戏！","color": "yellow","bold": false}]'

## 边界
data modify storage bw:lang game.border.warn set value '{"text": "⚠ 谨慎边界威胁","color": "gold","bold": true}'
data modify storage bw:lang game.border.shrink set value '[{"text": "[⌚] ","bold": true,"color": "aqua"},{"text": "边界开始收缩！","bold": false}]'

## 玩家事件
data modify storage bw:lang game.welcome set value '["\\n",{"text": ">> 起床战争 >>","color": "aqua","bold": true},"\\n ","收集物品并且 ",{"text": "合成为新物品","color": "aqua"},"\\n ",{"text": "破坏","color": "red"},"对方的家，",{"text": "保护","color": "green"},"自己的床","\\n"]'

data modify storage bw:lang game.team_join.red set value '[{"text": "[★] ","color": "aqua","bold": true},{"text": "您已自动加入 ","bold": false},{"text": "红队","color": "white"}]'
data modify storage bw:lang game.team_join.blue set value '[{"text": "[★] ","color": "aqua","bold": true},{"text": "您已自动加入 ","bold": false},{"text": "蓝队","color": "white"}]'
data modify storage bw:lang game.team_join.yellow set value '[{"text": "[★] ","color": "aqua","bold": true},{"text": "您已自动加入 ","bold": false},{"text": "黄队","color": "white"}]'
data modify storage bw:lang game.team_join.green set value '[{"text": "[★] ","color": "aqua","bold": true},{"text": "您已自动加入 ","bold": false},{"text": "绿队","color": "white"}]'
data modify storage bw:lang game.team_join.spec set value '[{"text": "[✖] ","color": "yellow","bold": true},{"text": "没有找到可用队伍，进入旁观状态！ ","bold": false}]'

## 特殊物品
### 回城卷轴
data modify storage bw:lang game.special_item.return_scroll.cancel set value '["回城进度：",{"score":{"name": "@s","objective": "return_scroll_progress"}},"%"]'
data modify storage bw:lang game.special_item.return_scroll.progress set value '["回城进度：",{"score":{"name": "@s","objective": "return_scroll_progress"}},"%"]]'
data modify storage bw:lang game.special_item.return_scroll.return.title set value '"已返回"'
data modify storage bw:lang game.special_item.return_scroll.return.subtitle set value '""'

## 人数限制
data modify storage bw:lang game.player_count_limit.notice set value '["",{"text": "[⚠] ","color": "yellow","bold": true}, {"text": "人数已经超过最大人数限制！将随机挑选几个幸运玩家踢出游戏...","color": "yellow"}]'
data modify storage bw:lang game.player_count_limit.drop set value '["",{"text": ">> ","color": "red","bold": true}, {"text": "很遗憾...你被抛弃了！","color": "red"}]'

## 游戏结束
### 排名
data modify storage bw:lang game.end.settlement.title set value '["",{"text":"\\n------  全场游戏结束！ ------\\n","color":"light_purple","bold":true}]'
data modify storage bw:lang game.end.settlement.rank1 set value '["  ",{"text": "第一名 >  ","color":"red"},{"selector": "@a[tag=total_rank1]","color":"red"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank1]","objective": "round_score"},"color":"gray"},{"text":")","color":"gray"}]'
data modify storage bw:lang game.end.settlement.rank2 set value '["  ",{"text": "第二名 >  ","color":"gold"},{"selector": "@a[tag=total_rank2]","color":"gold"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank2]","objective": "round_score"},"color":"gray"},{"text":")","color":"gray"}]'
data modify storage bw:lang game.end.settlement.rank3 set value '["  ",{"text": "第三名 >  ","color":"yellow"},{"selector": "@a[tag=total_rank3]","color":"yellow"},{"text":" (","color":"gray"},{"score":{"name": "@p[tag=total_rank3]","objective": "round_score"},"color":"gray"},{"text":")","color":"gray"}]'
data modify storage bw:lang game.end.settlement.kill.nope set value '[" ",{"text": "本局击杀...你小子§6没有击杀§f！（是在偷懒吧？awa"}]'
data modify storage bw:lang game.end.settlement.kill.count set value '[" ",{"text": "本局击杀了 §6"},{"score":{"objective": "round_kill","name": "@s"}}," 只玩家§f！"]'
data modify storage bw:lang game.end.settlement.death set value '[" ",{"text": "本局死亡 §6"},{"score":{"objective": "round_death","name": "@s"}}," 次§f！"]'
data modify storage bw:lang game.end.settlement.KD set value '[" ",{"text": "本局 K/D*1k："},{"score":{"objective": "temp","name": "@s"}},{"text": " | 表现分 "},{"score":{"objective": "round_score","name": "@s"}},{"text": "（本局平均分：","color": "gray"},{"score":{"name": "$average_score","objective": "temp"},"color": "gray"},{"text": "）","color": "gray"}]'
data modify storage bw:lang game.end.settlement.win.own set value '[" ",{"text": "本场比赛你们获得了§6胜利§f，再接再厉！"}]'
data modify storage bw:lang game.end.settlement.win.lose set value '[" ",{"text": "本场比赛虽然失败，但是§6不要气馁，下次比赛结果会更好§f！"}]'
data modify storage bw:lang game.end.settlement.win.nope set value '[" ",{"text": "本局比赛§6没有赢家§f！"}]'

## 随机事件
data modify storage bw:lang game.mutation.1.name set value '"内忧外患"'
data modify storage bw:lang game.mutation.1.disc set value '"背叛还是团结，你可以破坏自家床的..."'

data modify storage bw:lang game.mutation.2.name set value '"弃床战争"'
data modify storage bw:lang game.mutation.2.disc set value '"是大地的不公还是运气的不好，你将不再拥有床..."'

data modify storage bw:lang game.mutation.3.name set value '"无法自疗"'
data modify storage bw:lang game.mutation.3.disc set value '"自然回血的停用，伤口止不住的流血... 小心，伙计！"'

data modify storage bw:lang game.mutation.4.name set value '"追踪火球"'
data modify storage bw:lang game.mutation.4.disc set value '"背叛还是团结，你可以破坏自家床的..."'

data modify storage bw:lang game.mutation.5.name set value '"两极反转"'
data modify storage bw:lang game.mutation.5.disc set value '"击杀冷却正在消失，准备回溯到低版本的 PVP 方式了吗？"'

data modify storage bw:lang game.mutation.6.name set value '"爆炸箭矢"'
data modify storage bw:lang game.mutation.6.disc set value '"哭声，喊声，爆炸声！落地的箭矢将会爆炸..."'

data modify storage bw:lang game.mutation.7.name set value '"鸡尾酒"'
data modify storage bw:lang game.mutation.7.disc set value '"来品尝狂乱的鸡尾酒吧！（每 10 秒获得随机药水效果）"'

## 大厅保护
data modify storage bw:lang game.lobby_protect.title set value '[{"text": "大厅保护警告","bold": true,"color": "yellow"}]'
data modify storage bw:lang game.lobby_protect.subtitle set value '{"text": "⚠ 继续向上将予以死亡 ⚠","color": "yellow"}'

## 其余
data modify storage bw:lang game.start set value '["",{"text": "[⏻] ","color": "aqua","bold": true}, {"text": "游戏开始！","color": "aqua"}]'

# 调试
###########################
###                     ###
###     COMING SOON     ###
###                     ###
###########################

# 重置
function bw:lobby/lang
