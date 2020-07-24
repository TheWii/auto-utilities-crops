scoreboard players set $hoe_crop twcr.temp 2

execute if data storage autocrops:temp Item{id:"minecraft:carrot"} run setblock ~ ~ ~ carrots[age=0]

function autocrops:hoe/plant/use_item