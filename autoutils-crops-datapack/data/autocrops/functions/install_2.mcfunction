scoreboard objectives add twcr.temp dummy
scoreboard players set $1.16 twcr.temp 0 
function autocrops:detect_1.16

advancement revoke @a only autocrops:player_joined

scoreboard objectives add twcr.data dummy

scoreboard players operation $1.15 twcr.data = $1.15 twcr.temp
scoreboard players operation $1.16 twcr.data = $1.16 twcr.temp

scoreboard objectives add AutoCrops trigger

scoreboard objectives add twcr.joined minecraft.custom:minecraft.leave_game

scoreboard objectives add twcr.activated dummy
scoreboard objectives add twcr.smarttill dummy
scoreboard objectives add twcr.precision dummy
scoreboard players set @a twcr.activated 1
scoreboard players set @a twcr.smarttill 1
scoreboard players set @a twcr.precision 2

scoreboard objectives add vp_id dummy

execute if score $1.16 twcr.data matches 1 as @a store result score @s vp_id run data get entity @s UUID[0]
execute unless score $1.16 twcr.data matches 1 as @a store result score @s vp_id run data get entity @s UUIDMost 0.00000000023283064365386962890625

function mrcd:init

team add vp_nocollision "vp_nocollision"
team modify vp_nocollision collisionRule never

scoreboard objectives add vp_villager minecraft.custom:minecraft.talked_to_villager

scoreboard players set $installed twcr.data 1

# Forceload chunk
execute unless data storage autocrops:data {Installed:1b} run function vp_library:loaded_chunk/add

scoreboard players set $version twcr.data 20100
data merge storage autocrops:data {FirstReload:1b,Version:"2.1",Installed:1b}

execute if entity @s[type=player] run tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"[Datapack]: ","color":"green","bold":true},{"text":"Auto Utilities: Crops v","color":"white","bold":false},{"nbt":"Version","storage":"autocrops:data","color":"white","bold":false},{"text":" installed!","color":"white","bold":false}]