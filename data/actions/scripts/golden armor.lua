function onUse(cid, item, frompos, item2, topos)
if item.uid == 2470 then
queststatus = getPlayerStorageValue(cid,2470)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Voc� encontrou 1 golden armor!.")
doPlayerAddItem(cid,2466,1 )
setPlayerStorageValue(cid,2470,1)
else
doPlayerSendTextMessage(cid,22,"Voc� ja fez essa quest!")
end
else
return 0
end
return 1
end 