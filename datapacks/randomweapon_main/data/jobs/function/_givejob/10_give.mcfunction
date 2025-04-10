# 직업 설명
tellraw @s ""
tellraw @s {text:"-------JOBS-------",color:"#0a7a00"}
tellraw @s [{text:"당신의 직업: ",color:"green"},{text:"죽음의 방관자",color:"yellow",bold:true}]
tellraw @s [{text:"지급 아이템: ",color:"green"},{text:"(데스매치 개시 시)종말의 뿔피리 x1",color:"#60b9f5"}]
tellraw @s {text:"개입하지 않는다. 동요하지 않는다. 종말의 순간에, 비로소 모습을 보인다."}
tellraw @s [{text:"킬 특전: ",color:"red"},{text:"없음",color: "dark_red"}]
tellraw @s [{text:"",color:"white",bold:false},{text:"[ 특수 ] ",color:"dark_red"},{text: "이 직업은 데스매치 이전, 몸에서 연기가 나며 플레이어로 인한 피격 시 5의 피해를 받습니다."}]
tellraw @s {text:"------------------",color:"#0a7a00"}

# 참고: 이 직업은 alreadyFactor 가 10 인 플레이어.

#give @s carrot_on_a_stick[item_model="goat_horn",custom_data={specialNo:13},custom_name='{text:"종말의 뿔피리",color:"#740000","italic": false}',lore=['[{bold:true,color:"yellow","italic":false,"keybind":"key.use"},{bold:false,color:"dark_red",text:"키로 자신을 제외한 모두에게 종말을 일으킵니다."}]','[""]','{text:"사용 시 소모됩니다.",color:"red","italic": false}']] 2
