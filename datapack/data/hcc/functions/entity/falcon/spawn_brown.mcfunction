summon fox ~ ~ ~ {NoAI:1b,NoGravity:1b,Silent:1b,DeathLootTable:"hcc:entity/falcon",PersistenceRequired:1b,CanPickUpLoot:0b,Health:20f,Tags:["hcc.ticking","hcc.falcon","hcc.new_falcon","hcc.brown_falcon","smithed.entity"],CustomName:'{"text":"Falcon"}',HandItems:[{id:"minecraft:potion",Count:1b,tag:{CustomModelData:427000,CustomPotionColor:0}},{}],HandDropChances:[-327.670F,0.085F],ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:20},{Name:generic.follow_range,Base:0},{Name:generic.knockback_resistance,Base:0},{Name:generic.movement_speed,Base:1},{Name:generic.attack_damage,Base:10},{Name:generic.armor,Base:0},{Name:generic.armor_toughness,Base:0}]}
execute as @e[tag=hcc.new_falcon,limit=1,type=fox] run function hcc:entity/falcon/idle
tag @e[tag=hcc.new_falcon,limit=1] remove hcc.new_falcon