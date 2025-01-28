# input {Slot:BYTE,Count:BYTE,Item:STRING,Name:JSON} + {lpc:STRING,lpi:STRING,lpg:STRING,lpd:STRING}
## 显示物品
$item replace entity @s enderchest.$(Slot) with $(Item){display:{Name:'{"text":"§r§f$(Name)"}',Lore:['{"text": " "}','{"text": "$(lpc)$(lpi)$(lpg)$(lpd)"}','{"text": " "}']},Tag:"shop"} $(Count)