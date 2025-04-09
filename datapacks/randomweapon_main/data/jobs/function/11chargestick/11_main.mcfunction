# 사용자가 아이템 사용했다고 공공연하게 알려버리기
tag @a remove itemUsed11
execute as @a[tag=participating,nbt={SelectedItem:{"id":"minecraft:blaze_rod",components:{"minecraft:custom_data":{specialNo:11}}}}] run tag @s add itemUsed11

# 완충 막대기 들었을 때
tag @a remove itemUsed11Charged
execute as @a[tag=participating,nbt={SelectedItem:{"id":"minecraft:breeze_rod",components:{"minecraft:custom_data":{specialNo:11}}}}] run tag @s add itemUsed11Charged

# 미충전 막대기가 그냥 인벤에 있을 때
tag @a remove itemUsed11a
execute as @a[tag=participating,nbt={Inventory:[{"id":"minecraft:blaze_rod",components:{"minecraft:custom_data":{specialNo:11}}}]}] run tag @s add itemUsed11a


# 웅크리고 있나요오?
tag @a remove 11sneaking
tag @a[tag=itemUsed11,scores={11_isSneaking=1..}] add 11sneaking
scoreboard players set @a 11_isSneaking 0

# 웅크리면 게이지 1 씩 채우기, 안웅크리면 2 씩 줄이기
execute as @a if score @s 11_chargeRate matches ..-1 run scoreboard players set @s 11_chargeRate 0
execute as @a[tag=!itemUsed11] if score @s 11_chargeRate matches 1.. run scoreboard players remove @s 11_chargeRate 2
execute as @a[tag=itemUsed11] if entity @s[tag=!11sneaking] if score @s 11_chargeRate matches 1.. run scoreboard players remove @s 11_chargeRate 2
execute as @a[tag=itemUsed11] if entity @s[tag=11sneaking] if score @s 11_chargeRate matches 0.. run scoreboard players add @s 11_chargeRate 1

# 충전 게이지 표시
execute as @a[tag=itemUsed11a] if score @s 11_chargeRate matches 0..19 run title @s actionbar [{"text":"충전 게이지 ","color":"dark_aqua","bold":false},{"text":"[","color":"yellow","bold":true},{"text":"□□□□□□□□□□","color":"red"},{"text":"]","color":"yellow","bold":true}]
execute as @a[tag=itemUsed11a] if score @s 11_chargeRate matches 20..39 run title @s actionbar [{"text":"충전 게이지 ","color":"dark_aqua","bold":false},{"text":"[","color":"yellow","bold":true},{"text":"■□□□□□□□□□","color":"red"},{"text":"]","color":"yellow","bold":true}]
execute as @a[tag=itemUsed11a] if score @s 11_chargeRate matches 40..59 run title @s actionbar [{"text":"충전 게이지 ","color":"dark_aqua","bold":false},{"text":"[","color":"yellow","bold":true},{"text":"■■□□□□□□□□","color":"red"},{"text":"]","color":"yellow","bold":true}]
execute as @a[tag=itemUsed11a] if score @s 11_chargeRate matches 60..79 run title @s actionbar [{"text":"충전 게이지 ","color":"dark_aqua","bold":false},{"text":"[","color":"yellow","bold":true},{"text":"■■■□□□□□□□","color":"red"},{"text":"]","color":"yellow","bold":true}]
execute as @a[tag=itemUsed11a] if score @s 11_chargeRate matches 80..99 run title @s actionbar [{"text":"충전 게이지 ","color":"dark_aqua","bold":false},{"text":"[","color":"yellow","bold":true},{"text":"■■■■□□□□□□","color":"red"},{"text":"]","color":"yellow","bold":true}]
execute as @a[tag=itemUsed11a] if score @s 11_chargeRate matches 100..119 run title @s actionbar [{"text":"충전 게이지 ","color":"dark_aqua","bold":false},{"text":"[","color":"yellow","bold":true},{"text":"■■■■■□□□□□","color":"red"},{"text":"]","color":"yellow","bold":true}]
execute as @a[tag=itemUsed11a] if score @s 11_chargeRate matches 120..139 run title @s actionbar [{"text":"충전 게이지 ","color":"dark_aqua","bold":false},{"text":"[","color":"yellow","bold":true},{"text":"■■■■■■□□□□","color":"red"},{"text":"]","color":"yellow","bold":true}]
execute as @a[tag=itemUsed11a] if score @s 11_chargeRate matches 140..159 run title @s actionbar [{"text":"충전 게이지 ","color":"dark_aqua","bold":false},{"text":"[","color":"yellow","bold":true},{"text":"■■■■■■■□□□","color":"red"},{"text":"]","color":"yellow","bold":true}]
execute as @a[tag=itemUsed11a] if score @s 11_chargeRate matches 160..179 run title @s actionbar [{"text":"충전 게이지 ","color":"dark_aqua","bold":false},{"text":"[","color":"yellow","bold":true},{"text":"■■■■■■■■□□","color":"red"},{"text":"]","color":"yellow","bold":true}]
execute as @a[tag=itemUsed11a] if score @s 11_chargeRate matches 180..199 run title @s actionbar [{"text":"충전 게이지 ","color":"dark_aqua","bold":false},{"text":"[","color":"yellow","bold":true},{"text":"■■■■■■■■■□","color":"red"},{"text":"]","color":"yellow","bold":true}]

# 간지나는 충전 사운드 + 이펙트
execute as @a[tag=itemUsed11,tag=11sneaking] at @s if score @s 11_chargeRate matches 20 run playsound minecraft:entity.lightning_bolt.thunder block @a ~ ~ ~ 0.5 2
execute as @a[tag=itemUsed11,tag=11sneaking] at @s if score @s 11_chargeRate matches 40 run playsound minecraft:entity.lightning_bolt.thunder block @a ~ ~ ~ 0.5 2
execute as @a[tag=itemUsed11,tag=11sneaking] at @s if score @s 11_chargeRate matches 60 run playsound minecraft:entity.lightning_bolt.thunder block @a ~ ~ ~ 0.5 2
execute as @a[tag=itemUsed11,tag=11sneaking] at @s if score @s 11_chargeRate matches 80 run playsound minecraft:entity.lightning_bolt.thunder block @a ~ ~ ~ 0.5 2
execute as @a[tag=itemUsed11,tag=11sneaking] at @s if score @s 11_chargeRate matches 100 run playsound minecraft:entity.lightning_bolt.thunder block @a ~ ~ ~ 0.5 2
execute as @a[tag=itemUsed11,tag=11sneaking] at @s if score @s 11_chargeRate matches 120 run playsound minecraft:entity.lightning_bolt.thunder block @a ~ ~ ~ 0.5 2
execute as @a[tag=itemUsed11,tag=11sneaking] at @s if score @s 11_chargeRate matches 140 run playsound minecraft:entity.lightning_bolt.thunder block @a ~ ~ ~ 0.5 2
execute as @a[tag=itemUsed11,tag=11sneaking] at @s if score @s 11_chargeRate matches 160 run playsound minecraft:entity.lightning_bolt.thunder block @a ~ ~ ~ 0.5 2
execute as @a[tag=itemUsed11,tag=11sneaking] at @s if score @s 11_chargeRate matches 180 run playsound minecraft:entity.lightning_bolt.thunder block @a ~ ~ ~ 0.5 2
execute as @a[tag=itemUsed11,tag=11sneaking] at @s if score @s 11_chargeRate matches 20 run particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 0.5 10
execute as @a[tag=itemUsed11,tag=11sneaking] at @s if score @s 11_chargeRate matches 40 run particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 0.5 10
execute as @a[tag=itemUsed11,tag=11sneaking] at @s if score @s 11_chargeRate matches 60 run particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 0.5 10
execute as @a[tag=itemUsed11,tag=11sneaking] at @s if score @s 11_chargeRate matches 80 run particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 0.5 10
execute as @a[tag=itemUsed11,tag=11sneaking] at @s if score @s 11_chargeRate matches 100 run particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 0.5 10
execute as @a[tag=itemUsed11,tag=11sneaking] at @s if score @s 11_chargeRate matches 120 run particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 0.5 10
execute as @a[tag=itemUsed11,tag=11sneaking] at @s if score @s 11_chargeRate matches 140 run particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 0.5 10
execute as @a[tag=itemUsed11,tag=11sneaking] at @s if score @s 11_chargeRate matches 160 run particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 0.5 10
execute as @a[tag=itemUsed11,tag=11sneaking] at @s if score @s 11_chargeRate matches 180 run particle minecraft:enchanted_hit ~ ~1 ~ 0 0 0 0.5 10

# 충전 완료!
execute as @a[tag=itemUsed11] if score @s 11_chargeRate matches 200 run title @s actionbar [{"text":"충전 완료! ","color":"aqua","bold":false},{"text":"[","color":"yellow","bold":true},{"text":"■■■■■■■■■■","color":"green"},{"text":"]","color":"yellow","bold":true}]
execute as @a[tag=itemUsed11] at @s if score @s 11_chargeRate matches 200 run playsound block.conduit.activate block @a ~ ~ ~ 2 1
execute as @a[tag=itemUsed11] at @s if score @s 11_chargeRate matches 200 run playsound entity.lightning_bolt.thunder block @a ~ ~ ~ 2 1
execute as @a[tag=itemUsed11] if score @s 11_chargeRate matches 200 run item replace entity @s weapon.mainhand with breeze_rod[custom_data={specialNo:11},custom_name='{"text":"충전형 전기충격막대","color":"aqua","italic": false}',lore=['[{"bold":true,"color":"yellow","italic":false,"keybind":"key.sneak"},{"bold":false,"color":"white","text":" 키를"},{"bold":false,"color":"white","text":" 꾹 누르고 있으면 "},{"color":"blue","text":"충전"},{"bold":false,"color":"white","text":"할 수 있습니다."}]','[{"color":"white","italic":false,"text":""},{"bold":true,"color":"blue","text":"충전"}," 시 ",{"color":"dark_aqua","text":"충전 게이지"},"가 차며, ",{"color":"blue","text":"10초 충전"}," 시 가득 찹니다."]','[{"color":"white","italic":false,"text":""},{"bold":true,"color":"blue","text":"충전"}," 중에 ",{"color":"yellow","keybind":"key.sneak"}," 키를 떼면 빠르게 ",{"color":"dark_aqua","text":"충전 게이지"},"가 줄어듭니다."]','[{"bold":false,"color":"white","italic":false,"text":""},{"color":"dark_aqua","italic":false,"text":"충전 게이지"},"가 가득 찼을 시, 막대기가 ",{"bold":true,"color":"aqua","text":"완충"}," 상태가 됩니다."]','[{"color":"white","italic":false,"text":""},{"bold":true,"color":"aqua","text":"완충"}," 상태에서 상대를 공격할 시, ",{"bold":true,"color":"red","text":"12의 피해"},"와 함께 상대를 ",{"bold":true,"color":"gray","text":"3초간 구속"},"시킵니다."]','[{"color":"white","italic":false,"text":""},{"bold":true,"color":"aqua","italic":false,"text":"완충 "},"상태가 아닐 시, ",{"color":"red","text":"이 무기로는 공격이 불가합니다."}]']] 1
execute as @a[tag=itemUsed11Charged] if score @s 11_chargeRate matches 1.. run scoreboard players set @s 11_chargeRate 0

# 이걸로 때리면 맞은사람 추가 데미지 + 원래대로 돌아오기
execute as @a[tag=itemUsed11Charged] if score @s 11_did_hit matches 1.. as @a[limit=1,scores={11_got_hit=1..}] run damage @s 12
execute as @a[tag=itemUsed11Charged] if score @s 11_did_hit matches 1.. as @a[limit=1,scores={11_got_hit=1..}] run effect give @s slowness 3 1 true
execute as @a[tag=itemUsed11Charged] if score @s 11_did_hit matches 1.. as @a[limit=1,scores={11_got_hit=1..}] at @s run particle end_rod ~ ~1 ~ 0 0 0 0.1 100
execute as @a[tag=itemUsed11Charged] if score @s 11_did_hit matches 1.. as @a[limit=1,scores={11_got_hit=1..}] at @s run playsound entity.lightning_bolt.impact block @a ~ ~ ~ 2 1
execute as @a[tag=itemUsed11Charged] if score @s 11_did_hit matches 1.. as @a[limit=1,scores={11_got_hit=1..}] run item replace entity @a[tag=itemUsed11Charged] weapon.mainhand with blaze_rod[attribute_modifiers={modifiers:[{id:"attack_damage",type:"attack_damage",amount:-1,operation:"add_value"}],show_in_tooltip:false},custom_data={specialNo:11},custom_name='{"text":"충전형 전기충격막대","color":"gold","italic": false}',lore=['[{"bold":true,"color":"yellow","italic":false,"keybind":"key.sneak"},{"bold":false,"color":"white","text":" 키를"},{"bold":false,"color":"white","text":" 꾹 누르고 있으면 "},{"color":"blue","text":"충전"},{"bold":false,"color":"white","text":"할 수 있습니다."}]','[{"color":"white","italic":false,"text":""},{"bold":true,"color":"blue","text":"충전"}," 시 ",{"color":"dark_aqua","text":"충전 게이지"},"가 차며, ",{"color":"blue","text":"10초 충전"}," 시 가득 찹니다."]','[{"color":"white","italic":false,"text":""},{"bold":true,"color":"blue","text":"충전"}," 중에 ",{"color":"yellow","keybind":"key.sneak"}," 키를 떼면 빠르게 ",{"color":"dark_aqua","text":"충전 게이지"},"가 줄어듭니다."]','[{"bold":false,"color":"white","italic":false,"text":""},{"color":"dark_aqua","italic":false,"text":"충전 게이지"},"가 가득 찼을 시, 막대기가 ",{"bold":true,"color":"aqua","text":"완충"}," 상태가 됩니다."]','[{"color":"white","italic":false,"text":""},{"bold":true,"color":"aqua","text":"완충"}," 상태에서 상대를 공격할 시, ",{"bold":true,"color":"red","text":"12의 피해"},"와 함께 상대를 ",{"bold":true,"color":"gray","text":"3초간 구속"},"시킵니다."]','[{"color":"white","italic":false,"text":""},{"bold":true,"color":"aqua","italic":false,"text":"완충 "},"상태가 아닐 시, ",{"color":"red","text":"이 무기로는 공격이 불가합니다."}]']] 1
scoreboard players set @a 11_got_hit 0
scoreboard players set @a 11_did_hit 0
