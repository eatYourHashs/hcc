execute store result score $temp.time hcc.dummy run time query gametime
scoreboard players operation $temp.time hcc.dummy %= $cons.24000 hcc.dummy
scoreboard players operation $temp.time hcc.dummy %= @s hcc.frames
execute store result entity @s[type=!item_display,type=!fox] ArmorItems[3].components{"minecraft:potion_contents"}.custom_color int 1 run scoreboard players get $temp.time hcc.dummy
execute store result entity @s[type=fox] HandItems[0].components{"minecraft:potion_contents"}.custom_color int 1 run scoreboard players get $temp.time hcc.dummy
execute store result entity @s[type=item_display] item.components{"minecraft:potion_contents"}.custom_color int 1 run scoreboard players get $temp.time hcc.dummy