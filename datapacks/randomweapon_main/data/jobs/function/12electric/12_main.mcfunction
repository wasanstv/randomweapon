# 사용자가 아이템 사용했다고 공공연하게 알려버리기
tag @a remove itemUsed12
execute as @a[tag=participating,nbt={SelectedItem:{"id":"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{specialNo:12}}}}] if score @s carrotUse matches 1.. run tag @s add itemUsed12

execute as @a[tag=itemUsed12] run item replace entity @s weapon.mainhand with air
execute as @a[tag=itemUsed12] at @s run summon lightning_bolt ~ ~ ~
execute as @a[tag=itemUsed12] run effect give @s strength 5 1 false
execute as @a[tag=itemUsed12] run effect give @s speed 5 2 false