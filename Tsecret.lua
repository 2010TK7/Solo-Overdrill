if not TK7_secret then
	RegisterScript("lib/lua/Tsecret/coremissionscriptelement.lua", 2, "core/lib/managers/mission/coremissionscriptelement")
	TK7_secret = true
end

if RequiredScript == "core/lib/managers/mission/coremissionscriptelement" then
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
		end
		OldFunc(self, instigator)
	end
end