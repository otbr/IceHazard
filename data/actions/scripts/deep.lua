function onUse(cid, item, frompos, item2, topos)
if item.uid == 5461 then
queststatus = getPlayerStorageValue(cid,5461)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Voc� achou um Helmet of the deep")
item_uid = doPlayerAddItem(cid,5461,1)
setPlayerStorageValue(cid,5461,1)


else
doPlayerSendTextMessage(cid,22,"O ba� est� vazio.")
end
else
return 0
end
return 1
end