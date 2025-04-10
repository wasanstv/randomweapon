# 사용자가 아이템 사용했다고 공공연하게 알려버리기
tag @a remove itemUsed1
execute as @a[tag=participating,nbt={SelectedItem:{"id":"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{specialNo:1}}}}] if score @s carrotUse matches 1.. run tag @s add itemUsed1


# 본격적인 늑대 소환
execute as @a[tag=itemUsed1] run item replace entity @s weapon.mainhand with air
execute as @a[tag=itemUsed1] at @s run summon wolf ~ ~ ~ {Tags:["itemUsed1Wolf"],body_armor_item:{id:"minecraft:wolf_armor",count:1}}
execute as @a[tag=itemUsed1] at @e[tag=itemUsed1Wolf] run playsound block.lantern.break block @a ~ ~ ~ 2 1
execute as @a[tag=itemUsed1] at @e[tag=itemUsed1Wolf] run playsound block.chain.place block @a ~ ~ ~ 2 1
execute as @a[tag=itemUsed1] at @e[tag=itemUsed1Wolf] run playsound entity.wolf.growl block @a ~ ~ ~ 0.3 1
execute as @a[tag=itemUsed1] at @e[tag=itemUsed1Wolf] run particle white_smoke ~ ~0.2 ~ 0.2 0.2 0.2 0.1 50
execute as @a[tag=itemUsed1] run data modify entity @e[tag=itemUsed1Wolf,limit=1,sort=nearest] Owner set from entity @s UUID
execute as @a[tag=itemUsed1] run data merge entity @e[tag=itemUsed1Wolf,limit=1,sort=nearest] {CollarColor:14b}
tag @e[type=wolf] remove itemUsed1Wolf
