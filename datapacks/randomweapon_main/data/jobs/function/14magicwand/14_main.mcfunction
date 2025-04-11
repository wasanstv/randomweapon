# 사용자가 아이템 사용했다고 공공연하게 알려버리기

tag @a remove itemUsed14

# 쿨타임 있는 사람은 사용 불가 (specialTick 기준)
execute as @a[scores={14tick=1..}] run tag @s remove itemUsed14

# 마법 지팡이(specialNo:14) 사용 감지 (쿨타임이 없고, 사용했을 때만)
execute as @a[tag=participating,nbt={SelectedItem:{"id":"minecraft:carrot_on_a_stick","components":{"minecraft:custom_data":{"specialNo":14}}}}] unless score 14tick specialTick matches 1.. if score @s carrotUse matches 1.. run tag @s add itemUsed14

# 아이템 제거
execute as @a[tag=itemUsed14] run item replace entity @s weapon.mainhand with air

# 마법 랜덤 발동
scoreboard players set @s wandRandom 0
execute as @a[tag=itemUsed14] store result score @s wandRandom run random value 1..3

execute as @a[tag=itemUsed14] if score @s wandRandom matches 1 run function jobs:14magicwand/spell/fire
execute as @a[tag=itemUsed14] if score @s wandRandom matches 2 run function jobs:14magicwand/spell/ice
execute as @a[tag=itemUsed14] if score @s wandRandom matches 3 run function jobs:14magicwand/spell/wind

# 쿨타임 60틱 설정 (specialTick 기준)
execute as @a[tag=itemUsed14] if score 14tick specialTick matches ..0 run scoreboard players set 14tick specialTick 120

# 중복 사용 방지를 위한 carrotUse 초기화
execute as @a[tag=itemUsed14] run scoreboard players set @s carrotUse 0

scoreboard players remove 14tick specialTick 1