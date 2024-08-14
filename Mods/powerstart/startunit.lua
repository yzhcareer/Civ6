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
                    pUnit = UnitManager.InitUnit(playerID, unitType, startingPlot:GetX(), startingPlot:GetY())
                    UnitManager.RestoreMovementToFormation(pUnit)
                    --pUnit:JumpToNearestValidPlot()
                end
            end
            
            -- Add helicopters
            CreateUnits("UNIT_HELICOPTER", 6)

            -- Add settlers
            CreateUnits("UNIT_SETTLER", 6)
        end
    end
end

Events.PlayerTurnActivated.Add(GrantStartingUnitsAndResources)