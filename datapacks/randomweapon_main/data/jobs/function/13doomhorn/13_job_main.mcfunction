execute at @a[scores={alreadyFactor=10},tag=participating] run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.01 5
execute as @a[limit=1,scores={13_did_hit=1..}] as @a[limit=1,scores={alreadyFactor=10}] if score @s 13_got_hit matches 1.. run damage @s 5
scoreboard players set @a 13_did_hit 0
scoreboard players set @a 13_got_hit 0