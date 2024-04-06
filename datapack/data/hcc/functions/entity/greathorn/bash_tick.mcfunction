execute if score @s hcc.dummy matches ..30 facing entity @p[tag=hcc.target] feet run tp @s ~ ~ ~ ~ 0
execute if score @s hcc.dummy matches 1 run playsound hcc:entity.greathorn.pre_bash hostile @a ~ ~ ~ 2 1
execute if score @s hcc.dummy matches 30 run playsound hcc:entity.greathorn.bash hostile @a ~ ~ ~ 2 1