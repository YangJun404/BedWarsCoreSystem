setblock 0 317 0 chest
data remove storage lib:playerinfo SkullOwner
data remove storage lib:playerinfo name
data remove storage lib:playerinfo suuid
function lib:playerinfo/store_head
data modify storage lib:playerinfo SkullOwner set from block 0 317 0 Items[{Slot:0b}].tag.SkullOwner
data modify storage lib:playerinfo name set from storage bw:lib SkullOwner.Name
data modify storage lib:playerinfo suuid set from storage bw:lib SkullOwner.Id
setblock 0 317 0 air