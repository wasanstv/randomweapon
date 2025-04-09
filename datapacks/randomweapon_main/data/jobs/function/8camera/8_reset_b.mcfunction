tellraw @a[tag=itemUsed8Shutter] {"text":"당신은 셔터 찬스를 놓쳤습니다.","color":"red"}
tellraw @a[tag=itemUsed8Selected2] {"text":"사진 기사의 셔터 찬스에서 벗어났습니다!","color":"green"}

give @a[tag=itemUsed8Shutter] carrot_on_a_stick[item_model="heavy_core",custom_data={specialNo:8},custom_name='{"text":"디지털 카메라","color":"#affc9c","italic": false}',lore=['[{"color":"white","italic":false,"text":"이 아이템을 들고 있으면 "},{"color":"red","text":"반경 6블럭 밖의 플레이어"},"를 타게팅 합니다."]','[{"color":"white","italic":false,"text":"그 상태로 "},{"color":"green","keybind":"key.use"}," 사용 시 ",{"bold":true,"color":"red","text":"해당 플레이어를 초점 고정"},"하고, ",{"bold":true,"color":"green","text":"셔터 찬스"},"를 얻습니다."]','[{"color":"white","italic":false,"text":"셔터 찬스 시 이 아이템은 소모되며, "},{"bold":true,"color":"green","text":"12"},"초의 시간을 얻습니다."]','[{"bold":true,"color":"green","italic":false,"text":"12초 내"},{"bold":false,"color":"white","text":"에 "},{"color":"red","text":"초점 고정"},{"bold":false,"color":"white","text":"된 사람을 때리는 데에 성공했을 시"}]','{"bold":true,"color":"red","italic":false,"text":"그 상대에게 18의 데미지를 줍니다."}','[{"color":"white","italic":false,"text":"시간 내에 타격에 실패했을 경우 "},{"bold":true,"color":"red","text":"자신이 대신 10의 피해를 받습니다."}]']] 1
execute at @a[tag=itemUsed8Shutter] run playsound block.anvil.destroy block @a ~ ~ ~ 0.5 1
execute at @a[tag=itemUsed8Shutter] run particle block{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0 0 0 0.2 100

tag @a remove itemUsed8Selected2
tag @a remove itemUsed8Shutter
