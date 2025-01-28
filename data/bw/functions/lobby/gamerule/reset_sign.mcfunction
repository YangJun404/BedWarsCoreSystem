# 重置告示牌

# Sign
execute unless block 0 52 20 #signs run setblock 0 52 20 oak_wall_sign[facing=north]{back_text:{color:"black"}}
data merge block 0 52 20 {front_text:{messages:['{"text":""}','{"storage":"bw:lang","nbt":"lobby.gamerule.sign[0]"}','{"storage":"bw:lang","nbt":"lobby.gamerule.sign[1]"}','{"text":""}']}}


# 边界设定
execute unless block 1 51 20 #signs run setblock 1 51 20 oak_wall_sign[facing=north]

execute if score $border gamerule matches 1 run data merge block 1 51 20 {back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},is_waxed: 1b,front_text:{color:"black",has_glowing_text:1b,messages:['{"text":""}','{"clickEvent":{"action":"run_command","value":"function bw:lobby/gamerule/trigger/border"},"storage":"bw:lang","nbt":"lobby.gamerule.border.name"}','{"storage":"bw:lang","nbt":"lobby.gamerule.border.1"}','{"text":""}']}}
execute if score $border gamerule matches 2 run data merge block 1 51 20 {back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},is_waxed: 1b,front_text:{color:"black",has_glowing_text:1b,messages:['{"text":""}','{"clickEvent":{"action":"run_command","value":"function bw:lobby/gamerule/trigger/border"},"storage":"bw:lang","nbt":"lobby.gamerule.border.name"}','{"storage":"bw:lang","nbt":"lobby.gamerule.border.2"}','{"text":""}']}}

# 昼夜更替
execute unless block -1 51 20 #signs run setblock -1 51 20 oak_wall_sign[facing=north]

execute if score $daylight_cycle gamerule matches 1 run data merge block -1 51 20 {back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},is_waxed: 1b,front_text:{color:"black",has_glowing_text:1b,messages:['{"text":""}','{"clickEvent":{"action":"run_command","value":"function bw:lobby/gamerule/trigger/daylight_cycle"},"storage":"bw:lang","nbt":"lobby.gamerule.daylight_cycle.name"}','{"storage":"bw:lang","nbt":"lobby.gamerule.daylight_cycle.1"}','{"text":""}']}}
execute if score $daylight_cycle gamerule matches 2 run data merge block -1 51 20 {back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},is_waxed: 1b,front_text:{color:"black",has_glowing_text:1b,messages:['{"text":""}','{"clickEvent":{"action":"run_command","value":"function bw:lobby/gamerule/trigger/daylight_cycle"},"storage":"bw:lang","nbt":"lobby.gamerule.daylight_cycle.name"}','{"storage":"bw:lang","nbt":"lobby.gamerule.daylight_cycle.2"}','{"text":""}']}}

# 商店类型
execute unless block 2 51 20 #signs run setblock 2 51 20 oak_wall_sign[facing=north]

execute if score $shop_type gamerule matches 0 run data merge block 2 51 20 {back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"black",has_glowing_text:1b,messages:['{"text":""}','{"clickEvent":{"action":"run_command","value":"function bw:lobby/gamerule/trigger/shop_type"},"storage":"bw:lang","nbt":"lobby.gamerule.shop_type.name"}','{"storage":"bw:lang","nbt":"lobby.gamerule.shop_type.0"}','{"text":""}']}}
execute if score $shop_type gamerule matches 1 run data merge block 2 51 20 {back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"black",has_glowing_text:1b,messages:['{"text":""}','{"clickEvent":{"action":"run_command","value":"function bw:lobby/gamerule/trigger/shop_type"},"storage":"bw:lang","nbt":"lobby.gamerule.shop_type.name"}','{"storage":"bw:lang","nbt":"lobby.gamerule.shop_type.1"}','{"text":""}']}}
execute if score $shop_type gamerule matches 2 run data merge block 2 51 20 {back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"black",has_glowing_text:1b,messages:['{"text":""}','{"clickEvent":{"action":"run_command","value":"function bw:lobby/gamerule/trigger/shop_type"},"storage":"bw:lang","nbt":"lobby.gamerule.shop_type.name"}','{"storage":"bw:lang","nbt":"lobby.gamerule.shop_type.2"}','{"text":""}']}}

# 虚空伤害
execute unless block 0 51 20 #signs run setblock 0 51 20 oak_wall_sign[facing=north]

execute if score $void_damage gamerule matches 0 run data merge block 0 51 20 {back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"black",has_glowing_text:1b,messages:['{"text":""}','{"clickEvent":{"action":"run_command","value":"function bw:lobby/gamerule/trigger/void_damage"},"storage":"bw:lang","nbt":"lobby.gamerule.void_damage.name"}','{"storage":"bw:lang","nbt":"lobby.gamerule.void_damage.0"}','{"text":""}']}}
execute if score $void_damage gamerule matches 1 run data merge block 0 51 20 {back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"black",has_glowing_text:1b,messages:['{"text":""}','{"clickEvent":{"action":"run_command","value":"function bw:lobby/gamerule/trigger/void_damage"},"storage":"bw:lang","nbt":"lobby.gamerule.void_damage.name"}','{"storage":"bw:lang","nbt":"lobby.gamerule.void_damage.1"}','{"text":""}']}}
execute if score $void_damage gamerule matches 2 run data merge block 0 51 20 {back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"black",has_glowing_text:1b,messages:['{"text":""}','{"clickEvent":{"action":"run_command","value":"function bw:lobby/gamerule/trigger/void_damage"},"storage":"bw:lang","nbt":"lobby.gamerule.void_damage.name"}','{"storage":"bw:lang","nbt":"lobby.gamerule.void_damage.2"}','{"text":""}']}}

# 团队数量
execute unless block -2 51 20 #signs run setblock -2 51 20 oak_wall_sign[facing=north]

execute if score $team_number gamerule matches 2 run data merge block -2 51 20 {back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"black",has_glowing_text:1b,messages:['{"text":""}','{"clickEvent":{"action":"run_command","value":"function bw:lobby/gamerule/trigger/team_number"},"storage":"bw:lang","nbt":"lobby.gamerule.team_number.name"}','{"storage":"bw:lang","nbt":"lobby.gamerule.team_number.2"}','{"text":""}']}}
execute if score $team_number gamerule matches 3 run data merge block -2 51 20 {back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"black",has_glowing_text:1b,messages:['{"text":""}','{"clickEvent":{"action":"run_command","value":"function bw:lobby/gamerule/trigger/team_number"},"storage":"bw:lang","nbt":"lobby.gamerule.team_number.name"}','{"storage":"bw:lang","nbt":"lobby.gamerule.team_number.3"}','{"text":""}']}}
execute if score $team_number gamerule matches 4 run data merge block -2 51 20 {back_text:{color:"black",has_glowing_text:0b,messages:['{"text":""}','{"text":""}','{"text":""}','{"text":""}']},front_text:{color:"black",has_glowing_text:1b,messages:['{"text":""}','{"clickEvent":{"action":"run_command","value":"function bw:lobby/gamerule/trigger/team_number"},"storage":"bw:lang","nbt":"lobby.gamerule.team_number.name"}','{"storage":"bw:lang","nbt":"lobby.gamerule.team_number.4"}','{"text":""}']}}