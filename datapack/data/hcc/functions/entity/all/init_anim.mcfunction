execute store result score $temp.time hcc.dummy run time query gametime
scoreboard players operation $temp.time hcc.dummy %= $cons.24000 hcc.dummy
scoreboard players operation $temp.time hcc.dummy %= @s hcc.frames
execute store result entity @s[type=!item_display] ArmorItems[3].tag.CustomPotionColor int 1 run scoreboard players get $temp.time hcc.dummy
execute store result entity @s[type=item_display] item.tag.CustomPotionColor int 1 run scoreboard players get $temp.time hcc.dummy