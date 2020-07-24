# Detect operation
scoreboard players set $hoe_operation twcr.temp 0

execute if block ~ ~ ~ minecraft:farmland if predicate autocrops:holding_crops run scoreboard players set $hoe_operation twcr.temp 3
execute if block ~ ~ ~ minecraft:soul_sand if data entity @s Inventory[{Slot:-106b,id:"minecraft:nether_wart"}] run scoreboard players set $hoe_operation twcr.temp 4

execute if block ~ ~ ~ #autocrops:tillable if block ~ ~1 ~ air run scoreboard players set $hoe_operation twcr.temp 1
execute if block ~ ~ ~ #autocrops:crops_7[age=7] run scoreboard players set $hoe_operation twcr.temp 2
execute if block ~ ~ ~ #autocrops:crops_3[age=3] run scoreboard players set $hoe_operation twcr.temp 2