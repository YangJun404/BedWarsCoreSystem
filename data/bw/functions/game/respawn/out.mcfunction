# 玩家死亡后出局
scoreboard players reset @s respawn_time
title @s title {"storage":"bw:lang","nbt":"game.respawn.out.title","interpret": true}
title @s subtitle {"storage":"bw:lang","nbt":"game.respawn.out.subtitle","interpret": true}
function bw:game/player_event/spec_join