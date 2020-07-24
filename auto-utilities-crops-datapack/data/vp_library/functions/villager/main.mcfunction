execute as @a[tag=vp_player.detect_click,tag=!global.ignore] at @s run function vp_library:villager/player

execute as @a[gamemode=!spectator,tag=!global.ignore,tag=!vp_player.detect_click,tag=vp_player.villager_prepared] at @s run function vp_library:villager/remove
execute as @a[gamemode=spectator,tag=!global.ignore,tag=vp_player.villager_prepared] at @s run function vp_library:villager/remove

execute as @a[scores={vp_villager=-2146473648..}] at @s run function vp_library:villager/talked