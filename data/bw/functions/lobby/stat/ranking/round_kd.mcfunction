data modify block 25 51 1 SkullOwner set value {}
function lib:playerinfo/name
data modify block 25 51 1 SkullOwner.Name set from storage lib:playerinfo name

data merge block 24 50 1 {front_text:{messages:['{"text":"---------------"}','{"text":"单居 KD 计分最佳"}','{"storage":"lib:playerinfo","nbt":"name"}','{"text":"---------------"}']}}