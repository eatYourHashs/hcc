scoreboard players add @s hcc.dummy 1

execute if score @s[tag=hcc.idle] hcc.dummy matches 240.. if entity @a[distance=..24,gamemode=!spectator] positioned ~ ~3 ~ facing entity @r[distance=..24,gamemode=!spectator] feet run function hcc:entity/greathorn/attempt_detect



tp @e[limit=1,type=item_display,tag=hcc.greathorn_model,sort=nearest] ~ ~ ~ ~ ~

execute if entity @s[nbt={HurtTime:9s}] run function hcc:entity/greathorn/hurt