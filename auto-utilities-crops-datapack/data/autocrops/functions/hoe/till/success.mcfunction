playsound minecraft:item.hoe.till player @s[tag=!global.ignore.gui] ~ ~ ~ 1 1

execute unless block ~ ~ ~ minecraft:coarse_dirt run setblock ~ ~ ~ minecraft:farmland
execute if block ~ ~ ~ minecraft:coarse_dirt run setblock ~ ~ ~ minecraft:dirt

function autocrops:damage/add

scoreboard players set $hoe_hit twcr.temp 1