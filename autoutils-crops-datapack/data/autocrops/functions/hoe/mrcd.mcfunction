function autocrops:get_position

scoreboard players operation $math_x twcr.temp -= $x twcr.temp
scoreboard players operation $math_y twcr.temp -= $y twcr.temp
scoreboard players operation $math_z twcr.temp -= $z twcr.temp

scoreboard players operation @s mrcd_x0 = $math_x twcr.temp
scoreboard players operation @s mrcd_y0 = $math_y twcr.temp
scoreboard players operation @s mrcd_z0 = $math_z twcr.temp

function mrcd:generic/start