function onUse(cid, item, frompos, item2, topos)
if item.uid == 3333 then
queststatus = getPlayerStorageValue(cid,3333)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Voc� achou uma Blue legs")
item_uid = doPlayerAddItem(cid,7730,1)
setPlayerStorageValue(cid,3333,1)


else
doPlayerSendTextMessage(cid,22,"O ba� est� vazio.")
end
else
return 0
end
return 1
end