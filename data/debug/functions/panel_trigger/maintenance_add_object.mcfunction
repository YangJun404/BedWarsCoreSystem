# 添加维护项 1nd

# 给予必要道具与提示
give @s minecraft:writable_book{Tags:["maintenance"],author:"YaJn",pages:['如想添加维护项：请点击“署名”按钮并且设定书本名称为维护项名称；署名完成后根据聊天框中提示完成进一步操作"']} 1

tellraw @s ""
tellraw @s "有关于添加维护内容："
tellraw @s "    1. 打开给予的“书与笔”并且署名为你想要的字符串"
tellraw @s ["    2. 一切就绪了嘛？请主手手持已署名完成的书并且",{"text": "点击此处","clickEvent": {"action":"run_command","value": "/function debug:panel_trigger/maintenance_add_object_sec"}}]
tellraw @s ""