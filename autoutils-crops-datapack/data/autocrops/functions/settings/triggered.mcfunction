execute if entity @s[tag=!global.ignore,tag=!global.ignore.gui] if score @s AutoCrops matches 1 run function autocrops:settings/show
execute if entity @s[tag=!global.ignore,tag=!global.ignore.gui] if score @s AutoCrops matches 2 run function autocrops:settings/smart_till
execute if entity @s[tag=!global.ignore,tag=!global.ignore.gui] if score @s AutoCrops matches 3 run function autocrops:settings/precision
execute if entity @s[tag=!global.ignore,tag=!global.ignore.gui] if score @s AutoCrops matches 4 run function autocrops:settings/activated

scoreboard players reset @s AutoCrops
scoreboard players enable @s AutoCrops