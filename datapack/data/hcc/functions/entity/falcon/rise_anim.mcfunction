execute if entity @s[tag=hcc.brown_falcon] run data modify entity @s HandItems[0].components."minecraft:custom_model_data" set value 427003
execute if entity @s[tag=hcc.grey_falcon] run data modify entity @s HandItems[0].components."minecraft:custom_model_data" set value 427008
scoreboard players set @s hcc.frames 20
function hcc:entity/all/init_anim