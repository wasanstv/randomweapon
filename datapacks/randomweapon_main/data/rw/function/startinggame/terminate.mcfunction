# "execute if score game isGameStarted matches ..0 run function rw:startinggame/terminate" 를 써주세요

# 게임 매칭 취소 함수

# 매칭 취소됨! 띄우기
#execute if score count playerCount matches 2.. if score canceler cancelTick matches ..0 run title @a times 0 10 5
#execute if score count playerCount matches 2.. if score canceler cancelTick matches ..0 run title @a[tag=participating] title {"text":"매칭 취소됨","color":"red","bold":true}

# 취소시키기
execute if score count playerCount matches 2.. if score canceler cancelTick matches ..0 run tp @a[tag=participating] 8 -60 8
execute if score count playerCount matches 2.. if score canceler cancelTick matches ..0 run tp @a[tag=spectating] 8 -60 8
execute if score count playerCount matches 2.. if score canceler cancelTick matches ..0 run scoreboard players set canceler cancelTick 60