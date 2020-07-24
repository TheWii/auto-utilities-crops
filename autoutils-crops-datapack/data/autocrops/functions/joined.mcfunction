execute unless score @s twcr.activated matches 0..1 run scoreboard players set @s twcr.activated 1
execute unless score @s twcr.precision matches 1..3 run scoreboard players set @s twcr.precision 2
execute unless score @s twcr.smarttill matches 0..1 run scoreboard players set @s twcr.smarttill 1

scoreboard players reset @s AutoCrops
scoreboard players enable @s AutoCrops

scoreboard players reset @s twcr.joined