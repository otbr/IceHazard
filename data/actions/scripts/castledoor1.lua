function onUse(cid, item, frompos, item2, topos)
 
        local config =
        {
                STORAGE_GUILD = 123123, -- A 3� storage configurada em Castle.lua
                MSG_WELCOME = "Seja bem vindo(a) ao vosso castelo!",
                MSG_FAIL = "Este castelo nao pertence a sua guild"
        }
 
        if getPlayerGuildId(cid) == getGlobalStorageValue(config.STORAGE_GUILD) then
                doTeleportThing(cid,getThingPos(item.uid))
                doTransformItem(item.uid, 1230)
                doPlayerSendTextMessage(cid, 22, config.MSG_WELCOME)  
        else
                doPlayerSendTextMessage(cid, 22, config.MSG_FAIL)
    end
 
        return true
end