# Forceload chunk
execute unless data storage autocrops:data {Installed:0b} run function vp_library:loaded_chunk/remove

tag @a remove vp_player.detect_click
tag @a remove vp_player.villager_prepared
kill @e[type=villager,tag=vp_player.villager]

scoreboard objectives remove AutoCrops

scoreboard objectives remove twcr.joined

scoreboard objectives remove twcr.temp
scoreboard objectives remove twcr.data
scoreboard objectives remove twcr.activated
scoreboard objectives remove twcr.smarttill
scoreboard objectives remove twcr.precision

execute if entity @s[type=player] run tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"[Datapack]: ","color":"red","bold":true},{"text":"Auto Utilities: Crops v","color":"white","bold":false},{"nbt":"Version","storage":"autocrops:data","color":"white","bold":false},{"text":" uninstalled.","color":"white","bold":false}]

data remove storage autocrops:data Version
data merge storage autocrops:data {FirstReload:1b,Installed:0b}