execute unless block ~ ~ ~ minecraft:nether_wart run playsound minecraft:block.crop.break player @s[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~ 1 0.8
execute if block ~ ~ ~ minecraft:nether_wart run playsound minecraft:block.nether_wart.break player @s[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~ 1 0.8

playsound minecraft:entity.item.pickup player @s[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~ 0.2 1.2

data remove storage autocrops:temp Inventory
data modify storage autocrops:temp Inventory set from entity @s Inventory

loot give @s mine ~ ~ ~ mainhand

execute if block ~ ~ ~ minecraft:wheat[age=7] run function autocrops:hoe/replant/wheat
execute if block ~ ~ ~ minecraft:carrots[age=7] run function autocrops:hoe/replant/carrots
execute if block ~ ~ ~ minecraft:potatoes[age=7] run function autocrops:hoe/replant/potatoes
execute if block ~ ~ ~ minecraft:beetroots[age=3] run function autocrops:hoe/replant/beetroots
execute if block ~ ~ ~ minecraft:nether_wart[age=3] run function autocrops:hoe/replant/nether_wart

function autocrops:damage/add

scoreboard players set $hoe_hit twcr.temp 1