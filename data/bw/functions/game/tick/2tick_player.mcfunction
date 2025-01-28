# 每 2 Tick 执行一次
# as @a[tag=!player,tag=playing] at @s

# 攻击他人将显示血量
execute as @s[scores={health=0..4}] at @s on attacker run title @s actionbar [{"selector":"@p","bold": true},{"text": " ","color": "white"},{"score":{"name": "@s","objective": "health"},"bold": true}]
execute as @s[scores={health=5..}] at @s on attacker run title @s actionbar [{"selector":"@p","bold": false},{"text": " ","color": "white"},{"score":{"name": "@s","objective": "health"},"bold": false}]

# 破坏床的检测
function bw:game/bed/break

# 箱子商店
execute if score $shop_type gamerule matches 0 run function bw:game/chest_shop/tick2
