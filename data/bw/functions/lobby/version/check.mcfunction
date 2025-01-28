#> bw:lobby/version/check
# 版本检测

# 版本号检测
execute unless data storage bw:basic version.last run data modify storage bw:basic version.last set from storage bw:basic version.current
execute store result score $last temp run data get storage bw:basic version.last
execute store result score $current temp run data get storage bw:basic version.current
data modify storage bw:basic version.last set from storage bw:basic version.current

# 如果当前版本高于以前版本：升级
execute if score $current temp > $last temp run function bw:lobby/version/upgrade

# 如果当前版本低于以前版本：降级
execute if score $current temp < $last temp run function bw:lobby/version/downgrade

# 收尾
scoreboard players reset $last temp
scoreboard players reset $current temp