# 사용자가 아이템 사용했다고 공공연하게 알려버리기
tag @a remove itemUsed7
execute as @a[tag=participating,nbt={SelectedItem:{"id":"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{specialNo:7}}}}] if score @s carrotUse matches 1.. run tag @s add itemUsed7

execute as @a[tag=itemUsed7] run item replace entity @s weapon.mainhand with air
execute as @a[tag=itemUsed7] at @s run particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.5 100
execute as @a[tag=itemUsed7] at @s run playsound block.fire.extinguish block @a ~ ~ ~ 2 1
execute as @a[tag=itemUsed7] run effect give @s invisibility 1 0 true