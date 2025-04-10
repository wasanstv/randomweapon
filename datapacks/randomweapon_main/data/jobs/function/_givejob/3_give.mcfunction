# 직업 설명
tellraw @s ""
tellraw @s {text:"-------JOBS-------",color:"#0a7a00"}
tellraw @s [{text:"당신의 직업: ",color:"green"},{text:"오카리니스트",color:"yellow",bold:true}]
tellraw @s [{text:"지급 아이템: ",color:"green"},{text:"5.1 서라운드 오카리나 x1, (3인 이상)귀마개 x1",color:"#60b9f5"}]
tellraw @s {text:"한 때 오카리나 하나만으로 세상을 들썩이던 오카리나 연주자입니다.\n당신의 단짝인 5.1 서라운드 오카리나는 사용 시 불 수 있으며 당신과 함께 주변 사람들이 춤을 춥니다.\n연주가 끝나면 함께 춤을 추던, 당신을 포함한 사람들 중 한 명은 너무 신난 나머지 목이 꺾여 죽습니다."}
tellraw @s [{text:"킬 특전: ",color:"red"},{text:"조금 날카로운 지휘봉 x1",color: "#60b9f5"}]
tellraw @s {text:"------------------",color:"#0a7a00"}


#give @s wooden_sword[max_damage=3,item_model="stick",custom_name='{italic:false,text:"조금 날카로운 지휘봉"}',lore=['[{text:"날카롭게 갈린 지휘봉. 근처 오케스트라 강연실에서 훔쳐왔다.",color:"white",italic:false}]','[{text:"너무 얇다. (내구도 3)",color:"white",italic:false}]']] 1
give @s carrot_on_a_stick[custom_name={color:"#2B1CFF",italic:false,text:"5.1 서라운드 오카리나"},item_model="rabbit_foot",lore=[[{bold:true,color:"yellow",italic:false,keybind:"key.use"},{bold:false,color:"white",text:"을(를) 사용하여 "},{bold:false,color:"white",text:"오카리나를 불 수 있습니다."}],[{color:"white",italic:false,text:"오카리나를 불기 시작하면 "},{bold:true,color:"aqua",text:"반경 10블럭 내의 플레이어들이 단체로 춤을 춥니다."}],[{color:"white",italic:false,text:"춤은"},{bold:true,color:"green",italic:false,text:" 총 5초"},"동안 지속되며, 춤이 끝나면",{bold:true,color:"red",text:" 춤을 추던 사람 중 한 명이 목이 꺾여 사망합니다."}],[{bold:true,color:"dark_red",italic:false,text:"물론 자신도 사망할 수 있습니다."},{text:" 기본적으로 춤 추는 사람들은 모두 데미지를 받지 않습니다.",color:"green",bold:false,italic:false}],[""],{color:"red",italic:false,text:"쿨타임: 15초"}],custom_data={specialNo:3},enchantment_glint_override=true] 1
execute if score count playerCount matches 3.. run give @s oak_button[custom_name={color:"#836f37",italic:false,text:"귀마개"},item_model="oak_button",lore=[[{italic:false,bold:false,color:"white",text:"장착하면 "},{bold:true,color:"yellow",text:"단 한번만 "},{bold:true,color:"#2B1CFF",text:"5.1 서라운드 오카리나"},{bold:true,color:"yellow",text:"로 인한"}],[{bold:true,color:"yellow",text:"죽음으로부터 보호",italic:false},{bold:false,color:"white",text:"받을 수 있습니다."}],[""],{color:"red",italic:false,text:"머리에 착용 가능하며, 1회 사용 후 소모됩니다."}],custom_data={specialNo:5},equippable={slot:"head",equip_sound:"item.armor.equip_leather",dispensable:false,swappable:true,damage_on_hurt:false}] 1

return 0