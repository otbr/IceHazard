local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)

local condition = createConditionObject(CONDITION_LIGHT)
setConditionParam(condition, CONDITION_PARAM_LIGHT_LEVEL, 90)
setConditionParam(condition, CONDITION_PARAM_LIGHT_COLOR, 214)
setConditionParam(condition, CONDITION_PARAM_TICKS, 330 * 600 * 1000)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
