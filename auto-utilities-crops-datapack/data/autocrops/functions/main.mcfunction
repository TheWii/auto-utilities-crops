execute as @a[gamemode=!spectator,tag=!global.ignore,tag=!vp_player.detect_click,scores={twcr.activated=1}] if predicate autocrops:holding_hoe if predicate autocrops:mainhand_valid_tool run tag @s add vp_player.detect_click
execute as @a[tag=vp_player.detect_click,tag=!global.ignore] unless predicate autocrops:holding_hoe run tag @s remove vp_player.detect_click

execute as @a[scores={twcr.joined=-2146473648..}] run function autocrops:joined
execute as @a unless score @s AutoCrops matches 0 at @s run function autocrops:settings/triggered