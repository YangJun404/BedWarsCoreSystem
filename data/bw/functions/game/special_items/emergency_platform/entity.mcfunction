scoreboard players operation @s temp2 = @s temp
scoreboard players operation @s temp2 /= $20 const
execute at @s positioned ~ ~2 ~ run title @a[distance=..2.5] actionbar [{"text":"剩余时间："},{"score":{"name":"@s","objective":"temp2"}}]