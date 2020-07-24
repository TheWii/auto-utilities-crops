scoreboard players set $hoe_crop twcr.temp 3

execute if data storage autocrops:temp Item{id:"minecraft:potato"} run setblock ~ ~ ~ potatoes[age=0]

function autocrops:hoe/plant/use_item