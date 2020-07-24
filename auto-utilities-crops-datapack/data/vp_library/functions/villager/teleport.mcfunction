scoreboard players operation #id vp_temp = @s vp_id
execute as @e[type=villager,tag=vp_player.villager] if score @s vp_id = #id vp_temp run tag @s add vp_villager.matched

execute anchored eyes positioned ^ ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=villager,tag=vp_villager.matched,tag=vp_player.villager_front,limit=1] ^ ^ ^0.85
execute anchored eyes positioned ^ ^ ^ positioned ~ ~-1 ~ run tp @e[type=villager,tag=vp_villager.matched,tag=vp_player.villager_center,limit=1] ~ ~ ~
execute anchored eyes positioned ^ ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=villager,tag=vp_villager.matched,tag=vp_player.villager_back,limit=1] ^ ^ ^-0.85
execute anchored eyes positioned ^-0.6 ^ ^ positioned ~ ~-1 ~ run tp @e[type=villager,tag=vp_villager.matched,tag=vp_player.villager_right,limit=1] ~ ~ ~
execute anchored eyes positioned ^0.6 ^ ^ positioned ~ ~-1 ~ run tp @e[type=villager,tag=vp_villager.matched,tag=vp_player.villager_left,limit=1] ~ ~ ~
execute anchored eyes positioned ^-0.6 ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=villager,tag=vp_villager.matched,tag=vp_player.villager_frontright,limit=1] ^ ^ ^0.85
execute anchored eyes positioned ^0.6 ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=villager,tag=vp_villager.matched,tag=vp_player.villager_frontleft,limit=1] ^ ^ ^0.85
execute anchored eyes positioned ^-0.6 ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=villager,tag=vp_villager.matched,tag=vp_player.villager_backright,limit=1] ^ ^ ^-0.85
execute anchored eyes positioned ^0.6 ^ ^ rotated ~ 0 positioned ~ ~-1 ~ run tp @e[type=villager,tag=vp_villager.matched,tag=vp_player.villager_backleft,limit=1] ^ ^ ^-0.85

execute unless entity @e[type=villager,tag=vp_villager.matched] run function vp_library:villager/prepare

tag @e[type=villager,tag=vp_villager.matched,limit=9] remove vp_villager.matched