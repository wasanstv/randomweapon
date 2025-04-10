# 보상받는 사람 셀렉터는 @s 사용

# 파티클 재생
execute at @s run particle minecraft:glow ~ ~0.5 ~ 0.5 1 0.5 0.1 50

# 공통: 재생 III 10초
effect give @s regeneration 10 2 true

# 직업별
# alreadyFactor 의 번호는 직업 번호를 의미하며, 그 번호의 직업에 맞게 킬 보너스를 쥐어줍니다.

#1
execute if score @s alreadyFactor matches 1 run give @s wind_charge[custom_name={text:"파수꾼의 돌풍구",italic:false}] 2
#2
execute if score @s alreadyFactor matches 2 run give @s wind_charge 4
execute if score @s alreadyFactor matches 2 run give @s carrot_on_a_stick[custom_name={color:"#DE09DE",italic:false,text:"단단한 셜커 껍질"},item_model="shulker_shell",lore=[[{bold:true,color:"yellow",italic:false,keybind:"key.use"},{bold:false,color:"white",text:"을(를) 사용하여 "},{bold:false,color:"white",text:"셜커 껍질을 탈 수 있습니다."}],[{color:"white",italic:false,text:"셜커 껍질을 탑승하기 시작하면 "},{bold:true,color:"aqua",text:"탑승한 위치로부터 떨어지는 거리"},"가 계산됩니다."],[{color:"white",italic:false,text:"사용한 후 바닥에 닿는다면 "},{bold:true,color:"red",text:"특정 범위에 특정 데미지"},"를 주고, ",{bold:true,color:"gray",text:"3초간 구속 1"},"을 부여합니다"],[{color:"white",italic:false,text:"떨어진 거리가 클수록 "},{bold:true,color:"red",text:"위력과 범위"},"가 늘어납니다."],[{bold:true,color:"gold",italic:false,text:"~1칸"},{bold:false,color:"white",text:": 위력 발동 X"}],[{bold:true,color:"gold",italic:false,text:"2칸 ~ 5칸"},{bold:false,color:"white",text:": 반경 5블럭, 4 데미지"}],[{bold:true,color:"gold",italic:false,text:"6칸 ~ 10칸"},{bold:false,color:"white",text:": 반경 7블럭, 10 데미지"}],[{bold:true,color:"gold",italic:false,text:"11칸 ~"},{bold:false,color:"white",text:": 반경 9블럭, 20 데미지"}],[""],{text:"사용 시 소모됩니다.",color:"red",italic:false}],custom_data={specialNo:2}] 2
#3
execute if score @s alreadyFactor matches 3 run give @s wooden_sword[max_damage=3,item_model="stick",custom_name={italic:false,text:"조금 날카로운 지휘봉"},lore=[[{text:"날카롭게 갈린 지휘봉. 근처 오케스트라 강연실에서 훔쳐왔다.",color:"white",italic:false}],[{text:"너무 얇다. (내구도 3)",color:"white",italic:false}]]] 1
#4
execute if score @s alreadyFactor matches 4 run scoreboard players set @s 6_did_hit 0
execute if score @s alreadyFactor matches 4 run give @s tipped_arrow[custom_data={specialNo:6},custom_name={text:"흡혈침",color:"#920909",italic: false},lore=[[{text:"이 아이템으로 ",color:"white",italic:false},{text:"공격",color:"red"},{text:"했을 경우,"}],[{text:"상대에게 ",color:"white",italic:false},{text:"6의 피해",color:"red",bold:true},{text:"를 주고,"}],[{text:"자신은 ",color:"white",italic:false},{text:"4의 체력",color:"green",bold: true},{text:"을 회복합니다."}],[""],[{text:"사용 시 소모됩니다.",color:"red",italic: false}]],tooltip_display={hidden_components:["minecraft:potion_contents"]},potion_contents={custom_color:6358791}] 2
#5
execute if score @s alreadyFactor matches 5 run give @s carrot_on_a_stick[item_model="prismarine_crystals",custom_data={specialNo:7},custom_name={text:"투명화 알약",color:"#d4d4d4",italic: false},lore=[[{bold:true,color:"yellow",italic:false,keybind:"key.use"},{bold:false,color:"white",text:"을(를) 사용하여 "},{bold:false,color:"white",text:"투명화 알약을 먹을 수 있습니다."}],[{text:"사용 시 ",color:"white",italic:false},{text:"연기와 함께 1초간 완전한 투명화",color:"gray",bold:true},{text:"를 얻습니다."}],[""],{text:"사용 시 소모됩니다.",color:"red",italic: false}]] 2
#7
execute if score @s alreadyFactor matches 7 run give @s carrot_on_a_stick[item_model="disc_fragment_5",custom_data={specialNo:10},custom_name={text:"거북 도사의 알약",color:"#d4d4d4",italic: false},lore=[[{bold:true,color:"yellow",italic:false,keybind:"key.use"},{bold:false,color:"white",text:"을(를) 사용하여 "},{bold:false,color:"white",text:"거북 도사의 알약을 먹을 수 있습니다."}],[{text:"사용 시 ",color:"white",italic:false},{text:"40초간 속도 감소 IV, 저항 III",color:"gray",bold:true},{text:"를 얻습니다."}],[""],{text:"사용 시 소모됩니다.",color:"red",italic: false}]] 1
#11
execute if score @s alreadyFactor matches 11 run clear @s glass_bottle
execute if score @s alreadyFactor matches 11 run give @s potion[potion_contents={custom_color:16562721,custom_effects:[{id:"minecraft:strength",amplifier:0,duration:100}]},custom_name={italic:false,text:"힘의 물약"}] 1
execute if score @s alreadyFactor matches 11 run give @s splash_potion[potion_contents={potion:"minecraft:harming"}] 1
execute if score @s alreadyFactor matches 11 run give @s splash_potion[potion_contents={custom_color:2829099,custom_effects:[{id:"minecraft:weakness",amplifier:0,duration:200}]},custom_name={italic:false,text:"투척용 나약함의 물약"}] 1
#13
execute if score @s alreadyFactor matches 13 run give @s wooden_axe[max_damage=5,custom_name={italic:false,text:"테무에서 재구입한 나무 도끼"}] 1
#18
execute if score @s alreadyFactor matches 18 run give @s wooden_sword[custom_name={text:"귀족의 목검",italic:false}] 1
#19
execute if score @s alreadyFactor matches 19 run give @s arrow 6