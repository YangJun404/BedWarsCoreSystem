data modify block 25 51 0 SkullOwner set value {}
function lib:playerinfo/name
data modify block 25 51 0 SkullOwner.Name set from storage lib:playerinfo name

data merge block 24 50 0 {front_text:{messages:['{"text":"---------------"}','{"text":"单居表现优良"}','{"storage":"lib:playerinfo","nbt":"name"}','{"text":"---------------"}']}}