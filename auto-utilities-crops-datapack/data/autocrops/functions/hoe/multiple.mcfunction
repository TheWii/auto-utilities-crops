scoreboard players operation $damaged twcr.temp = $current_damage twcr.temp
scoreboard players remove $limit twcr.temp 1

execute if score $damaged twcr.temp <= $limit twcr.temp positioned ~ ~ ~ run function autocrops:hoe/operate

execute if score $damaged twcr.temp <= $limit twcr.temp positioned ~1 ~ ~ run function autocrops:hoe/operate
execute if score $damaged twcr.temp <= $limit twcr.temp positioned ~-1 ~ ~ run function autocrops:hoe/operate
execute if score $damaged twcr.temp <= $limit twcr.temp positioned ~ ~ ~1 run function autocrops:hoe/operate
execute if score $damaged twcr.temp <= $limit twcr.temp positioned ~ ~ ~-1 run function autocrops:hoe/operate

execute if score $damaged twcr.temp <= $limit twcr.temp positioned ~1 ~ ~1 run function autocrops:hoe/operate
execute if score $damaged twcr.temp <= $limit twcr.temp positioned ~-1 ~ ~1 run function autocrops:hoe/operate
execute if score $damaged twcr.temp <= $limit twcr.temp positioned ~1 ~ ~-1 run function autocrops:hoe/operate
execute if score $damaged twcr.temp <= $limit twcr.temp positioned ~-1 ~ ~-1 run function autocrops:hoe/operate