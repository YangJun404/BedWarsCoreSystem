data modify entity @s Tags set value ["map_center","copying"]
data modify entity @s Pos set from storage bw:map clone.data.center
$scoreboard players set @s map $(id)
data modify entity @s data.lock set value 1