# 데스매치 돌입 함수

execute as @a at @s run playsound entity.wither.spawn block @s ~ ~ ~ 1 1
title @a times 0 30 10
title @a title {"text":"DEATHMATCH","color":"dark_red"}
scoreboard players set timer timerImmStart 1
scoreboard players set timer timerFormat 1
#        추후 게임 종료 함수가 완성될 시 2로 바꿔주기 v
scoreboard players set timer timerEndFormat 2
scoreboard players set timer timerIndicateMode 1
scoreboard players set timer istimerOn 0

# 직업 특성: 데스매치 돌입 시 죽음의 방관자에게 종말의 뿔피리 지급
execute as @a[scores={alreadyFactor=10},tag=participating] run give @s carrot_on_a_stick[item_model="goat_horn",custom_data={specialNo:13},custom_name='{"text":"종말의 뿔피리","color":"#740000","italic": false}',lore=['[{"bold":true,"color":"yellow","italic":false,"keybind":"key.use"},{"bold":false,"color":"dark_red","text":"키로 자신을 제외한 모두에게 종말을 일으킵니다."}]','[""]','{"text":"사용 시 소모됩니다.","color":"red","italic": false}']] 1
