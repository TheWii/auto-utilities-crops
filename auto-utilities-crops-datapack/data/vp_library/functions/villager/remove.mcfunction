scoreboard players operation #id vp_temp = @s vp_id
execute as @e[type=villager,tag=vp_player.villager] if score @s vp_id = #id vp_temp run tag @s add vp_villager.matched

tp @e[type=villager,tag=vp_villager.matched] ~ ~-1000 ~
kill @e[type=villager,tag=vp_villager.matched]

tag @s remove vp_player.villager_prepared
tag @s remove vp_player.detect_click