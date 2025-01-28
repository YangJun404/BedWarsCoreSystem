scoreboard players add @s compass_select 1

tag @a remove compass_allow
execute as @a[gamemode=!spectator,tag=playing] if score @s player_id = @p compass_select run tag @p add compass_allow
execute as @s[tag=!compass_allow] run function bw:game/special_items/recovery_compass/select_loop