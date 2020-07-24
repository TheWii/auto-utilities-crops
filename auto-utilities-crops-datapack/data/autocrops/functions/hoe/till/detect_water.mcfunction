scoreboard players set $hoe_water twcr.temp 0

execute positioned ~ ~ ~ run function autocrops:hoe/till/area_x
execute positioned ~ ~1 ~ run function autocrops:hoe/till/area_x

execute if score $hoe_water twcr.temp matches 1 run function autocrops:hoe/till/success
execute if score $hoe_water twcr.temp matches 0 run title @s[tag=!global.ignore.gui] actionbar [{"text":"Too dry to be tilled"}]