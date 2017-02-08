local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, true)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 5000)
setConditionFormula(condition, -100.9, 0, -100.9, 0)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
doPlayerPopupFYI(cid,"You Have paralyzed Your Enemy!")
	return doCombat(cid, combat, var)
end
