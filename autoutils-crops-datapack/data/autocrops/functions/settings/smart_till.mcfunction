execute unless score @s twcr.smarttill matches 1 run scoreboard players set @s twcr.smarttill 101
execute if score @s twcr.smarttill matches 1 run scoreboard players set @s twcr.smarttill 100

execute if score @s twcr.smarttill matches 101 run scoreboard players set @s twcr.smarttill 1
execute if score @s twcr.smarttill matches 100 run scoreboard players set @s twcr.smarttill 0

function autocrops:settings/show