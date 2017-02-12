function onThink(interval, lastExecution)
MENSAGEM = {
"Upgrade System do 0 ao 10 para weapons melee, armaduras, shields e arcos. Upgrade Stone atraves do Zombie Event e Battlefield!",
"Use !comandos para ver todos os comandos disponiveis para voce!",
"!addon 'outfit' atraves do addon doll dropado de alguns monstros.",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],22)
return TRUE
end