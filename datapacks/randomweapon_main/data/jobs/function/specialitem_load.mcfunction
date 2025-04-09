# 특수 아이템 전용 load
# load 함수, game_reload 함수, gamestart 함수에 쓰일 예정이다.

# 데스카운트 아이템 전용 / 킬카운트 아이템 전용 (킬 났을 때 이야기 이런저런거 위해서 씀)
scoreboard objectives add isDeathItem deathCount
scoreboard players set @a isDeathItem 0
scoreboard objectives add killedItem playerKillCount
scoreboard players set @a killedItem 0

# 킬 메시지 변수, 가짜플레이어 이름: message
scoreboard objectives add showKillMessage dummy
scoreboard players set message showKillMessage 0

# 바니바니바니바니 당근 당근
scoreboard objectives add carrotUse minecraft.used:minecraft.carrot_on_a_stick

# carrotUse 초기화 (버그 방지용)
scoreboard players set @a carrotUse 0

# 통합 틱 스코어보드 (플레이어 이름은 "(번호)tick" 으로 통일)
scoreboard objectives add specialTick dummy

# 통합 틱 스코어보드 초기화 (꼭 쓰면은 여기다가 적어서 초기화 해주셈!!)
scoreboard players set 3tick specialTick 0
scoreboard players set 4tick specialTick 0
scoreboard players set 8tick specialTick 0

# 스코어 만들기 & 초기화
#1 X

#2
tag @a remove itemUsed2Using
tag @a remove itemUsed2Ending
tag @a remove item3GetP
scoreboard objectives add 2_fallenBlocks dummy
scoreboard players set @a 2_fallenBlocks 0
scoreboard objectives add 2_fallenBlocksB dummy
scoreboard players set @a 2_fallenBlocksB 0

#3
scoreboard objectives add 3_random dummy
scoreboard players set rand 3_random 0
tag @a remove itemUsed3User
tag @a remove okarinaDanceDeath

#4
tag @e remove itemUsed4Wolf
tag @a remove item4GetP

#6
scoreboard objectives add 6_got_hit minecraft.custom:damage_taken
scoreboard objectives add 6_did_hit minecraft.custom:damage_dealt
scoreboard players set @a 6_got_hit 0
scoreboard players set @a 6_did_hit 0

#8
tag @a remove itemUsed8Selected1
tag @a remove itemUsed8Selected2
tag @a remove itemUsed8Shutter
scoreboard objectives add 8_SelectedCount dummy
scoreboard players set count 8_SelectedCount 0
scoreboard objectives add 8_got_hit minecraft.custom:damage_taken
scoreboard objectives add 8_did_hit minecraft.custom:damage_dealt
scoreboard players set @a 8_got_hit 0
scoreboard players set @a 8_did_hit 0

#9
tag @a remove sneaking
scoreboard objectives add 9_isSneaking minecraft.custom:sneak_time
scoreboard objectives add 9_sneakTime dummy
scoreboard players set @a 9_isSneaking 0
scoreboard players set @a 9_sneakTime 0
scoreboard objectives add 9_random dummy
scoreboard players reset @a 9_random

#11
tag @a remove 11sneaking
scoreboard objectives add 11_isSneaking minecraft.custom:sneak_time
scoreboard objectives add 11_chargeRate dummy
scoreboard players set @a 11_chargeRate 0
scoreboard players set @a 11_isSneaking 0
scoreboard objectives add 11_got_hit minecraft.custom:damage_taken
scoreboard objectives add 11_did_hit minecraft.custom:damage_dealt
scoreboard players set @a 11_got_hit 0
scoreboard players set @a 11_did_hit 0

#13
scoreboard objectives add 13_got_hit minecraft.custom:damage_taken
scoreboard objectives add 13_did_hit minecraft.custom:damage_dealt
scoreboard players set @a 13_did_hit 0
scoreboard players set @a 13_got_hit 0

# 아이템 1(늑대 케이지) 관련, 늑대 전부 죽이기.
kill @e[type=wolf]

# 아이템 3(오카리나) 관련, 점프 불가 빼기
execute as @a run attribute @s jump_strength modifier remove item:3_item_nojump