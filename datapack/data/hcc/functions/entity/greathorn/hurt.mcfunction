#execute on attacker run tag @s add hcc.target
#execute store result score @s hcc.target_uuid1 run data get entity @e[limit=1,tag=hcc.target] UUID[0]
#execute on attacker store result score @s hcc.uuid1 run data get entity @s UUID[0]
#execute on attacker run tag @s remove hcc.target
playsound hcc:entity.greathorn.hurt hostile @a ~ ~ ~ 2 1