local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_SOUND_RED)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_FIRE)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_ENERGY)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_DRUNK)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_POISON)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_DROWN)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_FREEZING)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_DAZZLED)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_CURSED)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
