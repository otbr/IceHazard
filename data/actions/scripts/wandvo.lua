function onUse(cid, item, frompos, item2, topos)
if item.uid == 9193 then
queststatus = getPlayerStorageValue(cid,9193)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Voc� pegou uma wand of vortex")
item_uid = doPlayerAddItem(cid,2190,1)
setPlayerStorageValue(cid,9193,1)


else
doPlayerSendTextMessage(cid,22,"O ba� est� vazio.")
end
else
return 0
end
return 1
end