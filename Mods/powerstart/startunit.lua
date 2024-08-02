function GrantStartingUnitsAndResources(playerID)

    local player = Players[playerID]
    if Game.GetCurrentGameTurn() == GameConfiguration.GetStartTurn() then
        if player:IsHuman() then
            -- Add gold
            player:GetTreasury():ChangeGoldBalance(1000000)
            
            -- Get the player's starting plot
            local startingPlot = player:GetStartingPlot()
            
            -- Function to create units
            local function CreateUnits(unitType, count)
                for i = 1, count do
                    UnitManager.InitUnit(playerID, unitType, startingPlot:GetX(), startingPlot:GetY())
                end
            end
            
            -- Add settlers
            CreateUnits("UNIT_SETTLER", 6)
            
            -- Add modern armors
            CreateUnits("UNIT_MODERN_ARMOR", 6)
            
            -- Add helicopters
            CreateUnits("UNIT_HELICOPTER", 8)
        end
    end
end

Events.PlayerTurnActivated.Add(GrantStartingUnitsAndResources)