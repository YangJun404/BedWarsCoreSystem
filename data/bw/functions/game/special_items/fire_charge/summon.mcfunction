playsound minecraft:entity.ghast.shoot player @a[distance=0..40] ~ ~ ~

data modify entity @s Owner set from entity @e[type=interaction,limit=1,sort=nearest] interaction.player
execute on origin run damage @e[type=minecraft:fireball,sort=nearest,limit=1] 1 minecraft:arrow by @s
data modify entity @s NoGravity set value true
data modify entity @s ExplosionPower set value 1
# data modify entity @s Item merge value {id: "minecraft:snowball", Count:1b}
# data modify entity @s Item merge value {Count:1b}
# data modify entity @s Item.tag set from entity @e[type=minecraft:fireball,sort=nearest,limit=1] Item.tag
data modify entity @s Item set value {id:"minecraft:magma_cream",Count:1b}


kill @e[type=snowball,sort=nearest,limit=1] 