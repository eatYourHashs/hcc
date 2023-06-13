execute if entity @s[tag=hcc.brown_falcon] run data modify entity @s item.tag.CustomModelData set value 427001
execute if entity @s[tag=hcc.grey_falcon] run data modify entity @s item.tag.CustomModelData set value 427006
scoreboard players set @s hcc.frames 120
function hcc:entity/all/init_anim