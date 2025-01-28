# 床破坏触发器

# 找到一个合适的遍历项目（
execute as @s[scores={break_blue=1..}] run function bw:game/bed/team/blue
execute as @s[scores={break_red=1..}] run function bw:game/bed/team/red
execute as @s[scores={break_yellow=1..}] run function bw:game/bed/team/yellow
execute as @s[scores={break_green=1..}] run function bw:game/bed/team/green

# 更新表现分数和统计信息
scoreboard players add @s round_score 10
scoreboard players add @s round_bed_break 1

# 发送进度
advancement grant @s[advancements={bw:new_story/first/bed_break=false}] only bw:new_story/first/bed_break