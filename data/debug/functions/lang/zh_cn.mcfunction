# 简体中文（zh_CN）语言载入
tellraw @a [{"text": "[语言] 管理员已经调整游戏语言至："},{"text":"简体中文（zh_cn）","bold": true}]

###
### 有关 译名：
### 开发的过程中直接写 json 文本，这样减少开发难度
### 译名化在国际发布前完成，平日不动。
###

# 前缀
data modify storage bw:lang prefix.success set value "[]"
data modify storage bw:lang prefix.warn set value "[]"
data modify storage bw:lang prefix.error set value "[✘]"

# 系统
data modify storage bw:lang sys set value '"系统"'

# Lobby
## 欢迎信息
data remove storage bw:lang lobby.welcome
data modify storage bw:lang lobby.welcome append value "欢迎来到 BedWars 服务器！"
data modify storage bw:lang lobby.welcome append value "在这里击败敌人、破坏敌床、获得胜利！"
data modify storage bw:lang lobby.welcome append value "（公开测试中，请积极举报漏洞至服务器管理员）"

## 路标
data modify storage bw:lang lobby.signpost.return set value "返回平台"
data modify storage bw:lang lobby.signpost.play set value "开始游戏"
data modify storage bw:lang lobby.signpost.compass set value "图鉴与指南"
data modify storage bw:lang lobby.signpost.stats set value "统计数据"

## 统计信息
data modify storage bw:lang lobby.stats.death set value "死亡"
data modify storage bw:lang lobby.stats.break_bed set value "破床"
data modify storage bw:lang lobby.stats.kill set value "杀敌"
data modify storage bw:lang lobby.stats.score set value "表现分"

## 规则牌
data modify storage bw:lang lobby.gamerule.sign set value ["游戏规则","右键来更改"]

data modify storage bw:lang lobby.gamerule.change set value '{"text": "游戏规则 更改 >> "}'


data modify storage bw:lang lobby.gamerule.shop_type.name set value "商店类型"
data modify storage bw:lang lobby.gamerule.shop_type.0 set value "箱子商店"
data modify storage bw:lang lobby.gamerule.shop_type.1 set value "配方制作"
data modify storage bw:lang lobby.gamerule.shop_type.2 set value "村民交易"

data modify storage bw:lang lobby.gamerule.border.name set value "边界收缩"
data modify storage bw:lang lobby.gamerule.border.1 set value "不会缩圈"
data modify storage bw:lang lobby.gamerule.border.2 set value "自动缩圈"

data modify storage bw:lang lobby.gamerule.daylight_cycle.name set value "昼夜循环"
data modify storage bw:lang lobby.gamerule.daylight_cycle.1 set value "启用"
data modify storage bw:lang lobby.gamerule.daylight_cycle.2 set value "关闭"

data modify storage bw:lang lobby.gamerule.team_number.name set value "队伍数量"
data modify storage bw:lang lobby.gamerule.team_number.2 set value "2个队伍"
data modify storage bw:lang lobby.gamerule.team_number.3 set value "3个队伍"
data modify storage bw:lang lobby.gamerule.team_number.4 set value "4个队伍"

data modify storage bw:lang lobby.gamerule.void_damage.name set value "虚空伤害"
data modify storage bw:lang lobby.gamerule.void_damage.0 set value "原版伤害"
data modify storage bw:lang lobby.gamerule.void_damage.1 set value "增加伤害"
data modify storage bw:lang lobby.gamerule.void_damage.2 set value "立即击杀"

## 地图
### 地图投票
data modify storage bw:lang lobby.map.choice.next set value "后一张地图"
data modify storage bw:lang lobby.map.choice.prev set value "前一张地图"
data modify storage bw:lang lobby.map.choice.now set value '[{"text":"当前地图：","bold": false},{"entity":"@e[type=text_display,tag=map_name]","nbt":"text","interpret":"true"}]'

data modify storage bw:lang lobby.map.choice.unlock set value '{"text":"试图解锁"}'

data modify storage bw:lang lobby.map.choice.error.no_found_map_name set value "名称载入错误"

data modify storage bw:lang lobby.map.choice.random_map set value '"随机地图"'

data modify storage bw:lang lobby.map.choice.change set value '["",{"text": "游戏地图 更改 >> ","color": "aqua"},{"interpret": true,"entity":"@e[limit=1,type=minecraft:text_display,tag=map_name]","nbt":"text","bold": true}]'

### 地图拷贝
data modify storage bw:lang lobby.map.clone.bossbar set value '[{"text": "拷贝中..."}]'

## 投票
data modify storage bw:lang lobby.vote.trigger.display set value '[{"text": ">>","bold": true},{"text":" 开始投票 ","bold": false},{"text":"<<","bold": true}]'
data modify storage bw:lang lobby.vote.trigger.error.player_number set value '["",{"text": "[✘] ","color": "red","bold": true}, {"text": "没有足够的玩家，因此无法发起投票！","color": "red"}]'
data modify storage bw:lang lobby.vote.trigger.error.force_start set value '[{"text": "[✖] ","color": "red","bold": true},{"text": "管理员正在强开游戏，因此无法发起投票！","bold": false}]'
data modify storage bw:lang lobby.vote.trigger.error.maintenance set value '[{"text": "[✖] ","color": "red","bold": true},{"text": "服务器正在例行维护，因此无法发起投票！","bold": false}]'
data modify storage bw:lang lobby.vote.trigger.error.lock set value '[{"text": "[✖] ","color": "red","bold": true},{"text": "前面的区域，以后再来探索吧~","bold": false}]'

data modify storage bw:lang lobby.vote.start.bossbar set value "投票倒计时"
data modify storage bw:lang lobby.vote.start.click_text set value '["",{"text": "[⚠] ","color": "yellow","bold": true}, {"text": "请投票表决是否使用此地图！ （如果重复出现聊天验证失败的问题，请尝试使用投票平台代替此点击操作）","color": "yellow"},{"text": "[✔]","color": "green","clickEvent": {"action": "run_command","value": "/trigger vote set 1"},"hoverEvent": {"action": "show_text","contents": {"text": "同意选择该地图","color": "green"}}}," ",{"text": "[✘]","color": "red","clickEvent": {"action": "run_command","value": "/trigger vote set 2"},"hoverEvent": {"action": "show_text","contents": {"text": "否定选择该地图","color": "red"}}}]'
data modify storage bw:lang lobby.vote.start.platform.agree set value '[{"text":"站在这边同意投票！","bold": false,"color":"green"}]'
data modify storage bw:lang lobby.vote.start.platform.disagree set value '[{"text":"站在这边拒绝投票！","bold": false,"color":"red"}]'
data modify storage bw:lang lobby.vote.start.display set value '[{"text":"投票进行中","color":"aqua"}]'

data modify storage bw:lang lobby.vote.main.platform.agree set value '[{"text": "投票已赞同 ✔","bold": true,"color": "green"}]'
data modify storage bw:lang lobby.vote.main.platform.disagree set value '[{"text": "投票已否决 ✘","bold": true,"color": "red"}]'
data modify storage bw:lang lobby.vote.main.display set value '[{"text":"投票中（","color":"aqua"},{"text":"✔","color":"green"},{"score":{"objective": "vote","name":"#agree"}},{"text":" ✘","color":"red"},{"score":{"objective": "vote","name":"#opposition"}},{"text":"）","color":"aqua"}]'

data modify storage bw:lang lobby.vote.cancel set value '["",{"text": "[✘] ","color": "red","bold": true}, {"text": "投票已取消！","color": "red"}]'

data modify storage bw:lang lobby.vote.end.error.tie_vote set value ''
data modify storage bw:lang lobby.vote.end.error.overrule set value '["",{"text": "[✘] ","color": "red","bold": true}, {"text": "投票否决！","color": "red"}]'
data modify storage bw:lang lobby.vote.end.error.player_number set value '["",{"text": "[✘] ","color": "red","bold": true}, {"text": "衆擇熄！","color": "red"}]'
data modify storage bw:lang lobby.vote.end.success set value '["",{"text": "[✔] ","color": "green","bold": true}, {"text": "投票通过！游戏即将开始...","color": "green"}]'

data modify storage bw:lang lobby.vote.setup.display set value '[{"text":"投票载入中","color":"aqua"}]'
data modify storage bw:lang lobby.vote.setup.notice set value '["",{"text": "[✌] ","color": "aqua","bold": true}, {"selector":"@s","color": "aqua"}, {"text": " 发起了 ","color": "aqua"},{"interpret": true,"entity":"@e[limit=1,type=minecraft:text_display,tag=map_name]","nbt":"text","bold": true},{"text": " 地图投票！","color": "aqua"}]'

## 版本检查
data modify storage bw:lang lobby.version.upgrade set value '[{"text": "[⚠] ","color": "yellow","bold": true},{"text": "检测到新数据包版本，请由游戏管理员开展全局初始化...","bold": false},{"text": "\\n  > 点击此处手动载入数据包全局初始化程序","underlined": true,"clickEvent": {"action": "run_command","value": "/function debug:init"}}]'
data modify storage bw:lang lobby.version.downgrade set value '[{"text": "[⚠] ","color": "yellow","bold": true},{"text": "检测到数据包降级操作，这样可能会有概率出现数据残留或者运行错误...","bold": false}]'

# 全局
## 初始化
data modify storage bw:lang global.init set value '["",{"text": "[❈] ","color": "aqua","bold": true}, {"text": "管理员已进行服务器范围内的全局初始化！","color": "aqua"}]'

## 维护
data modify storage bw:lang global.maintenance.title set value '" ☄  正在进行服务器范围内的维护"'
data modify storage bw:lang global.maintenance.subtitle set value '"部分玩法内容、游戏规则可能失效，游戏体验可能缺失。"'
data modify storage bw:lang global.maintenance.subtitle2.content set value '"      ✎ 正在进行的维护项 >>"'
data modify storage bw:lang global.maintenance.subtitle2.killer set value '"       ⋇ 以下内容已被系统阻断："'
data modify storage bw:lang global.maintenance.content.auto_ending set value '"             自动结束 -- 游戏在合适条件下不再自我结束。"'
data modify storage bw:lang global.maintenance.content.player_vote set value '"             地图投票 -- 游戏启动权移交给服务器管理员。"'
data modify storage bw:lang global.maintenance.content.environment_check set value '"             环境检测 -- 游戏启动时不再检测数据包环境。"'


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
data modify storage bw:lang game.bed.break.red set value '[{"text": "[⛏] ","bold": true,"color": "aqua"},{"selector":"@s","bold": false},{"text": " 破坏了红队的床！","bold": false}]'
data modify storage bw:lang game.bed.break.yellow set value '[{"text": "[⛏] ","bold": true,"color": "aqua"},{"selector":"@s","bold": false},{"text": " 破坏了黄队的床！","bold": false}]'
data modify storage bw:lang game.bed.break.blue set value '[{"text": "[⛏] ","bold": true,"color": "aqua"},{"selector":"@s","bold": false},{"text": " 破坏了蓝队的床！","bold": false}]'
data modify storage bw:lang game.bed.break.green set value '[{"text": "[⛏] ","bold": true,"color": "aqua"},{"selector":"@s","bold": false},{"text": " 破坏了绿队的床！","bold": false}]'

data modify storage bw:lang game.bed.break.self set value '[{"text": "[⛏] ","bold": true,"color": "yellow"},{"selector":"@s","bold": false},{"text": " 破坏了你的床，你将再也无法重生！","bold": false}]'
data modify storage bw:lang game.bed.break.fail set value '[{"text": "[⚠] ","bold": true,"color": "red"},{"text": "你不能破坏自己的床！","bold": false}]'

### 破坏特效
data modify storage bw:lang game.bed.effect.1 set value '{text:"{"text":"你这个年纪是怎么睡得着觉的？！"}",billboard:"vertical",Tags:["bed"]}'

## 时间事件
data modify storage bw:lang game.timing.bed_break set value '[{"text": "[⌚] ","color": "aqua","bold": true},{"text": "距离床自毁还有 ","bold": false},{"score":{"objective": "timing","name": "$notice"},"bold": false},{"text": " 秒","bold": false}]'
data modify storage bw:lang game.timing.border_shrink set value '[{"text": "[⌚] ","color": "aqua","bold": true},{"text": "距离边界收缩还有 ","bold": false},{"score":{"objective": "timing","name": "$notice"},"bold": false},{"text": " 秒","bold": false}]'

data modify storage bw:lang game.event.update_1 set value '"资源点升级Ⅰ"'
data modify storage bw:lang game.event.update_2 set value '"资源点升级Ⅱ"'
data modify storage bw:lang game.event.update_3 set value '"资源点升级Ⅲ"'
data modify storage bw:lang game.event.bed_break set value '"众床自毁"'
data modify storage bw:lang game.event.border_shrink set value '"边界收缩"'
data modify storage bw:lang game.event.game_end set value '"游戏结束"'

data modify storage bw:lang game.event.bossbar.normal set value '["游戏倒计时 | 下一个事件：",{"nbt":"timing.next_event.name","storage": "bw:basic","interpret":"true"}]'
data modify storage bw:lang game.event.bossbar.mutation set value '["随机天气：",{"nbt":"mutation.name","storage": "bw:basic"}," | 下一个事件：",{"nbt":"timing.next_event.name","storage": "bw:basic","interpret":"true"}]'

## 重生
### 死亡
data modify storage bw:lang game.respawn.out.title set value '""'
data modify storage bw:lang game.respawn.out.subtitle set value '"由于床已被破坏 所以你无法重生!"'

### 重生
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
data modify storage bw:lang game.end.settlement.KD set value '[" ",{"text": "本局 K/D*1k："},{"score":{"objective": "round_kd","name": "@s"}},{"text": " | 表现分 "},{"score":{"objective": "round_score","name": "@s"}},{"text": "（本局平均分：","color": "gray"},{"score":{"name": "$average_score","objective": "temp"},"color": "gray"},{"text": "）","color": "gray"}]'
data modify storage bw:lang game.end.settlement.win.own set value '[" ",{"text": "本场比赛你们获得了§6胜利§f，再接再厉！"}]'
data modify storage bw:lang game.end.settlement.win.lose set value '[" ",{"text": "本场比赛虽然失败，但是§6不要气馁，下次比赛结果会更好§f！"}]'
data modify storage bw:lang game.end.settlement.win.nope set value '[" ",{"text": "本局比赛§6没有赢家§f！"}]'

## 随机事件
data modify storage bw:lang game.mutation.1.name set value '""内忧外患""'
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