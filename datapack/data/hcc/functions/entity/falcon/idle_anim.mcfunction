execute if entity @s[tag=hcc.brown_falcon] run data modify entity @s item.components{"minecraft:custom_model_data"} set value 427000
execute if entity @s[tag=hcc.grey_falcon] run data modify entity @s item.components{"minecraft:custom_model_data"} set value 427005
scoreboard players set @s hcc.frames 60
function hcc:entity/all/init_anim