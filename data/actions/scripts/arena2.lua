function onUse(cid, item, frompos, item2, topos)
if item.uid == 7072 then
queststatus = getPlayerStorageValue(cid,7071)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Voce achou uma Royal axe")
item_uid = doPlayerAddItem(cid,7434,1)
setPlayerStorageValue(cid,7071,1)


else
doPlayerSendTextMessage(cid,22,"O ba� est� vazio.")
end
else
return 0
end
return 1
end