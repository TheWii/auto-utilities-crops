scoreboard players set $hoe_crop twcr.temp 1

execute if data storage autocrops:temp Item{id:"minecraft:wheat_seeds"} run setblock ~ ~ ~ wheat[age=0]

function autocrops:hoe/plant/use_item