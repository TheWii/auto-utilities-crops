data modify storage autocrops:temp SelectedItem set from entity @s SelectedItem
execute if data storage autocrops:temp SelectedItem.tag.ctc{traits:["tool/hoe"]} run scoreboard players set $custom_tool twcr.temp 1

execute if score $custom_tool twcr.temp matches 1 store result score $keep_broken twcr.temp run data get storage autocrops:temp SelectedItem.tag.ctc.tool.keep_broken

execute store result score $current_damage twcr.temp run data get storage autocrops:temp SelectedItem.tag.Damage
execute if score $custom_tool twcr.temp matches 1 store result score $current_damage twcr.temp run data get storage autocrops:temp SelectedItem.tag.ctc.tool.damage 

execute if data storage autocrops:temp {SelectedItem:{id:"minecraft:wooden_hoe"}} run scoreboard players set $limit twcr.temp 59
execute if data storage autocrops:temp {SelectedItem:{id:"minecraft:stone_hoe"}} run scoreboard players set $limit twcr.temp 131
execute if data storage autocrops:temp {SelectedItem:{id:"minecraft:golden_hoe"}} run scoreboard players set $limit twcr.temp 32
execute if data storage autocrops:temp {SelectedItem:{id:"minecraft:iron_hoe"}} run scoreboard players set $limit twcr.temp 250
execute if data storage autocrops:temp {SelectedItem:{id:"minecraft:diamond_hoe"}} run scoreboard players set $limit twcr.temp 1561
execute if data storage autocrops:temp {SelectedItem:{id:"minecraft:netherite_hoe"}} run scoreboard players set $limit twcr.temp 2031
execute if score $custom_tool twcr.temp matches 1 store result score $limit twcr.temp run data get storage autocrops:temp SelectedItem.tag.ctc.tool.durability 

execute unless data storage autocrops:temp {SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking"}]}}} run scoreboard players set $unbreaking twcr.temp 0
execute if data storage autocrops:temp {SelectedItem:{tag:{Enchantments:[{lvl:1s,id:"minecraft:unbreaking"}]}}} run scoreboard players set $unbreaking twcr.temp 1
execute if data storage autocrops:temp {SelectedItem:{tag:{Enchantments:[{lvl:2s,id:"minecraft:unbreaking"}]}}} run scoreboard players set $unbreaking twcr.temp 2
execute if data storage autocrops:temp {SelectedItem:{tag:{Enchantments:[{lvl:3s,id:"minecraft:unbreaking"}]}}} run scoreboard players set $unbreaking twcr.temp 3
execute if data storage autocrops:temp {SelectedItem:{tag:{Unbreakable:1b}}} run scoreboard players set $unbreaking twcr.temp -1

execute if data storage autocrops:temp {SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}} run scoreboard players set $silktouch twcr.temp 1