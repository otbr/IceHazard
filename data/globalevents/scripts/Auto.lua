
function onThink(interval, lastExecution)
-- Configura��es
local cor = 22 -- Defina a cor da mensagem (22 = branco)
local mensagens ={
[[Upgrade System do 0 ao 10 para weapons melee, armaduras, shields e arcos. Upgrade Stone atrav�s do Zombie Event e Battlefield!!!
]]
}

-- Fim de Configura��es

doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end