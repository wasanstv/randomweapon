# 사용자가 아이템 사용했다고 공공연하게 알려버리기
tag @a remove itemUsed3
execute as @a[tag=participating,nbt={SelectedItem:{"id":"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{specialNo:3},"minecraft:enchantment_glint_override":true}}}] if score @s carrotUse matches 1.. run tag @s add itemUsed3
execute as @a[tag=itemUsed3] run tag @s remove itemUsed3User

# 오카리나 불자
execute as @a[tag=itemUsed3] run item replace entity @s weapon.mainhand with carrot_on_a_stick[custom_name=[{color:"#2B1CFF",italic:false,text:"5.1 서라운드 오카리나"},{text:" [사용 중]",color:"red",bold:true}],item_model="rabbit_foot",lore=[[{bold:true,color:"yellow",italic:false,keybind:"key.use"},{bold:false,color:"white",text:"을(를) 사용하여 "},{bold:false,color:"white",text:"오카리나를 불 수 있습니다."}],[{color:"white",italic:false,text:"오카리나를 불기 시작하면 "},{bold:true,color:"aqua",text:"반경 10블럭 내의 플레이어들이 단체로 춤을 춥니다."}],[{color:"white",italic:false,text:"춤은"},{bold:true,color:"green",italic:false,text:" 총 5초"},"동안 지속되며, 춤이 끝나면",{bold:true,color:"red",text:" 춤을 추던 사람 중 한 명이 목이 꺾여 사망합니다."}],[{bold:true,color:"dark_red",italic:false,text:"물론 자신도 사망할 수 있습니다."},{text:" 기본적으로 춤 추는 사람들은 모두 데미지를 받지 않습니다.",color:"green",bold:false,italic:false}],[""],{color:"red",italic:false,text:"쿨타임: 15초"}],custom_data={specialNo:3},enchantment_glint_override=false] 1
execute as @a[tag=itemUsed3] if score 3tick specialTick matches ..0 run scoreboard players set 3tick specialTick 400
execute as @a[tag=itemUsed3] run tag @s add itemUsed3User