scoreboard players set @s hcc.war_horn_timer 40
playsound hcc:entity.greathorn.roar player @a ~ ~ ~ 2 1.1
data modify storage hcc:storage unbreaking.level set value 0
data modify storage hcc:storage unbreaking.level set from storage hcc:storage SelectedItem.components."minecraft:enchantments".levels."minecraft:unbreaking"
execute if entity @s[tag=hcc.offhand_wfoas] unless entity @s[gamemode=creative] run function hcc:utils/damage/offhand with storage hcc:storage unbreaking
execute unless entity @s[tag=hcc.offhand_wfoas] unless entity @s[gamemode=creative] run function hcc:utils/damage/mainhand with storage hcc:storage unbreaking