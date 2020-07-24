scoreboard players set $hoe_crop twcr.temp 4

execute if data storage autocrops:temp Item{id:"minecraft:nether_wart"} run setblock ~ ~ ~ nether_wart[age=0]

function autocrops:hoe/plant/use_item