--基督像
function CristoRedentorIncreaseFaithAmount( playerID, cityID, buildingID, plotID, bOriginalConstruction)
    local m_Cristo_table = GameInfo.Buildings['BUILDING_CRISTO_REDENTOR']
    if  (m_Cristo_table ~= nil) then
        local m_Cristo = m_Cristo_table.Index
        if playerID >= 0 and buildingID == m_Cristo then 
            local player = Players[playerID]
            if not player:IsBarbarian() then
                local amount = player:GetReligion():GetFaithBalance()
                player:GetReligion():ChangeFaithBalance(amount * 0.5)
            end
        end
    end
end

GameEvents.BuildingConstructed.Add(CristoRedentorIncreaseFaithAmount)

--泰姬陵
function PlayerHasWonder (player, wonderId)
    if player == nil then return false; end
    for _, city in player:GetCities():Members() do
        if city:GetBuildings():HasBuilding(wonderId) then
            return true;
        end
    end
    return false;
end
local TAJ = GameInfo.Buildings['BUILDING_TAJ_MAHAL'];
function TajMahalPlayerEraScoreChanged(playerID, amountAwarded)
	local player = Players[playerID]
	local amount = 65
	if PlayerHasWonder (player, TAJ.Index) then
	    player:GetTreasury():ChangeGoldBalance(amountAwarded * amount)
	end
end

if TAJ ~= nil then
    Events.PlayerEraScoreChanged.Add(TajMahalPlayerEraScoreChanged)
end
