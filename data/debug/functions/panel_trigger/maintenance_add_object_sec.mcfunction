# 添加维护项 2nd

execute unless data entity @s SelectedItem.tag.title run return -1

tellraw @a ["管理员已添加新的维护事项！具体内容：",{"nbt":"SelectedItem.tag.title","entity": "@s"}]
data modify storage bw:maintenance content append from entity @s SelectedItem.tag.title
clear @s written_book{Tags:["maintenance"]}
scoreboard players add $total maintenance 1

function debug:panel