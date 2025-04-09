# 킬카운트 초면부터 초기화
scoreboard players set @a killCounts 0

# 관전자지점 초기화
kill @e[type=area_effect_cloud,tag=spectatorPos]

# 맵별 스폰포인트/관전자 지점 설정 (spawnpointsetting 참조)
function rw:startinggame/spawnpointsetting

# 아이템 값 초기화
function jobs:specialitem_load

# alreadyFactor 초기화
scoreboard players set @a alreadyFactor 0

# 넌 이제 어드벤처다.
gamemode adventure @a[tag=participating]

# 넌 이제 관전이다.
gamemode spectator @a[tag=!participating]

# 관전자 tp
execute as @a[tag=!participating] run tp @s @a[limit=1,tag=spectatorPos]

# 인벤토리 클리어
clear @a

# 이펙트 클리어 후 풀피로 만들기
effect clear @a
effect give @a instant_health 1 50 true

# 모든 참여 플레이어에게 실명, 점프불가, 구속 부여 (4초)
effect give @a[tag=participating] slowness infinite 129 true
execute as @a[tag=participating] run attribute @s minecraft:jump_strength modifier add c_effect:no_jump -1 add_multiplied_total
effect give @a[tag=participating] minecraft:blindness infinite 129 true

# 게임 시작
tag @a remove already
tag @a remove selected1
scoreboard players operation count startRepeatNo = count allPlayers
scoreboard players set game isGameStarted 1