title @a times 0 20 5

# 타이틀
execute if score map mapNo matches 0 run title @a subtitle {"text":"테스트용 맵","color":"gold"}
execute if score map mapNo matches 1 run title @a subtitle {"text":"스키장","color":"gold"}
execute if score map mapNo matches 2 run title @a subtitle {"text":"공사장","color":"gold"}
execute if score map mapNo matches 3 run title @a subtitle {"text":"캠핑장","color":"gold"}
execute if score map mapNo matches 4 run title @a subtitle {"text":"도서관","color":"gold"}

# 표지판


title @a title ""

# 맵 모형
execute if score map mapNo matches 0 run clone -10 -60 33 -6 -56 29 6 -60 -8
execute if score map mapNo matches 1 run clone 20 -60 33 24 -56 29 6 -60 -8
execute if score map mapNo matches 2 run clone 14 -60 33 18 -56 29 6 -60 -8
execute if score map mapNo matches 3 run clone 8 -60 33 12 -56 29 6 -60 -8
execute if score map mapNo matches 4 run clone 2 -60 33 6 -56 29 6 -60 -8