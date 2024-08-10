function OnUnitPromoted(playerID, unitID)
    local player = Players[playerID]
    if player:IsHuman() then
        local pUnit = player:GetUnits():FindID(unitID)
        pUnit:GetExperience():ChangeExperience(500)
        UnitManager.RestoreMovementToFormation(pUnit)
    end
end

-- Add the event listener for unit promotions
Events.UnitPromoted.Add(OnUnitPromoted)
