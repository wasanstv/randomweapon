# 사용자가 아이템 사용했다고 공공연하게 알려버리기
tag @a remove itemUsed8
execute as @a[tag=participating,nbt={SelectedItem:{"id":"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{specialNo:8}}}}] run tag @s add itemUsed8

# 바라보고 있나요..?
tag @a remove itemUsed8Selected1
execute as @a[tag=itemUsed8] at @s anchored eyes facing entity @a[tag=participating,distance=6..,limit=1,sort=nearest,tag=!itemUsed8] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run tag @a[distance=6..,limit=1,sort=nearest,tag=!itemUsed8] add itemUsed8Selected1

# itemUsed8Selected1 숫자 봐주자...
execute store result score count 8_SelectedCount run execute if entity @a[tag=itemUsed8Selected1]

# 바라보고 있는 사람 지정해주기
execute if score count 8_SelectedCount matches ..0 run title @a[tag=itemUsed8] actionbar [{"text":"스텐바이; 초점: ","color":"#389ef1"},{"text":"잡히지 않음","color":"red"}]
execute if score count 8_SelectedCount matches 1.. run title @a[tag=itemUsed8] actionbar [{"text":"스텐바이; 초점: ","color":"#389ef1"},{"selector": "@a[tag=itemUsed8Selected1]","color":"red"}]

# itemUsed8 : 셔터찬스 = itemUsed8Shutter
# itemUsed8Selected1 : 초점 고정자 후보
# itemUsed8Selected2 : 초점 고정

# 셔터찬스 부여 후 itemUsed8Selected2 부여, + 카메라 압수
execute if score count 8_SelectedCount matches 1.. as @a[tag=itemUsed8] if score @s carrotUse matches 1.. run scoreboard players set @a 8_got_hit 0
execute if score count 8_SelectedCount matches 1.. as @a[tag=itemUsed8] if score @s carrotUse matches 1.. run scoreboard players set @a 8_did_hit 0
execute if score count 8_SelectedCount matches 1.. as @a[tag=itemUsed8] if score @s carrotUse matches 1.. run tag @s add itemUsed8Shutter
execute as @a[tag=itemUsed8Shutter] run tag @a[tag=itemUsed8Selected1] add itemUsed8Selected2
execute if score count 8_SelectedCount matches 1.. as @a[tag=itemUsed8Shutter] at @s run scoreboard players set 8tick specialTick 240
execute if score count 8_SelectedCount matches 1.. as @a[tag=itemUsed8Shutter] at @s run playsound block.iron_door.open block @a ~ ~ ~ 2 2
execute if score count 8_SelectedCount matches 1.. as @a[tag=itemUsed8Shutter] at @s run particle minecraft:flash ^ ^1 ^1 0 0 0 0 2
execute if score count 8_SelectedCount matches 1.. as @a[tag=itemUsed8Shutter] at @s run tellraw @a[tag=itemUsed8Selected2] {"text":"주의하세요. 초점 고정되었습니다!","color":"dark_red"}
execute if score count 8_SelectedCount matches 1.. as @a[tag=itemUsed8Shutter] at @a[tag=itemUsed8Selected2] run particle end_rod ~ ~1 ~ 0.1 0.1 0.1 0.1 100
execute if score count 8_SelectedCount matches 1.. as @a[tag=itemUsed8Shutter] at @a[tag=itemUsed8Selected2] run playsound entity.ghast.scream block @a[tag=itemUsed8Selected2] ~ ~ ~ 0.5 1
execute as @a[tag=itemUsed8Shutter] run clear @s carrot_on_a_stick[custom_data={specialNo:8}] 1

