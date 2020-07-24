# Detect block
scoreboard players set $hoe_hit twcr.temp 0
scoreboard players set $hoe_crop twcr.temp 0

execute unless score $hoe_hit twcr.temp matches 1 if score $hoe_operation twcr.temp matches 1 if block ~ ~ ~ #autocrops:tillable if block ~ ~1 ~ #autocrops:air run function autocrops:hoe/till/start
execute unless score $hoe_hit twcr.temp matches 1 if score $hoe_operation twcr.temp matches 2 if block ~ ~ ~ #autocrops:crops_7[age=7] run function autocrops:hoe/replant/start
execute unless score $hoe_hit twcr.temp matches 1 if score $hoe_operation twcr.temp matches 2 if block ~ ~ ~ #autocrops:crops_3[age=3] run function autocrops:hoe/replant/start
execute unless score $hoe_hit twcr.temp matches 1 if score $hoe_operation twcr.temp matches 3 if block ~ ~ ~ #autocrops:air if block ~ ~-1 ~ minecraft:farmland run function autocrops:hoe/plant/start
execute unless score $hoe_hit twcr.temp matches 1 if score $hoe_operation twcr.temp matches 4 if block ~ ~ ~ #autocrops:air if block ~ ~-1 ~ minecraft:soul_sand run function autocrops:hoe/plant/start