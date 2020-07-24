execute if score $unbreaking twcr.temp matches 0 run scoreboard players add $damage twcr.temp 1
execute if score $unbreaking twcr.temp matches 1 if predicate autocrops:unbreaking_1 run scoreboard players add $damage twcr.temp 1
execute if score $unbreaking twcr.temp matches 2 if predicate autocrops:unbreaking_2 run scoreboard players add $damage twcr.temp 1
execute if score $unbreaking twcr.temp matches 3 if predicate autocrops:unbreaking_3 run scoreboard players add $damage twcr.temp 1

scoreboard players operation $damaged twcr.temp = $current_damage twcr.temp
scoreboard players operation $damaged twcr.temp += $damage twcr.temp