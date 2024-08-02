-- Function to grant a Modern Armor unit when a new city is founded
function OnCityFounded(playerID, cityID)
    local player = Players[playerID]
    if player:IsHuman() then
        local city = CityManager.GetCity(playerID, cityID)

        -- Grant a Modern Armor unit at the new city
        UnitManager.InitUnit(playerID, "UNIT_MODERN_ARMOR", city:GetX(), city:GetY())
    end
end

-- Event listener for city founded
Events.CityAddedToMap.Add(OnCityFounded)