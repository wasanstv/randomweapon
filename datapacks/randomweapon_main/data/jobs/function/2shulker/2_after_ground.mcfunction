# 데스 메시지 자연스럽게 띄우기 위해 정말 잠시동안만 끄기
gamerule showDeathMessages false

# ~1칸: 위력 발동 X
execute if score @s 2_fallenBlocks matches ..1 at @s run playsound entity.hostile.big_fall block @a ~ ~ ~ 1 1
execute if score @s 2_fallenBlocks matches ..1 run tag @s remove itemUsed2Ending

# 2~5칸: 반경 5블럭, 4데미지
execute if score @s 2_fallenBlocks matches 2..5 at @s run particle minecraft:crit ~ ~0.1 ~ 2 0 2 0.1 100
execute if score @s 2_fallenBlocks matches 2..5 at @s run playsound minecraft:entity.player.attack.knockback block @a ~ ~ ~ 2 1
execute if score @s 2_fallenBlocks matches 2..5 at @s run playsound block.rooted_dirt.place block @a ~ ~ ~ 2 1
execute if score @s 2_fallenBlocks matches 2..5 at @s as @a[tag=!itemUsed2Ending,distance=0..3,tag=participating] run damage @s 4
execute if score @s 2_fallenBlocks matches 2..5 at @s as @a[tag=!itemUsed2Ending,distance=0..3,tag=participating] run effect give @s slowness 3 0 true
execute if score @s 2_fallenBlocks matches 2..5 run tag @s remove itemUsed2Ending

# 6~10칸: 반경 7블럭, 10데미지
execute if score @s 2_fallenBlocks matches 6..10 at @s run particle minecraft:crit ~ ~0.1 ~ 3 0 3 0.1 200
execute if score @s 2_fallenBlocks matches 6..10 at @s run particle minecraft:poof ~ ~0.1 ~ 3 0 3 0.1 400
execute if score @s 2_fallenBlocks matches 6..10 at @s run playsound block.anvil.place block @a ~ ~ ~ 1 1
execute if score @s 2_fallenBlocks matches 6..10 at @s as @a[tag=!itemUsed2Ending,distance=0..5,tag=participating] run effect give @s slowness 3 0 true
execute if score @s 2_fallenBlocks matches 6..10 at @s as @a[tag=!itemUsed2Ending,distance=0..5,tag=participating] run damage @s 10
execute if score @s 2_fallenBlocks matches 6..10 run tag @s remove itemUsed2Ending

# 11칸: 반경 9블럭, 20데미지
execute if score @s 2_fallenBlocks matches 11.. at @s run particle minecraft:crit ~ ~0.1 ~ 4 0 4 0.1 400
execute if score @s 2_fallenBlocks matches 11.. at @s run particle minecraft:portal ~ ~0.1 ~ 4 0 4 0.1 400
execute if score @s 2_fallenBlocks matches 11.. at @s run particle minecraft:poof ~ ~0.1 ~ 4 0 4 0.1 400
execute if score @s 2_fallenBlocks matches 11.. at @s run playsound entity.zombie.break_wooden_door block @a ~ ~ ~ 1 0.5
execute if score @s 2_fallenBlocks matches 11.. at @s run playsound minecraft:block.portal.trigger block @a ~ ~ ~ 0.2 1
execute if score @s 2_fallenBlocks matches 11.. at @s as @a[tag=!itemUsed2Ending,distance=0..7,tag=participating] run damage @s 20
execute if score @s 2_fallenBlocks matches 11.. at @s as @a[tag=!itemUsed2Ending,distance=0..7,tag=participating] run effect give @s slowness 3 0 true
execute if score @s 2_fallenBlocks matches 11.. run tag @s remove itemUsed2Ending

# 이걸로 죽는 사람 생기면...
execute as @a[scores={isDeath=1..}] run scoreboard players add @a[tag=itemUsed2Using] killCounts 1
execute as @a[scores={isDeath=1..}] run tellraw @a [{"selector":"@s"},{"text":"이(가) "},{"selector": "@a[tag=itemUsed2Using]"},{"text":"의 셜커 껍질에 뭉개졌습니다."}]
execute as @a[scores={isDeath=1..}] run scoreboard players add @a[tag=itemUsed2Using] killedItem 1

# 데스 메시지 켜기
gamerule showDeathMessages true