# 사용자가 아이템 사용했다고 공공연하게 알려버리기
tag @a remove itemUsed13
execute as @a[tag=participating,nbt={SelectedItem:{"id":"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{specialNo:13}}}}] if score @s carrotUse matches 1.. run tag @s add itemUsed13

execute as @a[tag=itemUsed13] run item replace entity @s weapon.mainhand with air
execute as @a[tag=itemUsed13] as @a at @s run playsound item.goat_horn.sound.2 block @s ~ ~ ~ 2 0.5
execute as @a[tag=itemUsed13] run tellraw @a {text:"종말의 뿔피리 소리가 울러 퍼지고 있습니다...",color:"dark_red"}
execute as @a[tag=itemUsed13] run effect give @a[tag=!itemUsed13] wither infinite 5 true
execute as @a[tag=itemUsed13] run effect give @a[tag=!itemUsed13] blindness infinite 5 true
execute as @a[tag=itemUsed13] run effect give @a[tag=!itemUsed13] slowness infinite 129 true
