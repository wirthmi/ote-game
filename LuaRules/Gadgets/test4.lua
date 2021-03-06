function gadget:GetInfo()
	return {
		name = "test4",
		desc = "Test of Cam hero",
		author = "Pepe",
		date = "2013-12-18",
		license = "ote",
		layer = 0,
		enabled = true
	}
end

local heroID

function gadget:GameFrame(frame)
	if(frame == 200) then
		heroID = Spring.CreateUnit("cam", 2000, 0, 2900, 0, 0,_,_,42)
		heroID = Spring.CreateUnit("bulk", 2200, 0, 3100, 0, 0)
	end
end



------------ just to prevent executing in non-sandbox scenarios --------------------------
local missionName	= string.lower(Spring.GetModOptions().mission_name or "none") or "none" 

function gadget:Initialize()
	if (missionName ~= "none") then
		gadgetHandler:RemoveGadget("test4")
	end
end
