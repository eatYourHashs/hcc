scoreboard players set $math.out_0 hcc.dummy 0
$execute store result score $math.out_0 hcc.dummy run random value 0..$(level)
execute unless score $math.out_0 hcc.dummy matches 1.. run item modify entity @s weapon.mainhand hcc:damage_item_20
execute if data entity @s SelectedItem.components{"minecraft:damage":20} run function hcc:utils/damage/break/mainhand