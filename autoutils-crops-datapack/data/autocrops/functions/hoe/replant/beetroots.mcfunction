scoreboard players set $hoe_crop twcr.temp 4

execute align xyz positioned ~0.5 ~0.25 ~0.5 run particle minecraft:block minecraft:beetroots[age=3] ~ ~ ~ 0.35 0.3 0.35 0.1 50 normal @a[tag=!global.ignore,tag=!global.ignore.gui]

setblock ~ ~ ~ air

execute if data storage autocrops:temp Inventory[{id:"minecraft:beetroot_seeds"}] if block ~ ~-1 ~ minecraft:farmland run setblock ~ ~ ~ minecraft:beetroots[age=0]
execute if data storage autocrops:temp Inventory[{id:"minecraft:beetroot_seeds"}] run clear @s minecraft:beetroot_seeds 1