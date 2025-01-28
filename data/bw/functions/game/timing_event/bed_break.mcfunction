# 床自毁

# 破坏床
summon marker 0 0 0 {CustomName:'{"storage":"bw:lang","nbt":"sys","interpret": true}',Tags:["bed","temp"]}
execute if score $red_bed team matches 1 as @e[type=marker,tag=bed,tag=temp] run function bw:game/bed/team/red
execute if score $green_bed team matches 1 as @e[type=marker,tag=bed,tag=temp] run function bw:game/bed/team/green
execute if score $yellow_bed team matches 1 as @e[type=marker,tag=bed,tag=temp] run function bw:game/bed/team/yellow
execute if score $blue_bed team matches 1 as @e[type=marker,tag=bed,tag=temp] run function bw:game/bed/team/blue
kill @e[type=marker,tag=temp,tag=bed]

# 刷新 Bossbar 玩家
schedule function bw:game/bossbar_player 25t replace