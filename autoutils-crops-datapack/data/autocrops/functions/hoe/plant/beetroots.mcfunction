scoreboard players set $hoe_crop twcr.temp 4

execute if data storage autocrops:temp Item{id:"minecraft:beetroot_seeds"} run setblock ~ ~ ~ beetroots[age=0]

function autocrops:hoe/plant/use_item