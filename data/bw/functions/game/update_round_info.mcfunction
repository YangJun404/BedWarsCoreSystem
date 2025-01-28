# 更新本局信息（右侧计分板）

# 更新队伍信息
function bw:game/team_update

# 同步人数
scoreboard players reset * round_info

scoreboard players operation §cR round_info = $red_number team
scoreboard players operation §aG round_info = $green_number team
scoreboard players operation §eY round_info = $yellow_number team
scoreboard players operation §9B round_info = $blue_number team

# 添加后缀
execute if score $red_bed team matches 1 run team join round_info_active §cR
execute if score $green_bed team matches 1 run team join round_info_active §aG
execute if score $yellow_bed team matches 1 run team join round_info_active §eY
execute if score $blue_bed team matches 1 run team join round_info_active §9B

execute if score $red_bed team matches 2 run team join round_info_eliminate §cR
execute if score $green_bed team matches 2 run team join round_info_eliminate §aG
execute if score $yellow_bed team matches 2 run team join round_info_eliminate §eY
execute if score $blue_bed team matches 2 run team join round_info_eliminate §9B