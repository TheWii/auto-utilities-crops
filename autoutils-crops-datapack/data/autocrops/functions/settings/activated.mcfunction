execute if score @s twcr.activated matches 0 run scoreboard players set @s twcr.activated 101
execute if score @s twcr.activated matches 1 run scoreboard players set @s twcr.activated 100

execute if score @s twcr.activated matches 101 run scoreboard players set @s twcr.activated 1
execute if score @s twcr.activated matches 100 run scoreboard players set @s twcr.activated 0

tag @s remove vp_player.detect_click

function autocrops:settings/show