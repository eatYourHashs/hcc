summon ravager ~ ~ ~ {DeathLootTable:"hcc:entity/greathorn",PatrolLeader:0b,Patrolling:0b,CanJoinRaid:0b,Silent:1b,PersistenceRequired:1b,Health:400f,Tags:["hcc.20ticking","hcc.greathorn_hitbox","hcc.ticking","smithed.entity","hcc.idle"],CustomName:'{"text":"Greathorn"}',active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}],Attributes:[{Name:generic.armor,Base:0},{Name:generic.armor_toughness,Base:0},{Name:generic.attack_damage,Base:0},{Name:generic.attack_knockback,Base:1},{Name:generic.follow_range,Base:0},{Name:generic.knockback_resistance,Base:1},{Name:generic.max_health,Base:400},{Name:generic.movement_speed,Base:0},{Name:generic.scale,Base:1.5}]}
summon item_display ~ ~ ~ {transformation:{left_rotation:{axis:[0f,1f,0f],angle:0f},right_rotation:{axis:[0f,1f,0f],angle:3.142f},translation:[0f,0.4f,0f],scale:[1f,1f,1f]},NoGravity:1b,billboard:"fixed",Tags:["hcc.ticking","hcc.greathorn","hcc.new_greathorn","hcc.greathorn_model","smithed.entity"],item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_model_data": 427010, "minecraft:potion_contents": {custom_color:0}}}}
execute as @e[tag=hcc.new_greathorn,limit=1,type=item_display] run function hcc:entity/greathorn/idle
tag @e[tag=hcc.new_greathorn,limit=1] remove hcc.new_greathorn