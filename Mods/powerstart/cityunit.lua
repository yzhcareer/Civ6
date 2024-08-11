-- Function to grant a Modern Armor unit when a new city is founded
function OnCityFounded(playerID, cityID)

    local player = Players[playerID]

    local function CreateUnits(unitType, plot)
        local pUnit = UnitManager.InitUnit(playerID, unitType, plot:GetX(), plot:GetY())
        UnitManager.RestoreMovementToFormation(pUnit)
        local unitPromotionClass = GameInfo.Units[unitType].PromotionClass
        for prom in GameInfo.UnitPromotions() do
            if prom.PromotionClass == unitPromotionClass then
                pUnit:GetExperience():SetPromotion(prom.Index)
            end
        end
        return pUnit
    end


    if player:IsHuman() then
        local city = CityManager.GetCity(playerID, cityID)
        local units = {"UNIT_MODERN_ARMOR", "UNIT_JET_FIGHTER", "UNIT_MOBILE_SAM", "UNIT_SPY"}
        for i, unit in ipairs(units) do
            CreateUnits(unit, city)
        end
        
        for direction = 0, DirectionTypes.NUM_DIRECTION_TYPES - 1, 1 do
            local adjacentPlot = Map.GetAdjacentPlot(city:GetX(), city:GetY(), direction)
            -- Check if the adjacent plot is a water tile (ocean or sea)
            if adjacentPlot ~= nil and adjacentPlot:IsWater() then
                CreateUnits("UNIT_NUCLEAR_SUBMARINE", adjacentPlot)
                local carrier = CreateUnits("UNIT_AIRCRAFT_CARRIER", adjacentPlot)
                local planes = {"UNIT_JET_FIGHTER", "UNIT_JET_FIGHTER", "UNIT_JET_BOMBER", "UNIT_JET_BOMBER", "UNIT_JET_BOMBER"}
                for i, plane in ipairs(planes) do
                    CreateUnits(plane, city)
                end
                break
            end
        end
    end
end

-- Event listener for city founded
Events.CityInitialized.Add(OnCityFounded)