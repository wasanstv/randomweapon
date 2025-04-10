# 맵 선택 +
execute if score map mapNo matches ..3 as @a at @s run playsound block.note_block.pling block @a ~ ~ ~ 1 1
execute if score map mapNo matches ..3 run scoreboard players add map mapNo 1
execute if score map mapNo matches ..4 run function rw:startinggame/map_select_indicate