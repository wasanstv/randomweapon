execute at @s run playsound entity.item.break block @a ~ ~ ~ 0.2 0.5
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~2 ~ 0.1 0 0.1 0.01 30

execute as @a[tag=itemUsed2Using,nbt={OnGround:0b}] run effect give @s resistance 1 129 true
execute as @a[tag=itemUsed2Using,nbt={OnGround:0b}] store result score @s 2_fallenBlocks run data get entity @s FallDistance 1
execute as @a[tag=itemUsed2Using,nbt={OnGround:0b}] run scoreboard players operation @s 2_fallenBlocks -= @s 2_fallenBlocksB

execute as @a[tag=itemUsed2Using,nbt={OnGround:1b}] run tag @s add itemUsed2Ending
execute as @a[tag=itemUsed2Using,nbt={OnGround:1b}] run function jobs:2shulker/2_after_ground
execute as @a[tag=itemUsed2Using,nbt={OnGround:1b}] run tag @s remove itemUsed2Using