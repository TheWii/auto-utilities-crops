tag @a remove vp_player.detect_click
tag @a remove vp_player.villager_prepared

kill @e[type=villager,tag=vp_player.villager]

scoreboard players set $version twcr.data 20100
data merge storage autocrops:data {Version:"2.1"}

tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Auto Utilities: Crops updated to v","color":"white","bold":false},{"nbt":"Version","storage":"autocrops:data","color":"white","bold":false},{"text":"!","color":"white","bold":false}]
