function onUse(cid, item, frompos, item2, topos)
if item.uid == 1412 then
queststatus = getPlayerStorageValue(cid,1412)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Voc� encontrou as partes de um hota e seus peda�os!.")
doPlayerAddItem(cid,2343,1)
doPlayerAddItem(cid,2342,1)
setPlayerStorageValue(cid,1412,1)
else
doPlayerSendTextMessage(cid,22,"Voc� ja fez essa quest!")
end
else
return 0
end
return 1
end 