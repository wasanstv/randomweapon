# 스폰포인트 지점에는 area_effect_cloud 소환, 태그는 spawnpointPos 로 해주면 됨.
# 관전자 지점에는 태그를 spectatorPos 로 해주면 됨.
# 추가로 해당 지역에 청크로딩도 해주길 바람.
# 소환 커맨드: summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
# 맵 번호 요약
# 0 : 테스트
# 1 : 스키장
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10
# ------------------------------------------------------------------------------

#0 : 테스트 (스폰포인트 20개)

execute positioned 32 -60 5 if score map mapNo matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spectatorPos"]}
execute positioned 27 -60 10 if score map mapNo matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 27 -60 5 if score map mapNo matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 27 -60 0 if score map mapNo matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 29 -60 8 if score map mapNo matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 29 -60 5 if score map mapNo matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 29 -60 2 if score map mapNo matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 31 -60 6 if score map mapNo matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 31 -60 4 if score map mapNo matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 32 -60 10 if score map mapNo matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 32 -60 8 if score map mapNo matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 32 -60 2 if score map mapNo matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 32 -60 0 if score map mapNo matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 37 -60 10 if score map mapNo matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 37 -60 5 if score map mapNo matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 37 -60 0 if score map mapNo matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 35 -60 8 if score map mapNo matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 35 -60 5 if score map mapNo matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 35 -60 2 if score map mapNo matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 33 -60 6 if score map mapNo matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 33 -60 4 if score map mapNo matches 0 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}


#1 : 스키장
execute if score map mapNo matches 1 run time set midnight
execute positioned 133 -39 -594 if score map mapNo matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spectatorPos"]}
execute positioned 180 -39 -607 if score map mapNo matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 181 -50 -564 if score map mapNo matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 168 -48 -579 if score map mapNo matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 154 -50 -595 if score map mapNo matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 78 -33 -577 if score map mapNo matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 78 -33 -624 if score map mapNo matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 144 -49 -621 if score map mapNo matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 161 -50 -620 if score map mapNo matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 161 -50 -612 if score map mapNo matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 161 -50 -604 if score map mapNo matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 113 -41 -577 if score map mapNo matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 113 -41 -612 if score map mapNo matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 91 -33 -612 if score map mapNo matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 91 -33 -597 if score map mapNo matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 91 -33 -581 if score map mapNo matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 176 -47 -615 if score map mapNo matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 184 -47 -615 if score map mapNo matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 176 -47 -611 if score map mapNo matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 184 -47 -611 if score map mapNo matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}
execute positioned 180 -43 -618 if score map mapNo matches 1 run summon area_effect_cloud ~ ~ ~ {Duration:5000,Tags:["spawnpointPos"]}




#2

#3