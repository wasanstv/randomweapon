execute if score map mapNo matches 1.. as @a at @s run playsound block.note_block.pling block @a ~ ~ ~ 1 1
execute if score map mapNo matches 1.. run scoreboard players remove map mapNo 1
execute if score map mapNo matches 0.. run function rw:startinggame/map_select_indicate