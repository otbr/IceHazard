function onUse(cid, item, frompos, item2, topos)
if item.uid == 2473 then
queststatus = getPlayerStorageValue(cid,2473)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Voc� encontrou 1 Magic Plate Armor!.")
doPlayerAddItem(cid,2472,1 )
setPlayerStorageValue(cid,2473,1)
else
doPlayerSendTextMessage(cid,22,"Voc� ja fez essa quest!")
end
else
return 0
end
return 1
end 