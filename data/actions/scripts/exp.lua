function onUse(cid, item, frompos, item2, topos)

local time = 3600 -- Tempo que durar� em segundos
local texto = 'Voce ganhou 1 hora de Double Xp.' -- Texto que ir� receber ao usar a potion.
textofinal = 'Double Exp finalizada.' -- Texto que ir� receber quando o efeito da potion acabar.
local exp = 2 -- O quanto que voc� quer que dobre sua experiencia, por exemplo 2 � 2x as rates do seu server.
expfinal = 1 --N�o mude, isso � para a experiencia voltar ao normal.
local stor = 12132

if item.itemid == 7443 then
doRemoveItem(item.uid, 1)
doPlayerSetExperienceRate(cid, exp)
doSendMagicEffect(frompos, 13)
doPlayerSendTextMessage(cid, 22, texto)
addEvent(potion, time * 1000, cid)
setPlayerStorageValue(cid, stor, os.time() + time)
end
return true
end



function potion(pos, cid)
doPlayerSetExperienceRate(pos, expfinal)
doPlayerSendTextMessage(pos,22, textofinal)
end