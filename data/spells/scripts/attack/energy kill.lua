local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_BLUE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGYBALL)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 1.0, 3, 1.1, 0)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
