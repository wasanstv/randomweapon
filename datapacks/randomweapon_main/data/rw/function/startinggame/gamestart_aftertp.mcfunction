# 게임 시작 시 "TP 이후" 타이밍에 필요한 커맨드가 있을 시 여따가 적으십쇼


# 사용되었던 스폰포인트 삭제
kill @e[type=area_effect_cloud,tag=spawnpointPos]

# 종소리 ON
execute as @a at @s run playsound block.bell.use block @s ~ ~ ~ 2 1

# 카운터 시작 (gamestart_counter)
scoreboard players set time2 startTimerTick 81