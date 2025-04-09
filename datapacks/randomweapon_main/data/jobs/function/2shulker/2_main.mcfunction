# 사용자가 아이템 사용했다고 공공연하게 알려버리기
tag @a remove itemUsed2
execute as @a[tag=participating,nbt={SelectedItem:{"id":"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{specialNo:2}}}}] if score @s carrotUse matches 1.. run tag @s add itemUsed2


# itemUsed2Using 이 부여되어 있다면 사용 불가판정 띄우기
execute as @a[tag=itemUsed2] if entity @s[tag=itemUsed2Using] run title @s actionbar {"text":"이미 사용중입니다!","color":"red"}
execute as @a[tag=itemUsed2] if entity @s[tag=itemUsed2Using] at @s run playsound entity.ender_eye.death block @s ~ ~ ~ 2 2

# 사용하면 itemUsed2Using 부여, 이 태그가 부여되어야만 다음 명령어가 작동
execute as @a[tag=itemUsed2] if entity @s[tag=!itemUsed2Using] run item replace entity @s weapon.mainhand with air
execute as @a[tag=itemUsed2] if entity @s[tag=!itemUsed2Using] run tag @s add itemUsed2Using


