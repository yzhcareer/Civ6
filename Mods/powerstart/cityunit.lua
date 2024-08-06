-- Function to grant a Modern Armor unit when a new city is founded
function OnCityFounded(playerID, cityID)

    local player = Players[playerID]

    local function CreateUnits(unitType, plot)
        pUnit = UnitManager.InitUnit(playerID, unitType, plot:GetX(), plot:GetY())
        UnitManager.RestoreMovementToFormation(pUnit)
        return pUnit
    end

    if player:IsHuman() then
        local city = CityManager.GetCity(playerID, cityID)
        CreateUnits("UNIT_MODERN_ARMOR", city)
        CreateUnits("UNIT_JET_FIGHTER", city)
        CreateUnits("UNIT_JET_BOMBER", city)
        --CreateUnits("UNIT_ROCKET_ARTILLERY", city)
        CreateUnits("UNIT_SPY", city)
        
        for direction = 0, DirectionTypes.NUM_DIRECTION_TYPES - 1, 1 do
            local adjacentPlot = Map.GetAdjacentPlot(city:GetX(), city:GetY(), direction)
            
            -- Check if the adjacent plot is a water tile (ocean or sea)
            if adjacentPlot ~= nil and adjacentPlot:IsWater() then
                CreateUnits("UNIT_NUCLEAR_SUBMARINE", adjacentPlot)
                local carrier = CreateUnits("UNIT_AIRCRAFT_CARRIER", adjacentPlot)
                local jet = CreateUnits("UNIT_JET_FIGHTER", city)
                local bomber = CreateUnits("UNIT_JET_BOMBER", city)
                break
            end
        end

    end
end

-- Event listener for city founded
Events.CityInitialized.Add(OnCityFounded)