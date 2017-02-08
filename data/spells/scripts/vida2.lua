--Calculed by ta4e--
--For tibia 8.22--
--Made in 12/09/08--
local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, FALSE)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)


function getCombatFormulas(cid, lv, maglv)
	local formula_min = ((lv*0.60 + maglv*15) * 3.2)
	local formula_max = ((lv*0.80 + maglv*15) * 3.3)

	if(formula_max < formula_min) then
		local tmp = formula_max
		formula_max = formula_min
		formula_min = tmp
	end
	return formula_min, formula_max
end

setCombatCallback(combat, CALLBACK_PARAM_LEVELMAGICVALUE, "getCombatFormulas")

function onCastSpell(cid, var)
if getPlayerItemCount(cid, 2294) > 0 then
doPlayerSendTextMessage(cid,MESSAGE_STATUS_CONSOLE_RED,'spell need a magic item. ')
doCreatureSay(cid, "VIP", TALKTYPE_ORANGE_1)
return doCombat(cid, combat, var)
end 
return TRUE
end

