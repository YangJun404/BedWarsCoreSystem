setblock 0 317 0 chest
data remove storage lib:playerinfo name
function lib:playerinfo/store_head
data modify storage lib:playerinfo name set from block 0 317 0 Items[{Slot:0b}].tag.SkullOwner.Name
setblock 0 317 0 air