team join blue @r[team=,tag=player]
team join green @r[team=,tag=player]
execute if score $team_number gamerule matches 3.. run team join red @r[team=,tag=player]
execute if score $team_number gamerule matches 4.. run team join yellow @r[team=,tag=player]

execute if entity @a[tag=player,team=] run function bw:game/system_init/team_join