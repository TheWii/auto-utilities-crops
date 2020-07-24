playsound minecraft:item.shield.break ambient @s ~ ~ ~ 1 1

execute unless score $custom_tool twcr.temp matches 1 if data storage autocrops:temp SelectedItem{id:"minecraft:wooden_hoe"} anchored eyes run particle item minecraft:wooden_hoe ^ ^-0.3 ^0.5 0.1 0.1 0.1 0.075 8 normal
execute unless score $custom_tool twcr.temp matches 1 if data storage autocrops:temp SelectedItem{id:"minecraft:stone_hoe"} anchored eyes run particle item minecraft:stone_hoe ^ ^-0.3 ^0.5 0.1 0.1 0.1 0.075 8 normal
execute unless score $custom_tool twcr.temp matches 1 if data storage autocrops:temp SelectedItem{id:"minecraft:iron_hoe"} anchored eyes run particle item minecraft:iron_hoe ^ ^-0.3 ^0.5 0.1 0.1 0.1 0.075 8 normal
execute unless score $custom_tool twcr.temp matches 1 if data storage autocrops:temp SelectedItem{id:"minecraft:golden_hoe"} anchored eyes run particle item minecraft:golden_hoe ^ ^-0.3 ^0.5 0.1 0.1 0.1 0.075 8 normal
execute unless score $custom_tool twcr.temp matches 1 if data storage autocrops:temp SelectedItem{id:"minecraft:diamond_hoe"} anchored eyes run particle item minecraft:diamond_hoe ^ ^-0.3 ^0.5 0.1 0.1 0.1 0.075 8 normal
execute unless score $custom_tool twcr.temp matches 1 if data storage autocrops:temp SelectedItem{id:"minecraft:netherite_hoe"} anchored eyes run particle item minecraft:netherite_hoe ^ ^-0.3 ^0.5 0.1 0.1 0.1 0.075 8 normal

execute unless score $keep_broken twcr.temp matches 1 run data modify storage autocrops:temp SelectedItem.id set value "minecraft:air"
execute if score $keep_broken twcr.temp matches 1 run data modify storage autocrops:temp SelectedItem.tag.ctc.tool.broken set value 1b