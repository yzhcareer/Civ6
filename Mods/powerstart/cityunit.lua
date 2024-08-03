-- Function to grant a Modern Armor unit when a new city is founded
function OnCityFounded(playerID, cityID)
    local player = Players[playerID]
    if player:IsHuman() then
        local city = CityManager.GetCity(playerID, cityID)

        -- Grant a Modern Armor unit at the new city
        UnitManager.InitUnit(playerID, "UNIT_MODERN_ARMOR", city:GetX(), city:GetY())

        for direction = 0, DirectionTypes.NUM_DIRECTION_TYPES - 1, 1 do
            local adjacentPlot = Map.GetAdjacentPlot(city:GetX(), city:GetY(), direction)
            
            -- Check if the adjacent plot is a water tile (ocean or sea)
            if adjacentPlot ~= nil and adjacentPlot:IsWater() then
                UnitManager.InitUnit(playerID, "UNIT_MISSILE_CRUISER", city:GetX(), city:GetY())
            end
        end

    end
end

-- Event listener for city founded
--Events.CityAddedToMap.Add(OnCityFounded)
Events.CityInitialized.Add(OnCityFounded)