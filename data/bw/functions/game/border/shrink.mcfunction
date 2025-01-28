tellraw @a {"storage":"bw:lang","nbt":"game.border.shrink","interpret": true}
execute as @a[tag=!afk] at @s run function lib:sounds/dragon_growl

# 设定为收缩态
scoreboard players set $shrinking border 1