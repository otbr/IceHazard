-- Script por MatheusMkalo(Xtibia) e apocarai(Xtibia) --

function onSay(cid, words, param,)

items = {5918,5462,6096,6095,2527} ------ Ids dos items
erro = 50 ------ Chance de erro
price = 500000 ---------- Pre�o
chance = math.random(1, table.maxn(items))


if getPlayerMoney(cid) >= price then
if doPlayerRemoveMoney(cid, price) then
if math.random(100) >= erro then
doPlayerSendTextMessage(cid, 25, "Parab�ns. Voc� acaba de apostar "..price.." e ganhou "..getItemNameById(doPlayerAddItem(cid, items[chance], 1)) .. ".")
addGanhos(cid)
doPlayerSendCancel(cid, "Voc� tem ao todo " .. getGanhos(cid) .. " acertos em suas apostas.")
else
doPlayerSendCancel(cid, "Voc� n�o obteve sucesso.")
end
else
doPlayerSendCancel(cid, "Voc� n�o tem dinheiro para apostar. O pre�o � "..tonumber(price).." gold coins.")
end
else
doPlayerSendCancel(cid, "Voc� n�o tem dinheiro para apostar. O pre�o � "..tonumber(price).." gold coins.")

end
