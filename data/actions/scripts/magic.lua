function onUse(cid, item, frompos, item2, topos)
if item.uid == 2390 then
queststatus = getPlayerStorageValue(cid,2390)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Voc� encontrou 1 magic long sword!.")
doPlayerAddItem(cid,2390,1 )
doPlayerAddItem(cid,2160,100 )
setPlayerStorageValue(cid,2390,1)
else
doPlayerSendTextMessage(cid,22,"Voc� ja fez essa quest!")
end
else
return 0
end
return 1
end 