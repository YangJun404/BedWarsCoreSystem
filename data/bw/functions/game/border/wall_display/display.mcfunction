# 中间
function bw:game/border/wall_display/display_practise

# 左侧
execute positioned ^1 ^ ^ run function bw:game/border/wall_display/display_practise
execute positioned ^2 ^ ^ run function bw:game/border/wall_display/display_practise

# 右侧
execute positioned ^-1 ^ ^ run function bw:game/border/wall_display/display_practise
execute positioned ^-2 ^ ^ run function bw:game/border/wall_display/display_practise

scoreboard players remove #drawdis border 1