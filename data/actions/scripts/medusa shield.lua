function onUse(cid, item, frompos, item2, topos)
if item.uid == 2536 then
queststatus = getPlayerStorageValue(cid,2536)
if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"Voc� encontrou 1 medusa shield!.")
doPlayerAddItem(cid,2536,1 )
setPlayerStorageValue(cid,2536,1)
else
doPlayerSendTextMessage(cid,22,"Voc� ja fez essa quest!")
end
else
return 0
end
return 1
end 