function onUse(cid, item, frompos, item2, topos)
if item.uid == 3033 then
queststatus = getPlayerStorageValue(cid,3033)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Voc� achou um Crown helmet")
item_uid = doPlayerAddItem(cid,2491,1)
setPlayerStorageValue(cid,3033,1)


else
doPlayerSendTextMessage(cid,22,"O ba� est� vazio.")
end
else
return 0
end
return 1
end