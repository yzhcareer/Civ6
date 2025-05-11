function OnCityFounded(playerID, cityID)
    local player = Players[playerID]
    local city = CityManager.GetCity(playerID, cityID)
    local units = {"UNIT_MODERN_ARMOR", "UNIT_JET_BOMBER", "UNIT_SETTLER", "UNIT_BUILDER"}
    local navyunits = {"UNIT_NUCLEAR_SUBMARINE"}
    local capitalunits = {"UNIT_SETTLER", "UNIT_HELICOPTER", "UNIT_HELICOPTER"}
    local majorunits = {"UNIT_MEDIC", "UNIT_PIKEMAN"}
    local minorunits = {"UNIT_MEDIC", "UNIT_MEDIC",
                        "UNIT_PIKEMAN", "UNIT_PIKEMAN", "UNIT_PIKEMAN",
                        "UNIT_TREBUCHET", "UNIT_BIPLANE",
                        "UNIT_BATTERING_RAM", "UNIT_SIEGE_TOWER", "UNIT_OBSERVATION_BALLOON",
                        "UNIT_SETTLER", "UNIT_BUILDER"}
    local minornavy = {"UNIT_GALLEY", "UNIT_GALLEY"}

    local function getHumanID()
        for i, player in ipairs(Players) do
            if player:IsHuman() then
                return player:GetID()
            end
        end
        return nil
    end

    local humanID = getHumanID()

    local function CreateUnits(playerID, unitType, plot)
        local pUnit = UnitManager.InitUnit(playerID, unitType, plot:GetX(), plot:GetY())
        UnitManager.RestoreMovementToFormation(pUnit)
        --pUnit = PromotUnit(pUnit, unitType)
        return pUnit
    end

    local function AddBuildings(building)
        if not city:GetBuildings():HasBuilding(building) then
            city:GetBuildingQueue():CreateIncompleteBuilding(building, cityplot, 100)
        end
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

    local function CreateNavy(playerID, unitTypes, plot)
        adjacentWaterPlots = findWaterPlotRadius(plot, 3)
        local count = 0
        for plot, num in pairs(adjacentWaterPlots) do 
            count = count + 1
            CreateUnits(playerID, unitTypes[count], plot)
        end 
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


    local function RestUnits(plot)
        local plots = {plot}
        for direction = 0, DirectionTypes.NUM_DIRECTION_TYPES - 1, 1 do
            table.insert(plots, Map.GetAdjacentPlot(plot:GetX(), plot:GetY(), direction))
        end
        for i, p in pairs(plots) do
            local units = Units.GetUnitsInPlot(p)
            for i, unit in ipairs(units) do
                UnitManager.RestoreMovementToFormation(unit)
            end
        end
    end
    
    if player:IsHuman() then
        RestUnits(city:GetPlot())

        for i, unit in ipairs(units) do
            CreateUnits(playerID, unit, city)
        end

        if city:GetID() == player:GetCities():GetCapitalCity():GetID() then
            for i, unit in ipairs(capitalunits) do
                CreateUnits(playerID, unit, city)
            end 
        end

        CreateNavy(playerID, navyunits, city)

    elseif player:IsMajor() then
        for i, unit in ipairs(majorunits) do
            CreateUnits(playerID, unit, city)
        end
        CreateUnits(humanID, "UNIT_SPY", city)

    else
        for i, unit in ipairs(minorunits) do
            CreateUnits(playerID, unit, city)
        end
        CreateUnits(humanID, "UNIT_SPY", city)
        CreateNavy(playerID, minornavy, city)
    end
end

-- Event listener for city founded
Events.CityInitialized.Add(OnCityFounded)