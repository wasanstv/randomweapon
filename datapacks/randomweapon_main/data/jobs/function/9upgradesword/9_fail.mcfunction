# 공통 효과 재생
tellraw @s {"text":"어이쿠 손이 미끄러졌네!","color":"red","bold":true}
execute at @s run playsound block.anvil.destroy block @a ~ ~ ~ 0.5 1
damage @s 5

# 강화 - 웅크리기 시간 초기화
execute as @a[tag=itemUsed9] at @s if score @s 9_sneakTime matches 61 run scoreboard players set @s 9_sneakTime 0