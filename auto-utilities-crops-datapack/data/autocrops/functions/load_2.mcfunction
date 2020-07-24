scoreboard objectives add twcr.temp dummy
scoreboard players set $1.16 twcr.temp 0 
function autocrops:detect_1.16

scoreboard players operation $1.15 twcr.data = $1.15 twcr.temp
scoreboard players operation $1.16 twcr.data = $1.16 twcr.temp

execute unless data storage autocrops:data FirstReload run function autocrops:install

scoreboard players set $aucr.ver load 20100

execute if score $version twcr.data matches 20100 run tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Auto Utilities: Crops v","color":"white","bold":false},{"nbt":"Version","storage":"autocrops:data","color":"white","bold":false},{"text":" is loaded.","color":"white","bold":false}]
execute unless score $version twcr.data matches 20100 run function autocrops:update