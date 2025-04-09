# 사용자가 아이템 사용했다고 공공연하게 알려버리기
tag @a remove itemUsed6
execute as @a[tag=participating,nbt={SelectedItem:{"id":"minecraft:tipped_arrow",components:{"minecraft:custom_data":{specialNo:6}}}}] run tag @s add itemUsed6

execute as @a[tag=itemUsed6] if score @s 6_did_hit matches 1.. as @a[limit=1,scores={6_got_hit=1..}] at @s run playsound block.honey_block.break block @a ~ ~ ~ 2 1
execute as @a[tag=itemUsed6] if score @s 6_did_hit matches 1.. as @a[limit=1,scores={6_got_hit=1..}] at @s run particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0 0 0 0.5 100
execute as @a[tag=itemUsed6] if score @s 6_did_hit matches 1.. as @a[limit=1,scores={6_got_hit=1..}] at @a[tag=itemUsed6,scores={6_did_hit=1..}] run particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 20
execute as @a[tag=itemUsed6] if score @s 6_did_hit matches 1.. as @a[limit=1,scores={6_got_hit=1..}] at @s run damage @s 6
execute as @a[tag=itemUsed6] if score @s 6_did_hit matches 1.. as @a[limit=1,scores={6_got_hit=1..}] run effect give @a[tag=itemUsed6,scores={6_did_hit=1..}] instant_health 1 0 true
execute as @a[tag=itemUsed6] if score @s 6_did_hit matches 1.. as @a[limit=1,scores={6_got_hit=1..}] run clear @a[tag=itemUsed6,scores={6_did_hit=1..}] tipped_arrow[custom_data={specialNo:6}] 1
scoreboard players set @a 6_got_hit 0
scoreboard players set @a 6_did_hit 0