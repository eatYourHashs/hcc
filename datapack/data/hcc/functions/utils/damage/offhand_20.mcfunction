scoreboard players set $math.out_0 hcc.dummy 0
$execute store result score $math.out_0 hcc.dummy run random value 0..$(level)
execute if score $math.out_0 hcc.dummy matches 0 run item modify entity @s weapon.offhand hcc:damage_item_20
execute if data entity @s Inventory[{Slot:-106b}].components{"minecraft:damage":20} run function hcc:utils/damage/break/mainhand