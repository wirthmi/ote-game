------------------------------------------------------------------------------
-- GROUPS of OTE
-- more about groups on WIKI: http://code.google.com/p/nota/wiki/NOE_groups
------------------------------------------------------------------------------

local moduleGroupDef = {
	-- empty now
}

------------------------------------------------------------------------------
----------------------- END OF MODULE DEFINITIONS ----------------------------

-- update groups table
if (groupDef == nil) then groupDef = {} end
for k,v in pairs(moduleGroupDef) do
	groupDef[k] = v 
end