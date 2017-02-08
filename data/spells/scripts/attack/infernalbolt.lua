--Created with OSM--
local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE,COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_INFERNALBOLT)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -59.0, -30, -63.9, -0)

arr = {
{0, 0, 0, 3, 0, 0, 0},
{0, 0, 3, 3, 3, 0, 0},
{0, 0, 3, 3, 3, 0, 0},
{0, 0, 3, 3, 3, 0, 0},
{0, 0, 3, 3, 3, 0, 0},
{0, 0, 0, 3, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0}
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)
    return doCombat(cid, combat, var)
end
