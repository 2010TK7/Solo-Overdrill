core:module("CoreMissionScriptElement")
core:import("CoreXml")
core:import("CoreCode")
core:import("CoreClass")

local OldFunc = MissionScriptElement.on_executed
function MissionScriptElement:on_executed(instigator)
	if Global.level_data.level_id == "bank" and self._id == 100670 then
		managers.mission._scripts["baldwin"]._elements[104136]:on_executed()
	elseif Global.level_data.level_id == "diamond_heist" and self._id == 101467 then
		self._chance, self._values.chance = nil
	elseif Global.level_data.level_id == "suburbia" and self._id == 102102 then
		self:get_mission_element(102101):on_executed()
		return
	end
	OldFunc(self, instigator)
end