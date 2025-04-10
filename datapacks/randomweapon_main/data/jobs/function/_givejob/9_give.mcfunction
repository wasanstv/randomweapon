# 직업 설명
tellraw @s ""
tellraw @s {"text":"-------JOBS-------","color":"#0a7a00"}
tellraw @s [{"text":"당신의 직업: ","color":"green"},{"text":"일렉트로","color":"yellow","bold":true}]
tellraw @s [{"text":"지급 아이템: ","color":"green"},{"text":"피뢰침 x2","color":"#60b9f5"}]
tellraw @s {"text":"번개를 부르는 피뢰침을 가지고 있는 능력자입니다.\n번개를 맞으면 일시적으로 속도와 힘이 강해지지만, 번개가 아픈 건 똑같습니다."}
tellraw @s [{"text":"킬 특전: ","color":"red"},{"text":"피뢰침 x1","color": "#60b9f5"}]
tellraw @s {"text":"------------------","color":"#0a7a00"}

give @s carrot_on_a_stick[item_model="end_rod",custom_data={specialNo:12},custom_name={text:"피뢰침",color:"#31adff",italic:false},lore=[[{bold:true,color:"yellow",italic:false,keybind:"key.use"},{bold:false,color:"white",text:"을(를) 사용하여 "},{bold:false,color:"white",text:"번개를 떨굴 수 있습니다."}],[{text:"이 아이템으로 번개를 떨굼과 동시에",color:"white",italic:false},{text:" 자신은 5초간 힘 II, 신속 III",color:"#00f7ff",bold:true},{text:"를 얻습니다."}],[],{text:"사용 시 소모됩니다.",color:"red",italic:false}]] 2

return 0