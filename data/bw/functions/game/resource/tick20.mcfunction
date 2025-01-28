# 每 20 Tick 执行一次 

# 检查已满
function bw:game/resource/check
execute if entity @s[tag=res_max] run data modify entity @s CustomName set value {"storage":"bw:lang","nbt":"game.resource.max","interpret": true}

# 倒计时
scoreboard players remove @s[scores={res_cd=1..},tag=!res_max] res_cd 1

# 生成
execute if entity @s[tag=!res_max,scores={res_cd=0}] run function bw:game/resource/summon/trigger

# 最后更新文本（不会出现0秒剩余）
execute if entity @s[tag=!res_max] run function bw:game/resource/countdown_display