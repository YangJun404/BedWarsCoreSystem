# 追溯指针-召唤盔甲架
summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Invulnerable:true,Marker:true,Tags:["recovery_compass"],Silent:true}
scoreboard players operation @e[type=minecraft:armor_stand,distance=..1,tag=recovery_compass,sort=nearest,limit=1] player_id = @s player_id