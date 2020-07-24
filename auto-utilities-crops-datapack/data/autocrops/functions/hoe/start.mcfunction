# Reset
scoreboard players reset $custom_tool twcr.temp
scoreboard players reset $keep_broken twcr.temp
scoreboard players reset $current_damage twcr.temp
scoreboard players reset $damage twcr.temp
scoreboard players reset $damaged twcr.temp
scoreboard players reset $limit twcr.temp
scoreboard players reset $unbreaking twcr.temp
scoreboard players reset $silktouch twcr.temp
scoreboard players reset $x twcr.temp
scoreboard players reset $y twcr.temp
scoreboard players reset $z twcr.temp
scoreboard players reset $math_x twcr.temp
scoreboard players reset $math_y twcr.temp
scoreboard players reset $math_z twcr.temp
scoreboard players reset $hoe_operation twcr.temp
scoreboard players reset $hoe_crop twcr.temp
scoreboard players reset $hoe_hit twcr.temp

# Summon axis
execute anchored eyes positioned ^ ^ ^4.5 run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["twcr.aec","mrcd_axis"]}
execute as @e[type=area_effect_cloud,tag=mrcd_axis,tag=twcr.aec,limit=1] at @s run function autocrops:get_position
kill @e[type=area_effect_cloud,tag=mrcd_axis,tag=twcr.aec,limit=1]

scoreboard players operation $math_x twcr.temp = $x twcr.temp
scoreboard players operation $math_y twcr.temp = $y twcr.temp
scoreboard players operation $math_z twcr.temp = $z twcr.temp

# Summon bullet
execute anchored eyes positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["mrcd_aec","twcr.aec"]}
execute as @e[type=area_effect_cloud,tag=mrcd_aec,tag=twcr.aec,limit=1,sort=nearest] at @s run function autocrops:hoe/mrcd

# Get tool info
function autocrops:damage/get

# Operation
execute at @e[type=area_effect_cloud,tag=mrcd_aec,tag=twcr.aec,limit=1,sort=nearest] run function autocrops:hoe/detect_operation

execute if score $hoe_operation twcr.temp matches 1..2 unless predicate autocrops:is_sneaking at @e[type=area_effect_cloud,tag=mrcd_aec,tag=twcr.aec,limit=1,sort=nearest] run function autocrops:hoe/operate
execute if score $hoe_operation twcr.temp matches 1..2 if predicate autocrops:is_sneaking at @e[type=area_effect_cloud,tag=mrcd_aec,tag=twcr.aec,limit=1,sort=nearest] run function autocrops:hoe/multiple

execute if score $hoe_operation twcr.temp matches 3..4 unless predicate autocrops:is_sneaking at @e[type=area_effect_cloud,tag=mrcd_aec,tag=twcr.aec,limit=1,sort=nearest] positioned ~ ~1 ~ run function autocrops:hoe/operate
execute if score $hoe_operation twcr.temp matches 3..4 if predicate autocrops:is_sneaking at @e[type=area_effect_cloud,tag=mrcd_aec,tag=twcr.aec,limit=1,sort=nearest] positioned ~ ~1 ~ run function autocrops:hoe/multiple

kill @e[type=area_effect_cloud,tag=mrcd_aec,tag=twcr.aec,limit=1,sort=nearest]

# Damage
execute unless entity @s[gamemode=creative] if score $damage twcr.temp matches 1.. if score $damage twcr.temp matches 1.. run function autocrops:damage/replace

# Reset storage
data remove storage autocrops:temp Item
data remove storage autocrops:temp SelectedItem