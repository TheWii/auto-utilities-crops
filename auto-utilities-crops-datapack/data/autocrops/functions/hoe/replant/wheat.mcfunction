scoreboard players set $hoe_crop twcr.temp 1

execute align xyz positioned ~0.5 ~0.25 ~0.5 run particle minecraft:block minecraft:wheat[age=7] ~ ~ ~ 0.35 0.3 0.35 0.1 50 normal @a[tag=!global.ignore,tag=!global.ignore.gui]

setblock ~ ~ ~ air

execute if data storage autocrops:temp Inventory[{id:"minecraft:wheat_seeds"}] if block ~ ~-1 ~ minecraft:farmland run setblock ~ ~ ~ minecraft:wheat[age=0]
execute if data storage autocrops:temp Inventory[{id:"minecraft:wheat_seeds"}] run clear @s minecraft:wheat_seeds 1