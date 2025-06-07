--俄罗斯
--彼得--
--外商+1粮
INSERT INTO TraitModifiers (TraitType, ModifierId) 
    VALUES ('TRAIT_LEADER_GRAND_EMBASSY', 'FOOD_INTERNATIONAL_CosRussia');
INSERT INTO Modifiers (ModifierId , ModifierType , SubjectRequirementSetId)
	VALUES ('FOOD_INTERNATIONAL_CosRussia', 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL', NULL);
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('FOOD_INTERNATIONAL_CosRussia', 'YieldType', 'YIELD_FOOD');
INSERT INTO ModifierArguments (ModifierId , Name , Value)
	VALUES ('FOOD_INTERNATIONAL_CosRussia', 'Amount', '1');
--每领先2个科文+1
UPDATE ModifierArguments SET Value='2' WHERE ModifierId='TRAIT_ADJUST_PROGRESS_DIFF_TRADE_BONUS'; 
--代表团给外交支持
INSERT INTO TraitModifiers (TraitType, ModifierId) 
    VALUES ('TRAIT_LEADER_GRAND_EMBASSY', 'DIPLOMATIC_QUARTER_DELEGATION_FAVOR');
--大使馆给外交支持
INSERT INTO TraitModifiers (TraitType, ModifierId) 
    VALUES ('TRAIT_LEADER_GRAND_EMBASSY', 'DIPLOMATIC_QUARTER_EMBASSY_FAVOR');
--拉夫拉--
--贸易路线起点+0.5粮0.5鸽
UPDATE District_TradeRouteYields SET YieldChangeAsOrigin=0.5 WHERE DistrictType='DISTRICT_LAVRA' AND YieldType='YIELD_FOOD';
UPDATE District_TradeRouteYields SET YieldChangeAsOrigin=0.5 WHERE DistrictType='DISTRICT_LAVRA' AND YieldType='YIELD_FAITH';
--冻土一级关联
UPDATE StartBiasTerrains SET Tier=1 WHERE TerrainType='TERRAIN_TUNDRA' AND CivilizationType='CIVILIZATION_RUSSIA';
UPDATE StartBiasTerrains SET Tier=1 WHERE TerrainType='TERRAIN_TUNDRA_HILLS' AND CivilizationType='CIVILIZATION_RUSSIA';