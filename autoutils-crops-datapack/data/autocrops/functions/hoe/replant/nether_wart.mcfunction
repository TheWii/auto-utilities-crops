scoreboard players set $hoe_crop twcr.temp 5

execute align xyz positioned ~0.5 ~0.25 ~0.5 run particle minecraft:block minecraft:nether_wart[age=3] ~ ~ ~ 0.35 0.3 0.35 0.1 50 normal @a[tag=!global.ignore,tag=!global.ignore.gui]

setblock ~ ~ ~ air

execute if data storage autocrops:temp Inventory[{id:"minecraft:nether_wart"}] if block ~ ~-1 ~ minecraft:soul_sand run setblock ~ ~ ~ minecraft:nether_wart[age=0]
execute if data storage autocrops:temp Inventory[{id:"minecraft:nether_wart"}] run clear @s minecraft:nether_wart 1