execute if score @s twcr.smarttill matches 1 run function autocrops:hoe/till/detect_water
execute if score @s twcr.smarttill matches 0 run function autocrops:hoe/till/success

scoreboard players set $hoe_hit twcr.temp 1