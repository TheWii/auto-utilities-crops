tellraw @s [{"text":"- Auto Utilities: Crops -","color":"white","bold":true}]

execute if score @s twcr.activated matches 0 run tellraw @s [{"text":"Hoes: ","color":"gray","bold":false},{"text":"[Vanilla]","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/trigger AutoCrops set 4"}}]
execute if score @s twcr.activated matches 1 run tellraw @s [{"text":"Hoes: ","color":"gray","bold":false},{"text":"[Improved]","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/trigger AutoCrops set 4"}}]

execute unless score @s twcr.smarttill matches 1 run tellraw @s [{"text":"Smart Tilling: ","color":"gray","bold":false},{"text":"[Disabled]","color":"white","bold":false,"clickEvent":{"action":"run_command","value":"/trigger AutoCrops set 2"}}]
execute if score @s twcr.smarttill matches 1 run tellraw @s [{"text":"Smart Tilling: ","color":"gray","bold":false},{"text":"[Enabled]","color":"white","bold":false,"clickEvent":{"action":"run_command","value":"/trigger AutoCrops set 2"}}]

execute if score @s twcr.precision matches 1 run tellraw @s [{"text":"Detection Precision: ","color":"gray","bold":false},{"text":"[Low]","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/trigger AutoCrops set 3"}}]
execute if score @s twcr.precision matches 2 run tellraw @s [{"text":"Detection Precision: ","color":"gray","bold":false},{"text":"[High]","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/trigger AutoCrops set 3"}}]
execute if score @s twcr.precision matches 3 run tellraw @s [{"text":"Detection Precision: ","color":"gray","bold":false},{"text":"[Very High]","color":"green","bold":false,"clickEvent":{"action":"run_command","value":"/trigger AutoCrops set 3"}}]

playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0.75