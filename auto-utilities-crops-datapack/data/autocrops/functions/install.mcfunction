scoreboard objectives add twcr.temp dummy
scoreboard players set $1.15 twcr.temp 0 
function autocrops:detect_1.15

execute if score $1.15 twcr.temp matches 0 run tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"[Datapack]: ","color":"red","bold":true},{"text":"Auto Utilities: Crops failed to install. It needs at least minecraft 1.15.","color":"white","bold":false}]

execute if score $1.15 twcr.temp matches 1 run function autocrops:install_2
execute if score $1.15 twcr.temp matches 0 run scoreboard objectives remove twcr.temp