function onUse(cid, item, frompos, item2, topos)
if item.uid == 3030 then
queststatus = getPlayerStorageValue(cid,3030)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Voc� achou todos itens da behe quest")
item_uid = doPlayerAddItem(cid,2520,1)
item_uid = doPlayerAddItem(cid,2466,1)
item_uid = doPlayerAddItem(cid,2427,1)
item_uid = doPlayerAddItem(cid,2171,1)
item_uid = doPlayerAddItem(cid,2168,1)
item_uid = doPlayerAddItem(cid,2145,3)
item_uid = doPlayerAddItem(cid,1294,4)
setPlayerStorageValue(cid,3030,1)


else
doPlayerSendTextMessage(cid,22,"O ba� est� vazio.")
end
else
return 0
end
return 1
end