# 사용자가 아이템 사용했다고 공공연하게 알려버리기
tag @a remove itemUsed10
execute as @a[tag=participating,nbt={SelectedItem:{"id":"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{specialNo:10}}}}] if score @s carrotUse matches 1.. run tag @s add itemUsed10

execute as @a[tag=itemUsed10] run item replace entity @s weapon.mainhand with air
execute as @a[tag=itemUsed10] at @s run playsound item.shield.block block @a ~ ~ ~ 2 1
execute as @a[tag=itemUsed10] run effect give @s slowness 40 3 false
execute as @a[tag=itemUsed10] run effect give @s resistance 40 2 false