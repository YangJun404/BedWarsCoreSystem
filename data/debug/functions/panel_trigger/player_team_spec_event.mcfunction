# 转换为 spec 队伍
$execute as $(player) run function bw:game/player_event/spec_join
$function debug:panel_trigger/player_control {player:"$(player)"}