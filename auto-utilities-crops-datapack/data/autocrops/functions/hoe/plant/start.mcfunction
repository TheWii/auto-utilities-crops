execute unless score $hoe_operation twcr.temp matches 4 run playsound minecraft:item.crop.plant player @s[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~ 1 0.8
execute if score $hoe_operation twcr.temp matches 4 run playsound minecraft:item.nether_wart.plant player @s[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~ 1 0.8

data remove storage autocrops:temp Item
data modify storage autocrops:temp Item set from entity @s Inventory[{Slot:-106b}]

execute if data storage autocrops:temp Item{id:"minecraft:wheat_seeds"} run function autocrops:hoe/plant/wheat
execute if data storage autocrops:temp Item{id:"minecraft:carrot"} run function autocrops:hoe/plant/carrots
execute if data storage autocrops:temp Item{id:"minecraft:potato"} run function autocrops:hoe/plant/potatoes
execute if data storage autocrops:temp Item{id:"minecraft:beetroot_seeds"} run function autocrops:hoe/plant/beetroots
execute if data storage autocrops:temp Item{id:"minecraft:nether_wart"} run function autocrops:hoe/plant/nether_wart

#function autocrops:damage/add

scoreboard players set $hoe_hit twcr.temp 1