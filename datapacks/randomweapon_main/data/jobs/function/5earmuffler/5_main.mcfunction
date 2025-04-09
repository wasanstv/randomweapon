# 사용자가 아이템 사용했다고 공공연하게 알려버리기
tag @a remove itemUsed5
execute as @a[tag=participating,nbt={Inventory:[{Slot:103b,"id":"minecraft:oak_button",components:{"minecraft:custom_data":{specialNo:5}}}]}] run tag @s add itemUsed5

# 나머지는 3_dancing 에서 알아서 해줄거임