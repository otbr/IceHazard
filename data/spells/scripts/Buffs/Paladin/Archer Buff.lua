local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_YELLOW_RINGS)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)

local condition1 = createConditionObject(CONDITION_HASTE)
setConditionParam(condition1, CONDITION_PARAM_BUFF, 1)
setConditionParam(condition1, CONDITION_PARAM_SUBID, 1)
setConditionParam(condition1, CONDITION_PARAM_TICKS, 5 * 60 * 1000)
setConditionFormula(condition1, 0.25, 0, 0.25, 0)
setCombatCondition(combat, condition1)

local condition2 = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition2, CONDITION_PARAM_BUFF, 1)
setConditionParam(condition2, CONDITION_PARAM_SUBID, 2)
setConditionParam(condition2, CONDITION_PARAM_TICKS, 5 * 60 * 1000)
setConditionParam(condition2, CONDITION_PARAM_SKILL_DISTANCE, 15)
setCombatCondition(combat, condition2)

local condition3 = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition3, CONDITION_PARAM_BUFF, 1)
setConditionParam(condition3, CONDITION_PARAM_SUBID, 3)
setConditionParam(condition3, CONDITION_PARAM_TICKS, 5 * 60 * 1000)
setConditionParam(condition3, CONDITION_PARAM_STAT_MAXHEALTHPERCENT, 110)
setConditionParam(condition3, CONDITION_PARAM_STAT_MAXMANAPERCENT, 110)
setCombatCondition(combat, condition3)

local condition4 = createConditionObject(CONDITION_REGENERATION)
setConditionParam(condition4, CONDITION_PARAM_BUFF, 1)
setConditionParam(condition4, CONDITION_PARAM_SUBID, 4)
setConditionParam(condition4, CONDITION_PARAM_TICKS, 5 * 60 * 1000)
setConditionParam(condition4, CONDITION_PARAM_MANAGAIN, 13)
setConditionParam(condition4, CONDITION_PARAM_MANATICKS, 2000)
setConditionParam(condition4, CONDITION_PARAM_HEALTHGAIN, 13)
setConditionParam(condition4, CONDITION_PARAM_HEALTHTICKS, 2000)
setCombatCondition(combat, condition4)

local condition5 = createConditionObject(CONDITION_LIGHT)
setConditionParam(condition5, CONDITION_PARAM_BUFF, 1)
setConditionParam(condition5, CONDITION_PARAM_SUBID, 5)
setConditionParam(condition5, CONDITION_PARAM_TICKS, 5 * 60 * 1000)
setConditionParam(condition5, CONDITION_PARAM_LIGHT_LEVEL, 6)
setConditionParam(condition5, CONDITION_PARAM_LIGHT_COLOR, 12344)
setCombatCondition(combat, condition5)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
