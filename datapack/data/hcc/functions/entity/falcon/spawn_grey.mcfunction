summon fox ~ ~ ~ {NoAI:1b,NoGravity:1b,Silent:1b,DeathLootTable:"hcc:entity/falcon",CanPickUpLoot:0b,Health:20f,Tags:["hcc.20ticking","hcc.ticking","hcc.falcon","hcc.grey_falcon","smithed.entity"],CustomName:'{"text":"Falcon"}',ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:20},{Name:generic.follow_range,Base:0},{Name:generic.knockback_resistance,Base:0},{Name:generic.movement_speed,Base:1},{Name:generic.attack_damage,Base:10},{Name:generic.armor,Base:0},{Name:generic.armor_toughness,Base:0}]}
summon item_display ~ ~ ~ {transformation:{left_rotation:{axis:[0f,1f,0f],angle:0f},right_rotation:{axis:[0f,1f,0f],angle:3.142f},translation:[0f,0f,0f],scale:[1f,1f,1f]},NoGravity:1b,billboard:"fixed",Tags:["hcc.ticking","hcc.grey_falcon","hcc.new_falcon","hcc.falcon_model","smithed.entity"],item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:427005,CustomPotionColor:0}}}
execute as @e[tag=hcc.new_falcon,limit=1,type=fox] run function hcc:entity/falcon/idle
tag @e[tag=hcc.new_falcon,limit=1] remove hcc.new_falcon