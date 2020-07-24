execute in minecraft:overworld run data modify block 29999983 0 4320 Items set value [{Slot:0b,id:"minecraft:stone",Count:1b}]

execute unless score $custom_tool twcr.temp matches 1 store result storage autocrops:temp SelectedItem.tag.Damage int 1 run scoreboard players get $damaged twcr.temp
execute if score $custom_tool twcr.temp matches 1 store result storage autocrops:temp SelectedItem.tag.ctc.tool.damage int 1 run scoreboard players get $damaged twcr.temp

execute if score $damaged twcr.temp >= $limit twcr.temp run function autocrops:damage/break

execute in minecraft:overworld run data modify block 29999983 0 4320 Items[0] set from storage autocrops:temp SelectedItem
execute in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 29999983 0 4320 minecraft:air{drop_contents:1b}

data remove storage autocrops:temp SelectedItem



