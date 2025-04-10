# 직업 설명
tellraw @s ""
tellraw @s {text:"-------JOBS-------",color:"#0a7a00"}
tellraw @s [{text:"당신의 직업: ",color:"green"},{text:"로그",color:"yellow","bold":true}]
tellraw @s [{text:"지급 아이템: ",color:"green"},{text:"철 단검 x1, 투명화 알약 x3, (즉시 장비)로그의 두건 x1",color:"#60b9f5"}]
tellraw @s {text:"은밀한 곳에서 활동하는 암살자입니다. 체력은 적지만 날렵하며, 가지고 있는 단검은 데미지가 적지만 빠릅니다. 일시적으로 투명화도 될 수 있습니다."}
tellraw @s [{text:"킬 특전: ",color:"red"},{text:"투명화 알약 x2",color: "#60b9f5"}]
tellraw @s {text:"------------------",color:"#0a7a00"}

give @s iron_sword[custom_name={italic:false,text:"철 단검"},lore=[{color:"white",italic:false,text:"공격력은 2이지만, 공격 속도는 굉장히 빠르기에"},{color:"white",italic:false,text:"상대를 빠르게 섬멸하는 데에 좋다."}],attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:1,operation:"add_value",slot:"mainhand"},{id:"attack_speed",type:"attack_speed",amount:5,operation:"add_value",slot:"mainhand"}]] 1
give @s carrot_on_a_stick[item_model="prismarine_crystals",custom_data={specialNo:7},custom_name={text:"투명화 알약",color:"#d4d4d4",italic: false},lore=[[{"bold":true,color:"yellow",italic:false,"keybind":"key.use"},{"bold":false,color:"white",text:"을(를) 사용하여 "},{"bold":false,color:"white",text:"투명화 알약을 먹을 수 있습니다."}],[{text:"사용 시 ",color:"white",italic:false},{text:"연기와 함께 1초간 완전한 투명화",color:"gray","bold":true},{text:"를 얻습니다."}],[""],{text:"사용 시 소모됩니다.",color:"red",italic: false}]] 3
item replace entity @s armor.head with polished_deepslate_slab[attribute_modifiers=[{id:"max_health",type:"max_health",amount:-10,operation:"add_value",slot:"head"},{id:"sneaking_speed",type:"sneaking_speed",amount:1,operation:"add_multiplied_total",slot:"head"},{id:"movement_speed",type:"movement_speed",amount:0.25,operation:"add_multiplied_total",slot:"head"}],custom_name={italic:false,text:"로그의 두건"},lore=[{color:"white",italic:false,text:"일반 속도와 웅크리기 속도가 빨라지지만 체력이 줄어든다."},{color:"white",italic:false,text:"로그의 상징이기에 뺄 수 없다."}],enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false,equippable={slot:"head",equip_sound:"item.armor.equip_leather",dispensable:true,swappable:true,damage_on_hurt:false}]