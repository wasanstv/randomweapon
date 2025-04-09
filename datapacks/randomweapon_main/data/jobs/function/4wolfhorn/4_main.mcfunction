# 늑대 뿔 피리

# 사용자가 아이템 사용했다고 공공연하게 알려버리기
tag @a remove itemUsed4
execute as @a[tag=participating,nbt={SelectedItem:{"id":"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{specialNo:4},"minecraft:enchantment_glint_override":true}}}] if score @s carrotUse matches 1.. run tag @s add itemUsed4

# 본격적인 늑대 버프
execute as @a[tag=itemUsed4] run item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_name='[{"color":"#a36e56","italic":false,"text":"늑대 뿔 피리"},{"text":" [사용중]","color":"red","bold":true}]',item_model="goat_horn",lore=['[{"bold":true,"color":"yellow","italic":false,"keybind":"key.use"},{"bold":false,"color":"white","text":"을(를) 사용하여 "}]','[{"color":"green","text":"반경 20 블럭의 늑대","bold":true,"italic":false},{"bold":false,"color":"white","text":"에게 "}]','[{"color":"#41d8f0","text":"신속 III를 10초간 부여","bold":true,"italic":false},{"bold":false,"color":"white","text":"합니다."}]','[""]','{"text":"쿨다운: 20초","color":"red","italic":false}'],custom_data={specialNo:4},enchantment_glint_override=false] 1
execute as @a[tag=itemUsed4] run scoreboard players set 4tick specialTick 400
execute as @a[tag=itemUsed4] at @s run tag @e[distance=0..20,type=wolf] add itemUsed4Wolf
execute as @a[tag=itemUsed4] at @s run playsound item.goat_horn.sound.0 block @a ~ ~ ~ 2 1
execute as @a[tag=itemUsed4] at @e[tag=itemUsed4Wolf] run particle minecraft:glow ~ ~0.5 ~ 0 0 0 0.1 100
execute as @a[tag=itemUsed4] run effect give @e[type=wolf,tag=itemUsed4Wolf] speed 10 2
tag @e[type=wolf] remove itemUsed4Wolf
