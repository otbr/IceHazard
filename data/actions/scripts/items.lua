function onUse(cid, item, frompos, item2, topos)
if item.uid == 2550 then
queststatus = getPlayerStorageValue(cid,2550)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Voc� encontrou 1 scytle!.")
doPlayerAddItem(cid,2550,1 )
doPlayerAddItem(cid,2160,1 )
setPlayerStorageValue(cid,2550,1)
else
doPlayerSendTextMessage(cid,22,"Voc� ja fez essa quest!")
end
else
return 0
end
return 1
end 