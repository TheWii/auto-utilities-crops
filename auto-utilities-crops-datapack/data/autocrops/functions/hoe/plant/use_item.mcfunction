execute in minecraft:overworld run data modify block 29999983 0 4320 Items set value [{Slot:0b,id:"minecraft:stone",Count:1b}]

data remove storage autocrops:temp Item.Slot
data modify block 29999983 0 4320 Items[0] set from storage autocrops:temp Item

execute in minecraft:overworld store result block 29999983 0 4320 Items[0].Count byte 1 run data get block 29999983 0 4320 Items[0].Count 0.9999999999

execute in minecraft:overworld run loot replace entity @s weapon.offhand 1 mine 29999983 0 4320 minecraft:air{drop_contents:1b}



