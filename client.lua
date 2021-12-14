local camera = nil
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsControlJustPressed(0, 25) then
			camera = GetFollowVehicleCamViewMode()
			if IsPedInAnyVehicle(PlayerPedId(), false) then
				if GetFollowVehicleCamViewMode() ~= 4 then
					HideHudComponentThisFrame(14)
					SetFollowVehicleCamViewMode(4)
				end
				elseif GetFollowVehicleCamViewMode() == 4 then
					SetFollowVehicleCamViewMode(4)
				end
			end
		if IsControlJustReleased(0, 25) then
			SetFollowVehicleCamViewMode(camera)
		end
	end
end)
-- Made by github.com/adrianowskyy