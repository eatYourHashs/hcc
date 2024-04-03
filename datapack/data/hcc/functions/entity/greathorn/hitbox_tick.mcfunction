scoreboard players add @s hcc.dummy 1

execute if score @s[tag=hcc.idle] hcc.dummy matches 240.. if entity @a[distance=..24,gamemode=!spectator] positioned ~ ~3 ~ facing entity @p[distance=..24,gamemode=!spectator] feet run function hcc:entity/greathorn/attempt_detect

execute if score @s[tag=hcc.alert] hcc.dummy matches 120.. run function hcc:entity/greathorn/idle

execute if score @s[tag=hcc.target_roar] hcc.dummy matches 60.. run function hcc:entity/greathorn/idle

tp @e[limit=1,type=item_display,tag=hcc.greathorn_model,sort=nearest] ~ ~ ~ ~ ~

execute if entity @s[nbt={HurtTime:9s}] run function hcc:entity/greathorn/hurt
#execute if block ~ ~-0.1 ~ #hcc:not_solid_liquids if block ~ ~ ~ #hcc:not_solid_liquids run scoreboard players add @s hcc.dummy2 1
#execute if score @s hcc.dummy2 matches 1.. at @s run tp @s ~ ~-0.1 ~
#execute if score @s hcc.dummy2 matches 2.. at @s run tp @s ~ ~-0.1 ~
#execute if score @s hcc.dummy2 matches 3.. at @s run tp @s ~ ~-0.1 ~
#execute if score @s hcc.dummy2 matches 4.. at @s run tp @s ~ ~-0.1 ~
#execute if score @s hcc.dummy2 matches 5.. at @s run tp @s ~ ~-0.1 ~
#execute unless block ~ ~ ~ #hcc:not_solid_liquids if block ~ ~1 ~ #hcc:not_solid_liquids run scoreboard players set @s hcc.dummy2 0
#execute unless block ~ ~ ~ #hcc:not_solid_liquids if block ~ ~1 ~ #hcc:not_solid_liquids positioned ~ ~1 ~ align y run tp ~ ~ ~