# 직업 설명
tellraw @s ""
tellraw @s {"text":"-------JOBS-------","color":"#0a7a00"}
tellraw @s [{"text":"당신의 직업: ","color":"green"},{"text":"사진 기사","color":"yellow","bold":true}]
tellraw @s [{"text":"지급 아이템: ","color":"green"},{"text":"디지털 카메라 x1","color":"#60b9f5"}]
tellraw @s {"text":"장소가 어디든 한 번씩 발걸음을 디뎌본 베테랑 사진 기사입니다.\n이젠 인물 사진을 정복해보겠다는 그 마음가짐은, 초심과 여간 다르지 않습니다.\n한 사람을 찍으면 초점 고정을 시켜, 12초간 셔터 찬스를 얻습니다.\n(자세한 설명은 아이템 설명 참조)"}
tellraw @s [{"text":"킬 특전: ","color":"red"},{"text":"없음","color": "dark_red"}]
tellraw @s {"text":"------------------","color":"#0a7a00"}

give @s carrot_on_a_stick[item_model="heavy_core",custom_data={specialNo:8},custom_name={text:"디지털 카메라",color:"#affc9c",italic: false},lore=[[{color:"white",italic:false,text:"이 아이템을 들고 있으면 "},{color:"red",text:"반경 6블럭 밖의 플레이어"},"를 타게팅 합니다."],[{color:"white",italic:false,text:"그 상태로 "},{color:"green",keybind:"key.use"}," 사용 시 ",{bold:true,color:"red",text:"해당 플레이어를 초점 고정"},"하고, ",{bold:true,color:"green",text:"셔터 찬스"},"를 얻습니다."],[{color:"white",italic:false,text:"셔터 찬스 시 이 아이템은 소모되며, "},{bold:true,color:"green",text:"12"},"초의 시간을 얻습니다."],[{bold:true,color:"green",italic:false,text:"12초 내"},{bold:false,color:"white",text:"에 "},{color:"red",text:"초점 고정"},{bold:false,color:"white",text:"된 사람을 때리는 데에 성공했을 시"}],{bold:true,color:"red",italic:false,text:"그 상대에게 18의 데미지를 줍니다."},[{color:"white",italic:false,text:"시간 내에 타격에 실패했을 경우 "},{bold:true,color:"red",text:"자신이 대신 10의 피해를 받습니다."}]]] 1
