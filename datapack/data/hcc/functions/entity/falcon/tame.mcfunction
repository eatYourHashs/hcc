particle minecraft:heart ~ ~ ~ 0.1 0.1 0.1 0 5
advancement grant @p[tag=hcc.stew_user] only minecraft:husbandry/tame_an_animal
scoreboard players operation @s hcc.tamer_uuid1 = @p[tag=hcc.stew_user] hcc.uuid1
execute as @p[tag=hcc.stew_user] run function hcc:entity/falcon/consume_stew
tag @s add hcc.tamed