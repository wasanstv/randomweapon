# 사용자가 아이템 사용했다고 공공연하게 알려버리기
tag @a remove itemUsed9
execute as @a[tag=participating,nbt={SelectedItem:{"id":"minecraft:iron_sword",components:{"minecraft:custom_data":{specialNo:9,upgrade:0}}}}] run tag @s add itemUsed9
execute as @a[tag=participating,nbt={SelectedItem:{"id":"minecraft:iron_sword",components:{"minecraft:custom_data":{specialNo:9,upgrade:1}}}}] run tag @s add itemUsed9
execute as @a[tag=participating,nbt={SelectedItem:{"id":"minecraft:iron_sword",components:{"minecraft:custom_data":{specialNo:9,upgrade:2}}}}] run tag @s add itemUsed9
execute as @a[tag=participating,nbt={SelectedItem:{"id":"minecraft:iron_sword",components:{"minecraft:custom_data":{specialNo:9,upgrade:3}}}}] run tag @s add itemUsed9
execute as @a[tag=participating,nbt={SelectedItem:{"id":"minecraft:iron_sword",components:{"minecraft:custom_data":{specialNo:9,upgrade:4}}}}] run tag @s add itemUsed9
execute as @a[tag=participating,nbt={SelectedItem:{"id":"minecraft:iron_sword",components:{"minecraft:custom_data":{specialNo:9,upgrade:5}}}}] run tag @s add itemUsed9
execute as @a[tag=participating,nbt={SelectedItem:{"id":"minecraft:iron_sword",components:{"minecraft:custom_data":{specialNo:9,upgrade:6}}}}] run tag @s add itemUsed9

# 웅크리기 여부
tag @a remove sneaking
tag @a[scores={9_isSneaking=1..}] add sneaking
scoreboard players set @a 9_isSneaking 0


# 이거 들고 쉬프트 누르면 웅크리기 시간 세기
execute as @a[tag=!itemUsed9] run scoreboard players set @s 9_sneakTime 0
execute as @a[tag=itemUsed9,tag=!sneaking] run scoreboard players set @s 9_sneakTime 0
execute as @a[tag=itemUsed9,tag=sneaking] run scoreboard players add @s 9_sneakTime 1

# 강화 중...
execute as @a[tag=itemUsed9] at @s if score @s 9_sneakTime matches 1 run playsound block.anvil.place block @a ~ ~ ~ 1 1
execute as @a[tag=itemUsed9] at @s if score @s 9_sneakTime matches 21 run playsound block.anvil.place block @a ~ ~ ~ 1 1
execute as @a[tag=itemUsed9] at @s if score @s 9_sneakTime matches 41 run playsound block.anvil.place block @a ~ ~ ~ 1 1

execute as @a[tag=itemUsed9] at @s if score @s 9_sneakTime matches 1..20 run title @s actionbar [{"text":"🛠 강화 중...","color": "yellow"},{"text": " [ 3초 남음 ]","color":"green"}]
execute as @a[tag=itemUsed9] at @s if score @s 9_sneakTime matches 21..41 run title @s actionbar [{"text":"🛠 강화 중...","color": "yellow"},{"text": " [ 2초 남음 ]","color":"green"}]
execute as @a[tag=itemUsed9] at @s if score @s 9_sneakTime matches 41..60 run title @s actionbar [{"text":"🛠 강화 중...","color": "yellow"},{"text": " [ 1초 남음 ]","color":"green"}]

# 강화! (9_sneakTime = 61)
execute as @a[tag=itemUsed9] at @s if score @s 9_sneakTime matches 61 store result score @s 9_random run random value 1..100

# 강화 - 1강
execute as @a[tag=itemUsed9,nbt={SelectedItem:{components:{"minecraft:custom_data":{upgrade:0}}}}] at @s if score @s 9_sneakTime matches 61 if score @s 9_random matches 1..95 run function jobs:9upgradesword/9_success
execute as @a[tag=itemUsed9,nbt={SelectedItem:{components:{"minecraft:custom_data":{upgrade:0}}}}] at @s if score @s 9_sneakTime matches 61 if score @s 9_random matches 96..100 run function jobs:9upgradesword/9_fail

# 강화 - 2강
execute as @a[tag=itemUsed9,nbt={SelectedItem:{components:{"minecraft:custom_data":{upgrade:1}}}}] at @s if score @s 9_sneakTime matches 61 if score @s 9_random matches 1..80 run function jobs:9upgradesword/9_success
execute as @a[tag=itemUsed9,nbt={SelectedItem:{components:{"minecraft:custom_data":{upgrade:1}}}}] at @s if score @s 9_sneakTime matches 61 if score @s 9_random matches 81..100 run function jobs:9upgradesword/9_fail

# 강화 - 3강
execute as @a[tag=itemUsed9,nbt={SelectedItem:{components:{"minecraft:custom_data":{upgrade:2}}}}] at @s if score @s 9_sneakTime matches 61 if score @s 9_random matches 1..50 run function jobs:9upgradesword/9_success
execute as @a[tag=itemUsed9,nbt={SelectedItem:{components:{"minecraft:custom_data":{upgrade:2}}}}] at @s if score @s 9_sneakTime matches 61 if score @s 9_random matches 51..100 run function jobs:9upgradesword/9_fail

# 강화 - 4강
execute as @a[tag=itemUsed9,nbt={SelectedItem:{components:{"minecraft:custom_data":{upgrade:3}}}}] at @s if score @s 9_sneakTime matches 61 if score @s 9_random matches 1..30 run function jobs:9upgradesword/9_success
execute as @a[tag=itemUsed9,nbt={SelectedItem:{components:{"minecraft:custom_data":{upgrade:3}}}}] at @s if score @s 9_sneakTime matches 61 if score @s 9_random matches 31..100 run function jobs:9upgradesword/9_fail

# 강화 - 5강
execute as @a[tag=itemUsed9,nbt={SelectedItem:{components:{"minecraft:custom_data":{upgrade:4}}}}] at @s if score @s 9_sneakTime matches 61 if score @s 9_random matches 1..20 run function jobs:9upgradesword/9_success
execute as @a[tag=itemUsed9,nbt={SelectedItem:{components:{"minecraft:custom_data":{upgrade:4}}}}] at @s if score @s 9_sneakTime matches 61 if score @s 9_random matches 21..100 run function jobs:9upgradesword/9_fail

# 강화 - 6강
execute as @a[tag=itemUsed9,nbt={SelectedItem:{components:{"minecraft:custom_data":{upgrade:5}}}}] at @s if score @s 9_sneakTime matches 61 if score @s 9_random matches 1..20 run function jobs:9upgradesword/9_success
execute as @a[tag=itemUsed9,nbt={SelectedItem:{components:{"minecraft:custom_data":{upgrade:5}}}}] at @s if score @s 9_sneakTime matches 61 if score @s 9_random matches 21..100 run function jobs:9upgradesword/9_fail

# 강화 - 7강
execute as @a[tag=itemUsed9,nbt={SelectedItem:{components:{"minecraft:custom_data":{upgrade:6}}}}] at @s if score @s 9_sneakTime matches 61 if score @s 9_random matches 1..10 run function jobs:9upgradesword/9_success
execute as @a[tag=itemUsed9,nbt={SelectedItem:{components:{"minecraft:custom_data":{upgrade:6}}}}] at @s if score @s 9_sneakTime matches 61 if score @s 9_random matches 11..100 run function jobs:9upgradesword/9_fail



