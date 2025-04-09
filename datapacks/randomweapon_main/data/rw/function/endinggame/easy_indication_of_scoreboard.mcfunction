tellraw @a ""
tellraw @a {"text":"------RESULT------","color":"#0a7a00"}
execute as @a[tag=participating,limit=1] if score ingamecount playerCount matches 1 run tellraw @a [{"text":"우승자: ","color":"#0da000","bold":true},{"selector":"@s","color":"#fffb16","bold":true}]
execute if score ingamecount playerCount matches 0 run tellraw @a [{"text":"우승자: ","color":"#0da000","bold":true},{"text":"없음","color":"#fc5454","bold":false,"italic":true}]
tag @a remove already2
tag @a remove selected2
execute store result score count endingRepeatNo run execute if entity @a[tag=already]
scoreboard players set game isGameEnded 1