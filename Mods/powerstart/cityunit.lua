function OnCityFounded(playerID, cityID)
    local player = Players[playerID]

    local function CreateUnits(unitType, plot)
        local pUnit = UnitManager.InitUnit(playerID, unitType, plot:GetX(), plot:GetY())
        UnitManager.RestoreMovementToFormation(pUnit)
        --pUnit = PromotUnit(pUnit, unitType)
        return pUnit
    end

    local function findWaterPlot(plot)
        for direction = 0, DirectionTypes.NUM_DIRECTION_TYPES - 1, 1 do
            local adjacentPlot = Map.GetAdjacentPlot(plot:GetX(), plot:GetY(), direction)
            if adjacentPlot ~= nil and adjacentPlot:IsWater() and adjacentPlot:GetUnitCount() == 0 then
                return adjacentPlot
            end
        end
        return nil
    end

    local function findWaterPlotRadius(plot, radius)
        local resultPlots = {}
        local currentPlots = {}
        currentPlots[plot] = 1
        for r = 1, radius, 1 do
            local nextPlots = {}
            for p, i in pairs(currentPlots) do
                for direction = 0, DirectionTypes.NUM_DIRECTION_TYPES - 1, 1 do
                    local adjacentPlot = Map.GetAdjacentPlot(p:GetX(), p:GetY(), direction)
                    if adjacentPlot ~= nil then
                        if adjacentPlot:IsWater() and adjacentPlot:GetUnitCount() == 0  then
                            resultPlots[adjacentPlot] = 1
                        else
                            nextPlots[adjacentPlot] = 1
                        end
                    end
                end
            end
            currentPlots = nextPlots
        end
        return resultPlots
    end


    local function PromotUnit(pUnit)
        local unitType = pUnit:GetType()
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
        local units = {"UNIT_MODERN_ARMOR", "UNIT_JET_FIGHTER", "UNIT_MOBILE_SAM", "UNIT_SPY", "UNIT_HELICOPTER"}
        for i, unit in ipairs(units) do
            CreateUnits(unit, city)
        end

        adjacentWaterPlots = findWaterPlotRadius(city, 3)
        local count = 0
        for plot, num in pairs(adjacentWaterPlots) do 
            count = count + 1
            if count == 1 then
                local carrier = CreateUnits("UNIT_AIRCRAFT_CARRIER", plot)
                local planes = {"UNIT_JET_FIGHTER", "UNIT_JET_FIGHTER", "UNIT_JET_BOMBER", "UNIT_JET_BOMBER", "UNIT_JET_BOMBER"}
                for i, plane in ipairs(planes) do
                    local p = CreateUnits(plane, city)
                end
                local nextWaterPlot = findWaterPlot(plot)
                if nextWaterPlot ~= nil then
                    CreateUnits("UNIT_NUCLEAR_SUBMARINE", nextWaterPlot)
                    break
                end
            end
            if count == 2 then
                CreateUnits("UNIT_NUCLEAR_SUBMARINE", plot)
            end
        end       
    end
end

-- Event listener for city founded
Events.CityInitialized.Add(OnCityFounded)