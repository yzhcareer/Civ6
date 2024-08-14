function OnUnitPromoted(playerID, unitID)
    local player = Players[playerID]
    if player:IsHuman() then
        local pUnit = player:GetUnits():FindID(unitID)
        pUnit:GetExperience():ChangeExperience(500)
        UnitManager.RestoreMovementToFormation(pUnit)
    end
end

function Promote(playerID, unitID)
    local player = Players[playerID]
    if player:IsHuman() then
        local pUnit = player:GetUnits():FindID(unitID)
        local unitType = pUnit:GetType()
        local unitPromotionClass = GameInfo.Units[unitType].PromotionClass
        for prom in GameInfo.UnitPromotions() do
            if prom.PromotionClass == unitPromotionClass and not pUnit:GetExperience():HasPromotion(prom.Index) then
                pUnit:GetExperience():SetPromotion(prom.Index)
            end
        end
        UnitManager.RestoreMovementToFormation(pUnit)
    end
end

Events.UnitAddedToMap.Add(Promote)
--Events.UnitPromoted.Add(OnUnitPromoted)
