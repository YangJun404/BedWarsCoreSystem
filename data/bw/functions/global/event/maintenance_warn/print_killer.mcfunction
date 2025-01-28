tellraw @s {"storage":"bw:lang","nbt":"global.maintenance.subtitle2.killer","interpret": true}
execute if score $disable_auto_ending maintenance matches 1 run tellraw @s {"storage":"bw:lang","nbt":"global.maintenance.content.auto_ending","interpret": true}
execute if score $disable_player_vote maintenance matches 1 run tellraw @s {"storage":"bw:lang","nbt":"global.maintenance.content.player_vote","interpret": true}
execute if score $disable_environment_check maintenance matches 1 run tellraw @s {"storage":"bw:lang","nbt":"global.maintenance.content.environment_check","interpret": true}
tellraw @s ""
