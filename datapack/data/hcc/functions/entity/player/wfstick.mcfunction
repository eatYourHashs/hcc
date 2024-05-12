scoreboard players set @s hcc.wfstick 0
data modify storage hcc:storage SelectedItem set from entity @s SelectedItem
execute unless data storage hcc:storage SelectedItem{id:"minecraft:warped_fungus_on_a_stick"} run tag @s add hcc.offhand_wfoas
execute unless data storage hcc:storage SelectedItem{id:"minecraft:warped_fungus_on_a_stick"} run data modify storage hcc:storage SelectedItem set from entity @s Inventory[{Slot:-106b}]
execute if data storage hcc:storage SelectedItem.components."minecraft:custom_data".hcc_dat.bestial_war_horn unless score @s hcc.war_horn_timer matches 1.. run function hcc:item/bestial_war_horn/use
data remove storage hcc:storage SelectedItem
tag @s remove hcc.offhand_wfoas